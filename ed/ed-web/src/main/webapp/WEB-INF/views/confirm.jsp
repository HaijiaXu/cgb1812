<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>结算中心</title>
        <meta name="description" content="">
        <meta name="keywords" content="">
        <link href="//res15.xesimg.com/public/favicon.ico" rel="shortcut icon"/>
        <link rel="stylesheet" type="text/css" href="//res16.xesimg.com/x5pay/css/pay.new.css?1620190404">
        <script src="//lib01.xesimg.com/lib/jQuery/1.11.1/jquery.min.js"></script>
        <script src="//lib02.xesimg.com/lib/webLog/xes.md5.min.js"></script>
        <script src="//lib03.xesimg.com/lib/webLog/xes.weblog.event.min.js"></script>
    </head>
    <body>
        <!--头部开始-->
<div class="xue-pya-header">
    <div class="container">
        <div class="xue-pay-logo">
            <img src="//res11.xesimg.com/www/img/logo.svg">
        </div>
        <p class="xue-pay-title">结算中心</p>
        <div class="xue-pay-orderStep-box">
            <ul>
                <li>
                    <div class="xue-step-mark">
                        <span class="xue-step-mark-line xue-mark-line-red hide"></span>
                        <span class="xue-step-mark-text xue-mark-text-red">1</span>
                        <span class="xue-step-mark-line xue-mark-line-red"></span>
                    </div>
                    <div class="xue-step-name">填写并确认订单</div>
                </li>
                <li>
                    <div class="xue-step-mark">
                        <span class="xue-step-mark-line xue-mark-line-red"></span>
                        <span class="xue-step-mark-text xue-mark-text-red">2</span>
                        <span class="xue-step-mark-line"></span>
                    </div>
                    <div class="xue-step-name">支付订单</div>
                </li>
                <li>
                    <div class="xue-step-mark">
                        <span class="xue-step-mark-line"></span>
                        <span class="xue-step-mark-text">3</span>
                        <span class="xue-step-mark-line hide"></span>
                    </div>
                    <div class="xue-step-name">订单完成</div>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--头部结束-->
<!-- 内容 start-->
<div id="container" class="container">
    <div class="payment_order_num xue-pay-payOrder-wrap">
        <div class="order_number">
            <div class="order_num_con">
                <p class="o_num">
                    <span class="o_title"><em>订单提交成功，请您尽快付款！</em> 订单号：2019042419093061097804</span>
                    <span class="o_money">
                        应付金额： <strong>¥ <u class="o_pai">399</u>
                        </strong>
                    </span>
                </p>
                <p class="o_times">订单将为你保留 <span></span> , 请抓紧时间支付</p>
            </div>
        </div>
        <div class="pay_mode">
            <div class="failure_order">
                <a class="btn btn-danger btn-lg" href="javascript:;" id="rePay" data-xeslog-params="">重新支付</a>
            </div>
            <div class="xue-pay-pay_mode-box">
                <ul class="pay_mode_collect">
                    <li class="active">支付宝支付</li>
                    <li>微信支付</li>
                    <li>京东支付<span class="jdPay_discount">随机立减</span></li>
                    <li>网上银行支付</li>
                </ul>

                <form action="https://wepay.jd.com/jdpay/saveOrder"  method="post" id="batchForm" style="height:1px;">
                    <input type="hidden" name="tradeNum" id="tradeNum" value=""/><br/>
                    <input type="hidden" name="tradeName" id="tradeName" value=""/><br/>
                    <input type="hidden" name="tradeTime" id="tradeTime" value=""/><br/>
                    <input type="hidden" name="amount" id="amount" value=""/><br/>
                    <input type="hidden" name="currency" id="currency" value=""/><br/>
                    <input type="hidden" name="note" id="note" value=""/><br/>
                    <input type="hidden" name="callbackUrl" id="callbackUrl" value=""/><br/>
                    <input type="hidden" name="notifyUrl" id="notifyUrl" value=""/><br/>
                    <input type="hidden" name="userId" id="userId" value=""/><br/>
                    <input type="hidden" name="expireTime" id="jdExpireTime" value=""/><br/>
                    <input type="hidden" name="orderType" id="orderType" value=""/><br/>
                    <input type="hidden" name="version" id="version" value=""/><br/>
                    <input type="hidden" name="merchant" id="merchant" value=""/><br/>
                    <input type="hidden" name="sign" id="sign" value=""/><br/>
                </form>

                <input type="hidden" name="wxQrCode" id="wxQrCode" value="">
                <input type="hidden" value="900" id="expireTime" name="expireTime">
                <input type="hidden" value="401101" id="payType" name="payType">
                <input type="hidden" id="isWxPc" name="isWxPc" value="0" autocomplete="off">
                <input type="hidden" id="isUseBalance" name="isUseBalance" value="1" autocomplete="off">
                <input type="hidden" id="aliQrCode" name="aliQrCode" value="" autocomplete="off">
                <input type="hidden" id="orderNum" name="orderNum" value="2019042419093061097804" autocomplete="off">
                <input type="hidden" id="onlinePayType" name="onlinePayType" value="" autocomplete="off">
                <div class="pay_mode_list current">
                    <h3 class="xue-pay-mode_title-box">扫码支付</h3>
                    <h3 class="xue-pay-mode_title-box2">网页支付</h3>
                    <div class="scan_alipay">
                        <div class="code_alipay">
                            <div class="code_alipay_box">
                                <div class="code">
                                    <img id='aliqr' src="" style="width:160px;height:160px;"/>
                                    <p id="aliErrorTip" style="width: 100%; line-height: 22px; margin: 70px 0 0 0;"></p>
                                </div>
                            </div>
                            <p style="visibility:hidden"><span><em>60</em>秒</span>后此二维码失效</p>
                        </div>
                    </div>
                    <div class="web_alipay">
                        <div class="goPay goPay_alipay" data-xeslog-params="key=xeslog-payOrder-trade&action=click-jdpay-immediately-pay" ut-data-click ut-data-convertid="88552" ut-data-eventtype="Purchase">立即支付</div>
                    </div>
                </div>

                <div class="pay_mode_list">
                    <div class="scan_weChat">
                        <div class="code_weChat">
                            <div class="code_weChat_box">
                                <div class="code">
                                    <img id='wxqr' src="" style="width:160px;height:160px;"/>
                                    <p id="wxErrorTip" style="width: 100%; line-height: 22px; margin: 70px 0 0 0;"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--京东支付开始-->
                <div class="pay_mode_list">
                    <div class="scan_jdPay">
                        <!-- 扫码支付 -->
                        <div class="code_jdPay">
                            <div class="code_jdpay_title">扫码支付</div>
                            <div class="code_jdPay_box">
                                <div class="code_jdPay_icon"></div>
                                <p class="code_jdPay_text">使用京东手机APP扫码支付</p>
                            </div>
                            <div class="jdPay-qrCode-big-box">
                                <div class="jdPay-qrCode-left">
                                    <div class="qrCode">
                                        <img id='jdqr' src=""/>
                                        <p id="jdErrorTip" style="width: 100%; line-height: 22px; margin: 70px 0 0 0;"></p>
                                    </div>
                                    <p>打开手机端京东左上角<br>扫一扫继续支付</p>
                                </div>
                                <div class="jdPay-qrCode-right"></div>
                            </div>
                        </div>
                        <!-- 网页支付 -->
                        <div class="code_jdpay_web">
                            <div class="code_jdpay_title">网页支付</div>
                            <div class="code_jdPay_box">
                                <div class="code_jdPay_icon"></div>
                                <p class="code_jdPay_text">去京东网站支付</p>
                                <p class="web_jdpay_text">(新用户最高减399，老用户最高减99)</p>
                                <p class="web_jdpay_pub">
                                    <img src="//res12.xesimg.com/x5pay/img/jdpay.png" alt="">
                                </p>
                                <!-- 立即支付支付如果是链接的话就换成a标签 -->
                                <div class="goPay goPay_Jdpay" data-xeslog-params="key=xeslog-payOrder-trade&action=click-jdpay-immediately-pay" ut-data-click ut-data-convertid="88552" ut-data-eventtype="Purchase">立即支付</div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--京东支付结束-->

                <div class="pay_mode_list">
                    <ul class="bank_list">
                        <li class="current">
                            <label title="中国工商银行" class="bank-item ICBC" for="" data-payid="401101" data-value="ICBCB2C" data-name="bank_id" data-paytype="1"></label>
                        </li>
                        <li>
                            <label title="中国建设银行" class="bank-item CCB" for="" data-payid="401104" data-value="CCB" data-name="bank_id" data-paytype="1"></label>
                        </li>
                        <li>
                            <label title="招商银行" class="bank-item CMB" for="" data-payid="401102" data-value="CMB" data-name="bank_id" data-paytype="1"></label>
                        </li>
                        <li>
                            <label title="中国农业银行" class="bank-item ABC" for="" data-payid="401103" data-value="ABC" data-name="bank_id" data-paytype="1"></label>
                        </li>
                        <li>
                            <label title="交通银行" class="bank-item BCM" for="" data-payid="401105" data-value="COMM" data-name="bank_id" data-paytype="1"></label>
                        </li>
                        <li>
                            <label title="广东发展银行" class="bank-item CGD" for="" data-payid="401116" data-value="GDB" data-name="bank_id" data-paytype="1"></label>
                        </li>
                        <li>
                            <label title="中国银行" class="bank-item BOC" for="" data-payid="401109" data-value="BOCB2C" data-name="bank_id" data-paytype="1"></label>
                        </li>
                        <li>
                            <label title="中国邮政" class="bank-item POST" for="" data-payid="401115" data-value="POSTGC" data-name="bank_id" data-paytype="1"></label>
                        </li>
                        <li style="display: none;" class="list_more">
                            <label title="中信银行" class="bank-item ECITIC" for="" data-payid="401107" data-value="CITIC" data-name="bank_id" data-paytype="1"></label>
                        </li>
                        <li style="display: none;" class="list_more">
                            <label title="兴业银行" class="bank-item CIB" for="" data-payid="401108" data-value="CIB" data-name="bank_id" data-paytype="1"></label>
                        </li>
                        <li style="display: none;" class="list_more">
                            <label title="上海浦东发展银行" class="bank-item SPD" for="" data-payid="401111" data-value="SPDB" data-name="bank_id" data-paytype="1"></label>
                        </li>
                        <li style="display: none;" class="list_more">
                            <label title="杭州银行" class="bank-item HCCB" for="" data-payid="401113" data-value="HZCBB2C" data-name="bank_id" data-paytype="1"></label>
                        </li>
                        <li style="display: none;" class="list_more">
                            <label title="中国农村商业银行" class="bank-item RCB" for="" data-payid="401114" data-value="BJRCB" data-name="bank_id" data-paytype="1"></label>
                        </li>
                        <li style="display: none;" class="list_more">
                            <label title="上海银行" class="bank-item SHYH" for="" data-payid="401117" data-value="SHBANK" data-name="bank_id" data-paytype="1"></label>
                        </li>
                        <li style="display: none;" class="list_more">
                            <label title="富滇银行" class="bank-item FDYH" for="" data-payid="401118" data-value="FDB" data-name="bank_id" data-paytype="1"></label>
                        </li>
                        <li style="display: none;" class="list_more">
                            <label title="宁波银行" class="bank-item NBCB" for="" data-payid="401120" data-value="NBBANK" data-name="bank_id" data-paytype="1"></label>
                        </li>
                    </ul>
                    <p class="bank_more">
                        <span>更多银行<em></em></span>
                    </p>
                    <div style="position:relative;">
                        <div class="goPay goPay_bank" data-xeslog-params="key=xeslog-payOrder-trade&action=click-jdpay-immediately-pay" ut-data-click ut-data-convertid="88552" ut-data-eventtype="Purchase">立即支付</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- modal start -->
<div class="modal hideli">
    <div class="panelli">
        <div class="header">
            <div class="close">
                <!-- <span>X</span> -->
                <img src="//res13.xesimg.com/x5pay/img//close.png" alt="">
            </div>
        </div>
        <div class="body" style="text-align: center;">
            <span class="alertIcon" style="font-size: 30px;">!</span>
            <br>
            <p>网校测试账号，请使用余额支付。</p>
            <button type= "button">确定</button>
        </div>
    </div>
</div>
<!-- modal end -->

<script type="text/javascript">
    $(function () {
        (function (w, d, t, s, q, m, n) {
            if (w.utq)
                return;
            q = w.utq = function () {
                q.process ? q.process(arguments) : q.queue.push(arguments);
            };
            q.queue = [];
            m = d.getElementsByTagName(t)[0];
            n = d.createElement(t);
            n.src = s;
            n.async = true;
            m.parentNode.insertBefore(n, m);
        })(window, document, 'script', 'https://image.uc.cn/s/uae/g/0s/ad/utracking.js');
        utq('set', 'convertMode', true);
        utq('set', 'trackurl', 'huichuan.sm.cn/lp');

        $.ajax({
            url: '/Order/pay/',
            type: 'POST',
            dataType: 'json',
            data: {payCode: 401002, isUseBalance: 1},
            success: function (result) {
                if (result.sign == 0) {
                    $('#aliqr').addClass('hideli');
                    $('#aliErrorTip').removeClass('hideli');
                    $('#aliErrorTip').text(result.msg);
                } else {
                    $('#aliqr').removeClass('hideli').attr("src", "/Order/createQrCode?type=1");
                    $('#aliErrorTip').addClass('hideli');
                }
            },
            error: function () {
                alert('数据加载失败！');
            }
        });
    });
    function  selectPayMode() {
        var iCount1, iCount2, iCount3;
        var isWxCode = false;
        var isJdCode = false;
        iCount2 = setInterval("ajaxstatusAp()", 5000);
        $('.pay_mode_collect  li').each(function (i) {
            var that = $(this);
            that.on('click', function () {
                if (that.index() !== 3) {
                    if (that.index() == 1) {
                        //微信支付
                        clearInterval(iCount2);
                        clearInterval(iCount3);
                        if (!isWxCode) {
                            $('#payType').val(803000);
                            $.ajax({
                                url: '/Order/pay/',
                                type: 'POST',
                                dataType: 'json',
                                data: {payCode: $('#payType').val(), isUseBalance: $('#isUseBalance').val()},
                                success: function (result) {
                                    if (result.sign == 0) {
                                        $('#wxqr').addClass('hideli');
                                        $('#wxErrorTip').removeClass('hideli');
                                        $('#wxErrorTip').text(result.msg);
                                    } else {
                                        $('#wxErrorTip').addClass('hideli');
                                        $('#wxqr').removeClass('hideli').attr("src", "/Order/createQrCode?type=2");
                                    }
                                    isWxCode = true;
                                },
                                error: function () {
                                    alert('数据加载失败！');
                                }
                            });
                        }

                        iCount1 = setInterval("ajaxstatusWx()", 5000);
                    } else if (that.index() == 2) {
                        //清除支付宝和微信支付的定时器
                        clearInterval(iCount2);
                        clearInterval(iCount1);
                        //请求京东支付二维码
                        if (!isJdCode) {
                            $('#payType').val(110001);
                            $.ajax({
                                url: '/Order/pay/',
                                type: 'POST',
                                dataType: 'json',
                                data: {payCode: $('#payType').val(), isUseBalance: $('#isUseBalance').val()},
                                success: function (result) {
                                    if (result.sign == 0) {
                                        $('#jdqr').addClass('hideli');
                                        $('#jdErrorTip').removeClass('hideli');
                                        $('#jdErrorTip').text(result.msg);
                                    } else {
                                        $('#jdErrorTip').addClass('hideli');
                                        $('#jdqr').removeClass('hideli').attr("src", "/Order/createQrCode?type=3");
                                    }
                                    isJdCode = true;
                                },
                                error: function () {
                                    alert('数据加载失败！');
                                }
                            });
                        }
                        iCount3 = setInterval("ajaxstatusJd()", 5000);
                    } else {//支付宝支付
                        $('#payType').val(401001);
                        clearInterval(iCount1);
                        clearInterval(iCount3);
                        iCount2 = setInterval("ajaxstatusAp()", 5000);
                    }
                } else {
                    $('#payType').val(401101);
                    clearInterval(iCount1);
                    clearInterval(iCount2);
                    clearInterval(iCount3);
                }
                that.addClass('active').siblings().removeClass('active');
                that.parent().parent().find('.pay_mode_list').eq(i).addClass('current').siblings().removeClass('current');
            });
        });
    }
    selectPayMode();
</script>
<!--content结束-->
<script src="//res14.xesimg.com/x5pay/js/xue.pay.new.js?1620190404"></script>    </body>

</html>
