<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="en">
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>康生缘-订单详情</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
		
		<!-- all css here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/pe-icon-7-stroke.css">
		<link rel="stylesheet" href="lib/css/nivo-slider.css" type="text/css" />
		<link rel="stylesheet" href="lib/css/preview.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/meanmenu.min.css">
        <link rel="stylesheet" href="assets/css/bundle.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <link rel="stylesheet" type="text/css" href="assets/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="assets/css/menu_elastic.css" />
        <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
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
                                            <table class="table table-hover table-striped">
                                                <thead>
                                                <tr>
                                                    <th
                                                            class="product-price">商品图片</th>
                                                    <th
                                                            class="product-name">商品名称</th>
                                                    <th
                                                            class="product-price">商品单价</th>
                                                    <th
                                                            class="product-quantity">购买数量</th>
                                                    <th
                                                            class="product-subtotal">总价</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td
                                                            class="product-thumbnail">
                                                        <a href="#"><img
                                                                src="assets/img/cart/1.jpg"
                                                                alt=""></a>
                                                    </td>
                                                    <td
                                                            class="product-name"><a
                                                            href="#">Headphone</a></td>
                                                    <td
                                                            class="product-price"><span
                                                            class="amount">￥165.00</span></td>
                                                    <td
                                                            class="product-quantity">
                                                        <span class="amount">1</span>
                                                    </td>
                                                    <td
                                                            class="product-subtotal">￥165.00</td>
                                                </tr>
                                                <tr>
                                                    <td
                                                            class="product-thumbnail">
                                                        <a href="#"><img
                                                                src="assets/img/cart/2.jpg"
                                                                alt=""></a>
                                                    </td>
                                                    <td
                                                            class="product-name"><a
                                                            href="#">Table lamp</a></td>
                                                    <td
                                                            class="product-price"><span
                                                            class="amount">￥150.00</span></td>
                                                    <td
                                                            class="product-quantity">
                                                        <span class="amount">1</span>
                                                    </td>
                                                    <td
                                                            class="product-subtotal">￥150.00</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                </div>
                            </div>
                            <div class="row tax-coupon-div">
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <div class="tax-coupon-all">
                                        <div class="tax-coupon">
                                            <ul role="tablist">
                                                <li class="active">
                                                    <a href="#tax" data-toggle="tab">收货信息</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="tax-coupon-details tab-content">
                                            <div id="tax"
                                                 class="shipping-dec tab-pane
                                                    active">
                                                <div class="shipping-form">
                                                    <div
                                                            class="single-shipping-form">
                                                        <label
                                                                class="required
                                                                get">
                                                            收货人姓名：张三
                                                        </label>
                                                    </div>
                                                    <div
                                                            class="single-shipping-form">
                                                        <label
                                                                class="required
                                                                get">
                                                            收货人手机号：13888888888
                                                        </label>
                                                    </div>
                                                    <div
                                                            class="single-shipping-form">
                                                        <label
                                                                class="required
                                                                get">
                                                            收货人地址：广东省深圳市
                                                        </label>
                                                    </div>
                                                    <div
                                                            class="single-shipping-form">
                                                        <label
                                                                class="required
                                                                get">
                                                            邮编：100001
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <div class="cart-total">
                                        <ul>
                                            <li class="cart-black">总价<span>￥315.00</span></li>
                                        </ul>
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
        <script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
        <script src="assets/js/snap.svg-min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.meanmenu.js"></script>
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <script src="assets/js/isotope.pkgd.min.js"></script>
        <script src="assets/js/imagesloaded.pkgd.min.js"></script>
        <script src="assets/js/jquery.validate.min.js"></script>
        <script src="assets/js/owl.carousel.min.js"></script>
		<script src="lib/js/jquery.nivo.slider.js"></script>
		<script src="lib/home.js"></script>
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>
        <script src="assets/js/classie.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/vue@2.5.17/dist/vue.min.js"></script>
        <script src="assets/js/yuan.js"></script>
        <script>
            var view = new Vue({
                el: '#content',
                data: {
                    userInfo: {}
                },
                created: function() {

                },
                mounted: function() {
                    this.isLogin()
                },
                methods: {
                    isLogin () {
                        var userInfo = window.localStorage.getItem(USER_INFO)
                        if (userInfo !== undefined && userInfo !== '') {
                            this.userInfo = JSON.parse(userInfo)
                        }
                    },
                    logout () {
                        $.post(
                            LOGOUT_URL,
                            function(data) {
                                if (data.success === true) {
                                    window.location.href = 'index.jsp'
                                    window.localStorage.removeItem(USER_INFO)
                                }
                            }
                        )
                    },

                }
            });
        </script>
		<script src="assets/js/main3.js"></script>
    </body>
</html>
