package com.ed.config;

import java.util.HashSet;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

import redis.clients.jedis.HostAndPort;
import redis.clients.jedis.JedisCluster;

@Configuration
@PropertySource("classpath:/properties/redis.properties")
public class RedisConfig {
	
//	@Value("${redis.shards}")
//	private String jedisShards;
//	@Value("${redis.node}")
//	private String node;
//	@Value("${redis.masterName}")
//	private String masterName;
	@Value("${redis.Nodes}")
	private String nodes;
	
	
	
//	@Bean
//	public Jedis jedis() {
//		return new Jedis(host,port1);
//	}
	
//	@Bean
//	public ShardedJedis shardedJedis() {
//		List<JedisShardInfo> shards=new ArrayList<JedisShardInfo>();
//		String[] nodes = jedisShards.split(",");
//		for (String node : nodes) {
//			String[] shardsHost = node.split(":");
//			new JedisShardInfo(shardsHost[0], shardsHost[1]);
//			shards.add(new JedisShardInfo(shardsHost[0], shardsHost[1]));
//		}
//		ShardedJedis jedis=new ShardedJedis(shards);
//		return jedis;
//	}
	@Bean
	public JedisCluster jedisCluster() {
		HashSet<HostAndPort> nodesSet = new HashSet<>();
		String[] node = nodes.split(" ");
		for (String h_pNode : node) {
			String[] agrs = h_pNode.split(":");
			System.out.println(agrs[0]+":"+agrs[1]);
			nodesSet.add(new HostAndPort(agrs[0], Integer.parseInt(agrs[1])));
		}
		return new JedisCluster(nodesSet);
	}
	
//	@Bean
//	public JedisSentinelPool jedisSentinelPool() {
//		HashSet<String> sentinels = new HashSet<>();
//		sentinels.add(node);
//		JedisSentinelPool pool = new JedisSentinelPool(masterName, sentinels);
//		return pool;
//	}
	
}
