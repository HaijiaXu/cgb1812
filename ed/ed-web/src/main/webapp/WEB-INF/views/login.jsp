<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>欢迎登录</title>
		<meta name="keywords" content="名师课堂,网校,课外辅导,网络教育,远程教育">
        <meta name="description" content="学而思网校中小学网络教育的首选,中小学课外辅导,网络课堂,名师课堂等同步远程教育服务;学而思一线名师讲解,课程全面,品质保证,我们的愿景:成为受尊敬的教育机构；热线:400-800-2211">
		<link href="https://res11.xesimg.com/public//favicon.ico" rel="shortcut icon"/>
		<link href="https://res12.xesimg.com/login/css/xue.page_login.css?1556093157" type="text/css" rel="stylesheet" />
		<!--[if IE]>
			<link href="https://res13.xesimg.com/login/css/ie_project.css?1556093157" type="text/css" rel="stylesheet"/>
		<![endif]-->
		<script src="https://res14.xesimg.com/login/js/xue.jquery.min.js?1556093157"></script>
        <script src="https://res15.xesimg.com/login/js/jquery_cookie.js?1556093157"></script>
	</head>
    <body >
        <div class="header">
            <a href="http://www.xueersi.com" class="logo">logo</a>
            <span>
                还没有账号？<a href="https://reg.xueersi.com?redirect_url=https%3A%2F%2Fwww.xueersi.com%2Findex%3FisLogin%3Dtrue" data-xeslog-params="key=xeslog-login-login&action=click-immediately-regist&targetHref=https://reg.xueersi.com?redirect_url=https%3A%2F%2Fwww.xueersi.com%2Findex%3FisLogin%3Dtrue">立即注册</a>
            </span>
        </div>
        <!-- 内容 start-->
        <div class="passport_wrap">
    <div id="passport_login" class="passport_box">
        <h1>登录</h1>
        <div id="entry_right">
            <div id="entry">
                <p class="entry_item entry_inputs">
                    <label class="input_textnone" style="display:none">请输入手机号/用户名</label>
                    <input class="input_text" id="inputUserName" type="text" placeholder="请输入手机号/用户名" index="1" value=""/>
                    <span id="" class="label label-warning label-error user-error"></span>
                </p>
                <p class="entry_item entry_inputs">
                    <label class="input_textnone input_postion" style="display:none">请输入密码</label>
                    <input class="input_text" id="inputPassWord" type="password" placeholder="请输入密码" index="2" maxlength="18" onkeyup="value = value.replace(/\s/g, '')"/>
                    <span id="" class="label label-warning label-error pass-error"></span>
                </p>
                                <p><span class="userNameLogin"></span></p>

                <p class="entry_item padding entry_submit">
                    <input type="hidden" id="mode" value="101" />
                    <button id="login_submit" type="button" class="btn_login" data-xeslog-params="key=xeslog-login-login&action=click-immediately-login">立即登录</button>
                </p>
                <p class="entry_item padding entry_sava_pass">
                    <a href="https://account.xueersi.com/Find" id="forget_password">忘记密码？</a>
                </p>
            </div>
            <p class="entry_item apilogin_tips">
                其他方式登录
            </p>
            <p class="entry_item apilogin_btns">
            <!-- <a id="apilogin_qq" href="/Thirds/oauth?type=qq&redirect_url=https%3A%2F%2Fwww.xueersi.com%2Findex%3FisLogin%3Dtrue" data-xeslog-params="key=xeslog-login-login&action=click-qq-login">QQ登录</a> -->
                <a id="apilogin_weibo" href="/Thirds/oauth?type=sina&redirect_url=https%3A%2F%2Fwww.xueersi.com%2Findex%3FisLogin%3Dtrue" data-xeslog-params="key=xeslog-login-login&action=click-weibo-login">微博登录</a>

                <a id="apilogin_eduu" href="/Thirds/oauth?type=jzb&redirect_url=https%3A%2F%2Fwww.xueersi.com%2Findex%3FisLogin%3Dtrue" data-xeslog-params="key=xeslog-login-login&action=click-eduu-login">家长帮登录</a>
            </p>
        </div>
    </div>
    <div id="login_error" class="validate_tips hidden">
        <p class="error_tips tips error">https://login.xueersi.com?redirect_url=https%3A%2F%2Fwww.xueersi.com%2Findex%3FisLogin%3Dtrue</p>
        <a href="javascript:void(0);" class="error_close">关闭</a>
    </div>
</div>
<script type="text/javascript">
    var indexUrl = 'https://login.xueersi.com?redirect_url=https%3A%2F%2Fwww.xueersi.com%2Findex%3FisLogin%3Dtrue';
</script>
<script src="https://res11.xesimg.com/login/js/xue.page.login.js?1556093157"></script>
        <!-- 内容 end-->

        <!-- 尾部 start-->
        <div id="footer" style="border:none;">
            <div class="foot_area">
    <p>
        北京学而思教育科技有限公司 地址：北京市海淀区中关村大街18号科贸中心7层
        <a href="http://www.xueersi.com/" target="_blank">网校首页</a>
        |
        <a href="http://www.xueersi.com/article/detail/1903" target="_blank">关于我们</a>
        |
        <a href="http://www.xueersi.com/article/detail/1220" target="_blank">合作专区</a>
        |
        <a href="http://www.xueersi.com/article/detail/1538" target="_blank">联系我们</a>
        |
        <a href="http://www.xueersi.com/article/detail/1495" target="_blank" style="color:#cc0000">版权声明</a>
        |
        <a href="http://www.xueersi.com/article/" target="_blank">帮助中心</a>
    </p>
    <p>
        Copyright ? 2009-2019 www.xueersi.com All Rights Reserved     京ICP备09032638号
        <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010802020171">
            <img src="https://res12.xesimg.com/public/img/jgwab.png">
            京公网安备 11010802020171号
        </a>
    </p>
    <p class="link">
        <a id="___szfw_logo___" href="https://search.szfw.org/cert/l/CX20120925001738002003" target="_blank">
            <img src="https://res13.xesimg.com/public/img/13487953879693.png"></a>
    </p>
</div>
<!--空白区域，用于打码-->
<script type="text/javascript" defer="defer" async="true/false" >
    var ma_min = document.createElement('script');
    ma_min.type = 'text/javascript';
    ma_min.src = ('https:' == document.location.protocol ? 'https://netlog.xesimg.com' : 'http://netlog.xesv5.com') + '/ma_min.js?1556093157'
    var ss = document.getElementsByTagName('script')[0];
    ss.parentNode.insertBefore(ma_min, ss);
</script>

<script type="text/javascript">
    var _maq = _maq || [];
    _maq.push(['_setAccount', 'login.xueersi.com']);
    _maq.push(['_setBZ', 'pv']);
    (function () {
        var ma = document.createElement('script');
        ma.type = 'text/javascript';
        ma.async = true;
        ma.src = ('https:' == document.location.protocol ? 'https://netlog.xesimg.com' : 'http://netlog.xesv5.com') + '/ma.js?1556093157';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ma, s);
    })();
</script>
        </div>
        <!-- 尾部 end-->
    </body>
</html>
