﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<!doctype html>
<html class="no-js" lang="en">
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>康生缘-订单详情</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="<%=path%>/assets/img/favicon.ico">
		
		<!-- all css here -->
        <link rel="stylesheet" href="<%=path%>/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="<%=path%>/assets/css/magnific-popup.css">
        <link rel="stylesheet" href="<%=path%>/assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="<%=path%>/assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="<%=path%>/assets/css/pe-icon-7-stroke.css">
		<link rel="stylesheet" href="<%=path%>/lib/css/nivo-slider.css" type="text/css" />
		<link rel="stylesheet" href="<%=path%>/lib/css/preview.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="<%=path%>/assets/css/animate.css">
        <link rel="stylesheet" href="<%=path%>/assets/css/meanmenu.min.css">
        <link rel="stylesheet" href="<%=path%>/assets/css/bundle.css">
        <link rel="stylesheet" href="<%=path%>/assets/css/style.css">
        <link rel="stylesheet" href="<%=path%>/assets/css/responsive.css">
        <link rel="stylesheet" type="text/css" href="<%=path%>/assets/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="<%=path%>/assets/css/menu_elastic.css" />
        <script src="<%=path%>/assets/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body>


        <div id="content" class="canvas-wrapper">
            <%@include file="master/left-account.jsp"%>
            <div class="content-wrap">
                <div class="content">
                    <%@include file="master/header.jsp"%>
                    <!-- shopping-cart-area start -->
                    <div class="cart-area ptb-100">
                        <div class="container">
                            <div class="section-title text-center mb-50">
                                <h2>
                                    订单详情
                                    <i class="pe-7s-menu"></i>
                                </h2>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12
                                        col-xs-12">
                                    <div class="table-content table-responsive">
                                        <table>
                                                <thead>
                                                <tr>
                                                    <th>商品图片</th>
                                                    <th>商品名称</th>
                                                    <th>商品单价</th>
                                                    <th>购买数量</th>
                                                    <th>总价</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr v-for="item in order.shopTradeDetails">
                                                    <td>
                                                        <a :href="'single-product.jsp?id=' + item.id"><img
                                                                :src="item.proLogoImgFull"
                                                                alt=""></a>
                                                    </td>
                                                    <td><a
                                                            :href="'single-product.jsp?id=' + item.id" v-text="item.proName"></a></td>
                                                    <td><span v-text="'￥' + item.price"></span></td>
                                                    <td>
                                                        <span v-text="item.count"></span>
                                                    </td>
                                                    <td v-text="'￥' + (item.price * item.count)"></td>
                                                </tr>
                                                </tbody>
                                            </table>
                                    </div>
                                </div>
                            </div>
                            <div class="row tax-coupon-div">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="cart-total">
                                        <ul>
                                            <li class="cart-black">总价<span v-text="'￥' + order.price"></span></li>
                                        </ul>
                                        <div class="cart-total-btn">
                                            <div class="cart-total-btn2 f-right">
                                                <div v-text="errMsg"></div>
                                                <div v-text="order.statusName"></div>
                                                <div v-if="order.status != 3">
                                                    <span v-if="firstConfirm == true" ><a href="javascript:;" @click="confirmOrder(1)">确认收货</a></span>
                                                    <span v-if="secondConfirm == true">真的确认收货吗？<a href="javascript:;" @click="confirmOrder(2)">确认</a></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- shopping-cart-area end -->
                    <%@include file="master/footer.jsp"%>
                </div>
                <!-- content end -->
            </div>
            <!-- content-wrap end -->
        </div>
		
		

		<!-- all js here -->
        <script src="<%=path%>/assets/js/vendor/jquery-1.12.0.min.js"></script>
        <script src="<%=path%>/assets/js/snap.svg-min.js"></script>
        <script src="<%=path%>/assets/js/bootstrap.min.js"></script>
        <script src="<%=path%>/assets/js/jquery.meanmenu.js"></script>
        <script src="<%=path%>/assets/js/jquery.magnific-popup.min.js"></script>
        <script src="<%=path%>/assets/js/isotope.pkgd.min.js"></script>
        <script src="<%=path%>/assets/js/imagesloaded.pkgd.min.js"></script>
        <script src="<%=path%>/assets/js/jquery.validate.min.js"></script>
        <script src="<%=path%>/assets/js/owl.carousel.min.js"></script>
		<script src="<%=path%>/lib/js/jquery.nivo.slider.js"></script>
		<script src="<%=path%>/lib/home.js"></script>
        <script src="<%=path%>/assets/js/plugins.js"></script>
        <script src="<%=path%>/assets/js/main.js"></script>
        <script src="<%=path%>/assets/js/classie.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/vue@2.5.17/dist/vue.min.js"></script>
        <script src="<%=path%>/assets/js/yuan.js"></script>
        <script>
            var orderId = ${requestScope.id}
            var view = new Vue({
                el: '#content',
                data: {
                    order: {
                        shopTradeDetails: []
                    },
                    firstConfirm: true,
                    secondConfirm: false,
                    errMsg: ''
                },
                created: function() {

                },
                mounted: function() {
                    this.getOrder()
                },
                methods: {
                    logout () {
                        $.post(
                            LOGOUT_URL,
                            function(data) {
                                if (data.success === true) {
                                    window.location.href = '<%=path%>/index'
                                }
                            }
                        )
                    },
                    getOrder () {
                        $.post(
                            ORDER_DETAIL_URL,
                            {
                                id: orderId
                            },
                            function (data) {
                                if (data.success === true) {
                                    view.order = data.data
                                    view.order.statusName = ORDER_STATUS['' + view.order.status]
                                    view.order.shopTradeDetails.forEach(function (item, index) {
                                        item.proLogoImgFull = BASE_URL + MODULE_ADMIN + item.proLogoImg
                                    })
                                } else if (data.success === 'false' && data.msg === LOGIN_ERR_MSG) {
                                    window.location.href = '<%=path%>/login?relogin=y'
                                }
                            }
                        )
                    },
                    confirmOrder (confirm) {
                        view.errMsg = ''
                        if (confirm === 1) {
                            view.firstConfirm = false
                            view.secondConfirm = true
                        } else if (confirm === 2) {
                            $.post(
                                ORDER_CONFIRM_URL,
                                {
                                    id: orderId
                                },
                                function (data) {
                                    if (data.success === true) {
                                        this.getOrder()
                                    } else if (data.success === false) {
                                        view.errMsg = data.msg
                                    } else if (data.success === 'false' && data.msg === LOGIN_ERR_MSG) {
                                        window.location.href = '<%=path%>/login?relogin=y'
                                    }
                                }
                            )
                        }
                    }
                }
            });
        </script>
		<script src="<%=path%>/assets/js/main3.js"></script>
    </body>
</html>
