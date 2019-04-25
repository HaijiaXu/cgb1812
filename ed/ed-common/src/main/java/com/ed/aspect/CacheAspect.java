package com.ed.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.druid.util.StringUtils;
import com.ed.annotation.CaCheAnnotation;
import com.ed.util.ObjectMapperUtil;

import redis.clients.jedis.JedisCluster;

//@Component  //当前切面类交给spring管理
@Aspect	
public class CacheAspect {
//	@Autowired
//	@Autowired(required=false)
//	private ShardedJedis shardedJedis;
	
//	@Autowired
//	private RedisService jedis;
	@Autowired
	private JedisCluster jedis;
		/**
	 * 1.@Around 功能最为强大的环绕公职
	 * 2.其余四大通知类型能否控制方法目标执行?
	 * 	@Before 前置  //目标方法执行之前就已经执行
	 * 	@AfterReturning //目标方法执行之后才执行
	 * 	@AfterThrowing //目标方法出现异常之后执行 
	 * 	@After	//程序马上执行结束了才执行
	 * 一般用来记录程序的执行过程日志
	 *  
	 * @param jp
	 * @return
	 * @throws Throwable
	 */
	
	//切入点表达式, 匹配所有的注解
	
//	public Object around(ProceedingJoinPoint jp) throws Throwable{
//		String key = createCacheKey(jp);
//		String str=shardedJedis.get(key);
//		Object obj;
//		if(str!=null) {
//			obj=ObjectMapperUtil.toObject(str, Object.class);
//			System.out.println("从缓存中取");
//			return obj;
//		}
//		obj=jp.proceed();
//		String json = ObjectMapperUtil.toString(obj);
//		shardedJedis.set(key, json);
//		System.out.println("从数据库中取");
//		return obj;
//	}
//	
//	private String createCacheKey(ProceedingJoinPoint jp) {
//		Class<?> targetClass = jp.getTarget().getClass();
//		
//		MethodSignature ms = (MethodSignature)jp.getSignature();
//		Method targetMethod = ms.getMethod();
//		System.out.println(targetMethod.getName());
//		Object[] args = jp.getArgs();
//		String key=targetClass.getName()+"."+targetMethod.getName();
//		for (int i = 0; i < args.length; i++) {
//			if(i==0) {
//				key=key+".";
//			}
//			key=key+args[i];
//		}
//		return key;
//	}
	@Around(value="@annotation(cacheAnno)")
	public Object around(ProceedingJoinPoint joinPoint,CaCheAnnotation cacheAnno) {
		//获取key值
		String key = getKey(joinPoint,cacheAnno);
		Object object = getObject(joinPoint,cacheAnno,key);
		return object;
	}

	private Object getObject(ProceedingJoinPoint joinPoint, CaCheAnnotation cacheAnno,String key) {
		Object object = null;
		//判断用户缓存 读/更新
		switch (cacheAnno.cacheType()) {
		case FIND:
			object = findCache(joinPoint,key);
			break;
		case UPDATE:
			object = updateCache(joinPoint,key);
			break;
		}
		return object;
	}

	//类名.方法名.参数名称.值
	private String getKey(ProceedingJoinPoint joinPoint,CaCheAnnotation cacheAnno) {
		String targetClassName = joinPoint.getSignature().getDeclaringTypeName();
		String methodName = joinPoint.getSignature().getName();
		//转化为方法对象
		MethodSignature methodSignature = (MethodSignature) joinPoint.getSignature();
		String[] paramNames = methodSignature.getParameterNames();
		String paramName = paramNames[cacheAnno.index()];
		Object arg = joinPoint.getArgs()[cacheAnno.index()];
		String key = targetClassName+"."+methodName+"."+paramName+"."+arg;
		return key;
	}
	
	private Object findCache(ProceedingJoinPoint joinPoint,String key) {
		Object object = null;
		String result = jedis.get(key);	//根据key查询缓存信息
		try {
			if(StringUtils.isEmpty(result)) { //表示缓存中没有数据,则执行业务层方法
				object = joinPoint.proceed();
				String json = ObjectMapperUtil.toString(object);	//将数据转化为json串
				jedis.set(key, json);	//将数据保存到redis中
				System.out.println("AOP查询业务层获取信息");
			}else {		//表示缓存中有数据,可以直接返回数据
				MethodSignature methodSignature = (MethodSignature) joinPoint.getSignature();
				//获取目标方法返回值类型
				Class<?> returnClass = methodSignature.getReturnType();
				object = ObjectMapperUtil.toObject(result, returnClass);
				System.out.println("AOP查询缓存");
			}
		} catch (Throwable e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		
		return object;
	}
	
	private Object updateCache(ProceedingJoinPoint joinPoint, String key) {
		Object object = null;
		try {
			jedis.del(key);	//如果是更新操作,则直接删除缓存
			joinPoint.proceed();
		} catch (Throwable e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		return object;
	}
}

