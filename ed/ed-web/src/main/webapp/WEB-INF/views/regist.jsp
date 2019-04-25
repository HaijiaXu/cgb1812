<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset=UTF-8"utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>欢迎注册</title>
        <meta name="keywords" content="名师课堂,网校,课外辅导,网络教育,远程教育">
        <meta name="description" content="学而思网校中小学网络教育的首选,中小学课外辅导,网络课堂,名师课堂等同步远程教育服务;学而思一线名师讲解,课程全面,品质保证,我们的愿景:成为受尊敬的教育机构；热线:400-800-2211">
        <link href="https://res11.xesimg.com/public/favicon.ico" rel="shortcut icon"/>

        <!-- 验证码(必须) -->
        <link type="text/css" href="css/nc.css-t=1556097763.css" tppabs="https://g.alicdn.com/sd/ncpc/nc.css?t=1556097763" rel="stylesheet" />
        <script type="text/javascript" src="css/nc.js-t=1556097763" tppabs="https://g.alicdn.com/sd/ncpc/nc.js?t=1556097763"></script>

        <!-- 自定义 -->
        <!--[if lt IE 9]>
            <link href="ie_project.css" tppabs="https://res11.xesimg.com/reg/css/ie_project.css" type="text/css" rel="stylesheet"/>
        <![endif]-->
        <link type="text/css" href="css/xue.regsheet.css-1556097763.css" tppabs="https://res12.xesimg.com/reg/css/xue.regsheet.css?1556097763" rel="stylesheet" />
        <script src="js/xue.jquery.min.js" tppabs="https://res13.xesimg.com/reg/js/xue.jquery.min.js"></script>
        <script src="js/xes.md5.min.js" tppabs="https://lib01.xesimg.com/lib//webLog/xes.md5.min.js"></script>
        <script src="js/xes.weblog.event.min.js" tppabs="https://lib02.xesimg.com/lib//webLog/xes.weblog.event.min.js"></script>
    </head>
    <body>

        <div class="header">
    <a href="javascript:if(confirm('https://www.xueersi.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://www.xueersi.com/'" tppabs="https://www.xueersi.com/" class="logo">logo</a>
    <span>
        已有网校账号？<a href="javascript:if(confirm('https://login.xueersi.com/Page/index?redirect_url=https%3A%2F%2Fwww.xueersi.com%2Findex%3FisLogin%3Dtrue  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://login.xueersi.com/Page/index?redirect_url=https%3A%2F%2Fwww.xueersi.com%2Findex%3FisLogin%3Dtrue'" tppabs="https://login.xueersi.com/Page/index?redirect_url=https%3A%2F%2Fwww.xueersi.com%2Findex%3FisLogin%3Dtrue" data-xeslog-params="key=xeslog-regist-reg&action=click-login">立即登录</a>
    </span>
</div>
<div class="register_wrap">
    <div id="passport_register" class="passport_box">
        <h1>欢迎注册学而思网校</h1>
        <div class="log_right register">
            <div class="form-check" id="form-register">
                <div class="phone-k">
                    <input id="phone" maxlength="11" name="phone" type="text" autocomplete="off" />
                    <label for="phone" class="phone-tip">请输入手机号</label>
                    <span class="error phone-warning">手机号用于登录和找回密码</span>
                </div>
                <div class="drag-verify">
                    <div id="dom_id"></div>
                </div>
                <div>
                    <div class="phonecode-k">
                        <input id="phonecode" name="code" type="text" maxlength="6" disabled="disabled" />
                        <label for="phonecode" class="phonecode-tip">请输入短信验证码</label>
                        <button class="vcode" id="">获取短信验证码</button>
                    </div>
                    <span id="tips-phonecode" class="error tips"></span>
                </div>
                <div>
                    <p class="pass-eye">
                    <input id="password" name="password" type="password" maxlength="18" onkeyup="value = value.replace(/\s/g, '')" autocomplete="off" onpaste="return false" disabled="disabled" />
                    <label for="password" class="pass-tip">请设置6-18位登录密码</label>
                    </p>
                    <div class="pass-strength">
                        <span class="error pass-warning"></span>
                        <span class="pass-strong">
                            <i class="security">安全强度:</i>
                            <strong class=""></strong>
                        </span>
                    </div>
                </div>
				<div>
                        <!-- <label for="exampleInputPassword1" class="sr-only"></label> -->
                        <div class="form-group form-group-input">
                            <div class="col-sm-12">
                                <select id="grade" class="form-control  input-lg" disabled="disabled">
                                    <option value="">请选择年级</option>
                                    <option value="24">小班</option>
                                    <option value="25">中班</option>
                                    <option value="1">大班</option>
                                    <option value="2">一年级</option>
                                    <option value="3">二年级</option>
                                    <option value="4">三年级</option>
                                    <option value="5">四年级</option>
                                    <option value="6">五年级</option>
                                    <option value="7">六年级</option>
                                    <option value="8">初一</option>
                                    <option value="9">初二</option>
                                    <option value="10">初三</option>
                                    <option value="11">高一</option>
                                    <option value="12">高二</option>
                                    <option value="13">高三</option>
                                </select>
                                <span id="tips-grade" class="tips">学员在读年级</span>
                            </div>

                        </div>
                </div>
                <div>
                    <input type="hidden" id="sig" name="sig" />
                    <input type="hidden" id="token" name="token" />
                    <input type="hidden" id="scene" name="scene" />
                    <input type="hidden" id="mode" value="101" />
                    <input type="hidden" id="csessionid" name="csessionid" />
                    <button class="login-btn-submit" name="submit" type="submit" data-xeslog-params="key=xeslog-regist-reg&action=click-immediately-regist">立即注册</button>
                </div>
                <div class="reg_agreement">
                    <span class="read-agreement">点击注册表示已阅读并同意<a href="javascript:if(confirm('http://www.xueersi.com/article/detail/1868  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.xueersi.com/article/detail/1868'" tppabs="http://www.xueersi.com/article/detail/1868" class="use-agree"target="_blank">《用户协议》</a></span>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
function ncInit() {
    var nc = new noCaptcha();
    var nc_appkey = 'FFFF0000000001699173'; // 应用标识,不可更改
    var nc_scene = 'register'; //场景,不可更改
    var nc_token = [nc_appkey, (new Date()).getTime(), Math.random()].join(':');
    var nc_option = {
        renderTo: '#dom_id', //渲染到该DOM ID指定的Div位置
        appkey: nc_appkey,
        scene: nc_scene,
        token: nc_token,
        callback: function(data) { // 校验成功回调
            $('.vcode').attr('id', 'vcode').css({
                'border':'1px solid #f00',
                'color':'#f00',
                'background':'#fff'
            });
            $('#password,#phonecode,#grade').removeAttr('disabled').css('background', '#fff');
            $('.login-btn-submit').addClass('js-form-submit');
            document.getElementById('csessionid').value = data.csessionid;
            document.getElementById('sig').value = data.sig;
            document.getElementById('token').value = nc_token;
            document.getElementById('scene').value = nc_scene;
        }
    };
    nc.init(nc_option);
}
ncInit();
</script>

        <script type="text/javascript" src="xue.regsheet.js-1556097763" tppabs="https://res14.xesimg.com/reg/js/xue.regsheet.js?1556097763"></script>
        <div id="_umfp" style="display:inline;width:1px;height:1px;overflow:hidden"></div>
        <div id="footer" style="border:none;">
            <div class="foot_area">
    <p>
        北京学而思教育科技有限公司 地址：北京市海淀区中关村大街18号科贸中心7层
        <a href="index.htm" tppabs="https://reg.xueersi.com/" target="_blank">网校首页</a>
        |
        <a href="javascript:if(confirm('http://www.xueersi.com/article/detail/1903  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.xueersi.com/article/detail/1903'" tppabs="http://www.xueersi.com/article/detail/1903" target="_blank">关于我们</a>
        |
        <a href="javascript:if(confirm('http://www.xueersi.com/article/detail/1220  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.xueersi.com/article/detail/1220'" tppabs="http://www.xueersi.com/article/detail/1220" target="_blank">合作专区</a>
        |
        <a href="javascript:if(confirm('http://www.xueersi.com/article/detail/1538  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.xueersi.com/article/detail/1538'" tppabs="http://www.xueersi.com/article/detail/1538" target="_blank">联系我们</a>
        |
        <a href="javascript:if(confirm('http://www.xueersi.com/article/detail/1495  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.xueersi.com/article/detail/1495'" tppabs="http://www.xueersi.com/article/detail/1495" target="_blank" style="color:#cc0000">版权声明</a>
        |
        <a href="javascript:if(confirm('http://www.xueersi.com/article  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.xueersi.com/article'" tppabs="http://www.xueersi.com/article" target="_blank">帮助中心</a>
    </p>
    <p>
        Copyright © 2019 www.xueersi.com All Rights Reserved     京ICP备09032638号
        <a target="_blank" href="javascript:if(confirm('http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010802020171  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010802020171'" tppabs="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010802020171">
            <img src="jgwab.png" tppabs="https://res12.xesimg.com/public/img/jgwab.png">
            京公网安备 11010802020171号
        </a>
    </p>
    <p class="link">
        <a id="___szfw_logo___" href="javascript:if(confirm('https://search.szfw.org/cert/l/CX20120925001738002003  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://search.szfw.org/cert/l/CX20120925001738002003'" tppabs="https://search.szfw.org/cert/l/CX20120925001738002003" target="_blank">
            <img src="13487953879693.png" tppabs="https://res13.xesimg.com/public/img/13487953879693.png">
        </a>
    </p>
</div>

<script src="lpo-sdk.js" tppabs="https://sdk.appadhoc.com/lpo-sdk.js" charset="utf-8"></script>
<script type="text/javascript">
      adhocLpo.init('ADHOC_fecc09e0-7452-4c00-a59b-3aa85d56c421', {
      crossDomain: 'https://reg.xueersi.com/xueersi.com',
      crossDomainDuration:60*60*24*7

  });
</script>

<!--空白区域，用于打码-->
<script type="text/javascript" defer="defer" async="true/false" >
    var ma_min = document.createElement('script');
    ma_min.type = 'text/javascript';
    ma_min.src = ('https:' == document.location.protocol ? 'https://netlog.xesimg.com' : 'http://netlog.xesv5.com/') + '/ma_min.js'
    var ss = document.getElementsByTagName('script')[0];
    ss.parentNode.insertBefore(ma_min, ss);
</script>

<script type="text/javascript">
    var _maq = _maq || [];
    _maq.push(['_setAccount', 'https://reg.xueersi.com/reg.xueersi.com']);
    _maq.push(['_setBZ', 'pv']);
    (function() {
        var ma = document.createElement('script');
        ma.type = 'text/javascript';
        ma.async = true;
        ma.src = ('https:' == document.location.protocol ? 'https://netlog.xesimg.com' : 'http://netlog.xesv5.com/') + '/ma.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ma, s);
    })();
</script>
        </div>
    </body>
</html>
