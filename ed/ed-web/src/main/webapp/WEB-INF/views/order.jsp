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
                        <span class="xue-step-mark-line"></span>
                    </div>
                    <div class="xue-step-name">填写并确认订单</div>
                </li>
                <li>
                    <div class="xue-step-mark">
                        <span class="xue-step-mark-line"></span>
                        <span class="xue-step-mark-text">2</span>
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
<!--确认订单页开始-->
<div id="container" class="container">
    <div class="xue-pay-sureOrder-wrap">
        <form method="POST" action="/Order/add/" id="confirmForm">
            <div class="payment_order_wrap">
                <div class="pay_warp_con">
                    <input type="hidden" name="isUseBalance" id="isUseBalance" value="1" autocomplete="off">
                    <input type="hidden" value="0" name="balance" id="balance" autocomplete="off"/>
                    <input type="hidden" value="1" id="detailAddr" name="" autocomplete="off">
                    <input type="hidden" value="eyJwcm9kdWN0SWRzIjoiMTAwLTU4NjYwLTE5NDc4MCIsInN0dUlkIjoxNDUxMzMyMywia2V5IjoiMGRmMmZjMTA2ZDMyODIzMDIzM2JjMzc0NzUxZGFlMWMifQ==" id="idEncode" name="idEncode" autocomplete="off">
                    <input type="hidden" autocomplete="off" value="399" id="realPrice">
                    <input type="hidden" autocomplete="off" value="0" id="finalPaymentTime">
                    <input type="hidden" value="0" id="grouponId" name="grouponId" autocomplete="off">
                    <input type="hidden" value="1" id="orderType" name="orderType" autocomplete="off">
                    <input type="hidden" value="" id="grouponOrderNum" name="grouponOrderNum" autocomplete="off">
                    <input type="hidden" value="" id="xeswx_sourceid" name="xeswx_sourceid" autocomplete="off">
                    <input type="hidden" value="" id="xeswx_adsiteid" name="xeswx_adsiteid" autocomplete="off">
                    <input type="hidden" value="" id="xeswx_siteid" name="xeswx_siteid" autocomplete="off">
                    <input type="hidden" value="" id="xeswx_siteid" name="xeswx_sessid" autocomplete="off">

                    <!-- 收货地址 -->
                        <div class="user_site_info user_detail_addr_items" style='display:block;'>
        <div class="site_title">
            <h3>请选择收货地址<span style="color:#e74c3d;padding-left:10px;font-size: 12px;">（建议您填写公司/单位地址，以便收货）</span></h3>
            <div class="extra_r">
                <a href="#none"><em class="xue-pay-address-icon">+</em> <em>新增收货人信息</em></a>
            </div>
        </div>
        <div class="ui_ship_addr">
            <ul class="shipadd_list">
                                                            <li id="2246729" class="xue-pay-choose-address-box active "
                            for="addid_2246729">
                            <input type="radio" style="display:none"  data-phone="15622376412"
                                   data-address="萨达萨达撒洒水多"
                                   data-country="1932"
                                   data-city="200"
                                   data-province="19"
                                   data-realname="蔡孝本"
                                   value="2246729"
                                   name="data[addId]"
                                   id="addid_2246729"
                                   autocomplete="off"
                                   checked                                   >
                            <label class="consignee_item">
                                <span class="xue-pay-selectBtn"></span>
                            </label>
                            <div class="addr_detail">
                                <span class="addr_name" title="蔡孝本">蔡孝本</span>
                                <span class="addr_tel">15622376412</span>
                                <span class="addr_province" title="广东省">广东省</span>
                                <span class="addr_city" title="广州市">广州市</span>
                                <span class="addr_county" title="荔湾区">荔湾区</span>
                                <span class="addr_detail_info" title="萨达萨达撒洒水多">萨达萨达撒洒水多</span>
                            </div>
                            <div class="ship_btns">
                                <a class="edit_consignee" href="javascript:updateAddress(2246729);">编辑</a>
                                <a class="del_consignee" href="#none"  onclick="delAddress(2246729)">删除</a>
                            </div>
                            <i class="xue-pay-address-active-icon"></i>
                        </li>
                                                    </ul>
        </div>
        <div class="addr_switch">
            <span>更多地址</span><em></em>
        </div>
        <div class="new_consignee_items">
            <div id="details_form" class="info_from">
                <p>
                    <label for="">
                        收货人
                    </label>
                    <span class="add-opt">
                        <input type="text" value="" name="realname" id="realname" autocomplete="off"></span>
                    <span class="text">请准确填写真实姓名</span>
                </p>
                <p>
                    <label for="">
                        所在地区
                    </label>
                    <span class="add-opt">
                        <script type="text/javascript" src="//res12.xesimg.com/public/js/areadata.js"></script>
                        <script type="text/javascript" src="//res13.xesimg.com/cart/js/areadata_function.js"></script>
                        <input type="hidden" value="0" id="province" autocomplete="off">
                        <input type="hidden" value="0" id="city" autocomplete="off">
                        <input type="hidden" value="0" id="country" autocomplete="off">
                        <select style="display: inline-block;" class="select" name="province" id="add_province">
                            <option value="">省份</option>
                        </select>
                        &nbsp;
                        <select class="select" name="city" id="add_city">
                            <option value="">城市</option>
                        </select>
                        &nbsp;
                        <select class="select" name="country" id="add_country">
                            <option value="">区县</option>
                        </select>
                        <script type="text/javascript">
                            function renderAreaSelect() {
                                var defaults = {
                                    s1: 'add_province',
                                    s2: 'add_city',
                                    s3: 'add_country',
                                    v1: $("#province").val(),
                                    v2: $("#city").val(),
                                    v3: $("#country").val()
                                };
                                $('#add_province').empty('');
                                threeSelect(defaults);
                            }
                            ;
                            renderAreaSelect();
                        </script>
                    </span>
                    <span></span>
                </p>
                <p>
                    <label for="">
                        详细地址
                    </label>
                    <span class="add-opt">
                        <input type="text" class="add-input" name="address" id="address" autocomplete="off"></span>
                    <span class="text">请填写详细路名及门牌号</span>
                </p>

                <p>
                    <label for="">
                        手机号码
                    </label>
                    <span class="add-opt">
                        <input type="text" value="" name="phone" id="phone" autocomplete="off"></span>
                    <span class="text">用于接收发货通知短信和送货前通知</span>
                </p>
                <p>
                    <label></label>
                    <input type="hidden" value="0" id="add_id" autocomplete="off">
                    <a class="btn btn_red" id="address_submit_btn" href="javascript:void(0);" data-xeslog-params="key=xeslog-coursePay-cart&click_id=2.1.4&target_id=''&api_id=2.2.1&stu_id=14513323&course_ids=58660-194780">保存收货人信息</a>
                </p>
                <p class="error_tips_address"></p>
                <span class="close_address"></span>
            </div>
        </div>
        <!--选择地址-->
        <!--添加地址-->
    </div>
                    <!-- 收货地址 -->

                    <div class="user_site_info user_site_time">
                        <div class="site_title">
                            <h3>商品清单</h3>
                        </div>
                        <div class="goods_list"><!-- 商品清单 -->
                            <!-- 课程清单 -->
                            <div class="shop-goods-info">
                                <div class="goods information">
                                    <div id="goods-ul" class="order-desc-wrapper">
                                        <ul class="goods-title sub-title">
                                            <li class="gt-first text-center">订单详情</li>
                                            <li class="gt-second text-center">商品金额</li>
                                        </ul>
                                                                                    <ul class="order-info">
                                                <li class="goods-first goods-desc">
                                                                                                            <div class="gd-time-desc">
                                                            <div class="date">一期：7月12日-7月22日每天16:00-19:30</div>
                                                        </div>
                                                        <div class="gd-course-desc">
                                                            
                                                                                                                            <em class="xue-pay-lesson-name">
                                                                    英</em>
                                                                                                                        <span class="text">【2019-暑】高三英语一轮复习直播腾飞班（全国版）</span>
                                                            <div class="gd-teacher">
                                                                <span>授课:顾斐                                                                </span>
                                                                                                                                    <span>专属老师                                                                        </span>
                                                                                                                            </div>
                                                        </div>
                                                                                                    </li>
                                                <li class="goods-second goods-original-price">￥399</li>
                                            </ul>
                                                                                            <ul class="goods-welfare">
                                                    <li class="goods-first ao-welfare-text">
                                                        <div class="gd-welfare-content">
                                                            <em class="welfare">福利</em>
                                                            <span class="text">试卷 × 1 | 练习册 × 1 | 讲义 × 1 | 名著拓展阅读册 × 1 | 知识卡片 × 1 | 高中规划日历 × 1</span>                                                        </div>
                                                    </li>
                                                </ul>
                                                                                                                        </div>
                                </div>
                            </div>
                            <!-- 课程清单 -->
                        </div>
                    </div>
                    <!--余额开始-->
                    <div class="use_balance">
                        <em class="icon_sel"></em>
                        <h3>使用余额</h3>
                        <div>可用余额<span><em></em>元</span></div>
                    </div>
                    <!--余额结束-->
                    <!-- 使用余额 -->
                    
                    <!--预付定金提示信息开始-->
                                        <!--预付定金提示信息开始-->

                    <!-- 订单信息 end-->
                    <div class="statistic_list  ">
                        <div class="list">
                            <span>商品金额：</span>
                            <em class="priceItem">￥<u id="">399.00</u>
                            </em>
                        </div>
                        
                                                                        <div class="list" id="pay_balance">
                            <span>扣减余额：</span>
                            <em class="priceItem">-￥<u id="p_balance"></u>.00</em>
                        </div>
                        <div class="list">
                            <span>合计：</span><em class="priceItem">
                                <strong>￥<u id="p_pay"></u>.00</strong>
                            </em>
                        </div>
                        <div class="xue-pay-address-price-boxe">
                            <div class="course_info">
                                <p>收货地址：<em class="goods_addr"></em>收货人：<em class="goods_person"></em></p>
                            </div>
                            <div class="f_priceall">
                                实付款：<strong>￥<u id="p_pay_all"></u>.00</strong>
                            </div>
                        </div>
                    </div>
                    <!--<input type="hidden" autocomplete="off" value="0.00" id="balance">-->
                    <!-- 课程所需金额列表 -->
                    <div class="form_order_btn">
                        <div class="ui_ceilinglamp">
                            <div class="ceilinglamp">
                                <span class="f_order">
                                    <!--<button type="button" id="pay_submit"-->
                                    <!--data-xeslog-params="key=xeslog-sureOrder-trade&action=click-submit-order">提交订单-->
                                    <!--</button>-->
                                                                            <button type="button" id="pay_submit" data-xeslog-params="key=xeslog-coursePay-cart&action=click-submit-order&click_id=2.1.6&target_id=''&api_id=2.2.1&stu_id=14513323&course_ids=58660-194780">提交订单</button>
                                                                    </span>

                                <div class="pay-formOrder-left-box">
                                    <p class="f-invoice-tips">注:如您需开具发票，支付成功后，请在订单管理-我的发票处进行申请。</p>
                                                                            <p class="f-deduction-tips" id="f-deduction-tips">若商品申请退费时教辅已签收，需根据签收的教辅按分类扣除工本费。<a href="javascript:void(0)" data-xeslog-params="key=xeslog-coursePay-cart&action=click-submit-detail">查看详情>></a>
                                        </p>
                                                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- 适用范围 start -->
<section class="useArea none" style="left: 1044.66px; top: 581px;">
    <h5 class="useAreaTitle">适用范围</h5>
    <p class="useAreaItem">
        <span class="itemTitle">年级：</span>
        <span class="itemContent klass"></span>
    </p>
    <p class="useAreaItem">
        <span class="itemTitle">学科：</span>
        <span class="itemContent subject"></span>
    </p>
    <p class="useAreaItem">
        <span class="itemTitle">学期：</span>
        <span class="itemContent term"></span>
    </p>
</section>
<!-- 适用范围 end -->
<script src="//res14.xesimg.com/x5pay/js/xue.pay.new.js?1620190404"></script>

<script type="text/javascript">
    $(function () {
        $(".coupon-used").hide();
        $(".couponItem").click(function () {
            if (!$(this).children('.couponBody').hasClass('unuse')) {
                var a = $(this).find(".coupon-used");
                a.prop("checked", !a.prop("checked"));
            }
        });
        $(".couponItem.selected").find(".coupon-used").prop("checked", true);
    });
</script>
    </body>
</html>