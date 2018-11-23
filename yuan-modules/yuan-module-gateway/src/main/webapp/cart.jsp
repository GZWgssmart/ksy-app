<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>康生缘-我的购物车</title>
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
                                        我的购物车
                                        <i class="pe-7s-cart"></i>
                                    </h2>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12
                                        col-xs-12">
                                        <form action="#">
                                                <table class="table table-striped table-hover">
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
                                                            <th
                                                                class="product-name">删除</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr v-for="item in carts">
                                                            <td
                                                                class="product-thumbnail">
                                                                <a href="javascript:;"><img
                                                                        :src="item.proLogImg"
                                                                        alt=""></a>
                                                            </td>
                                                            <td
                                                                class="product-name"><a
                                                                    href="javascript:;" v-text="item.proName"></a></td>
                                                            <td
                                                                class="product-price"><span
                                                                    class="amount" v-text="'￥' + item.price"></span></td>
                                                            <td
                                                                class="product-quantity">
                                                                <input v-model="item.count"
                                                                    type="number">
                                                            </td>
                                                            <td
                                                                class="product-subtotal" v-text="'￥' + (item.price * item.count)"></td>
                                                            <td
                                                                class="product-remove"><a
                                                                    href="javascript:;" @click="removeCart(item.proId)"><i
                                                                        class="fa
                                                                        fa-times"></i></a></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                        </form>
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
                                                    <p>请完善您的收货信息</p>
                                                    <div class="shipping-form">
                                                        <div
                                                            class="single-shipping-form">
                                                            <label
                                                                class="required
                                                                get">
                                                                收货人姓名
                                                                <em>*</em>
                                                            </label>
                                                            <input
                                                                placeholder="请输入收货人姓名"
                                                                type="text"
                                                                required="">
                                                        </div>
                                                        <div
                                                                class="single-shipping-form">
                                                            <label
                                                                    class="required
                                                                get">
                                                                收货人手机号
                                                                <em>*</em>
                                                            </label>
                                                            <input
                                                                    placeholder="请输入收货人手机号"
                                                                    type="text"
                                                                    required="">
                                                        </div>
                                                        <div
                                                                class="single-shipping-form">
                                                            <label
                                                                    class="required
                                                                get">
                                                                收货人地址
                                                                <em>*</em>
                                                            </label>
                                                            <input
                                                                    placeholder="请输入详细收货地址"
                                                                    type="text"
                                                                    required="">
                                                        </div>
                                                        <div
                                                                class="single-shipping-form">
                                                            <label
                                                                    class="required
                                                                get">
                                                                邮编
                                                                <em>*</em>
                                                            </label>
                                                            <input
                                                                    placeholder="请输入邮编"
                                                                    type="text"
                                                                    required="">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12 col-xs-12">
                                        <div class="cart-total">
                                            <ul>
                                                <li class="cart-black">总价<span v-text="'￥' + totalPrice"></span></li>
                                            </ul>
                                            <div class="cart-total-btn">
                                                <div class="cart-total-btn2 f-right">
                                                    <a href="#">提交订单</a>
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
                    userInfo: {},
                    carts:[],
                    totalPrice: 0
                },
                created: function() {

                },
                mounted: function() {
                    this.isLogin()
                    this.showCarts()
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
                    showCarts () {
                        $.post(
                            CART_LIST_URL,
                            function (data) {
                                if (data.success === true) {
                                    view.carts = data.data
                                    view.carts.forEach(function (item, index) {
                                        view.totalPrice += item.count * item.price
                                    })
                                }
                            }
                        )
                    },
                    removeCart(productId) {
                        console.log(productId)
                        $.post(
                            CART_REMOVE_URL,
                            {
                                proId: productId
                            },
                            function (data) {
                                if (data.success === false) {
                                    for (var i = 0; i < view.carts.length; i++) {
                                        if (view.carts[i].proId === productId) {
                                            view.carts.splice(i, 1)
                                            break
                                        }
                                    }
                                }
                            }
                        )
                    }
                },
                watch: {
                    carts: {
                        handler(newValue, oldValue) {
                            view.totalPrice = 0
                            newValue.forEach(function (item, index) {
                                view.totalPrice += item.count * item.price
                            })
                        },
                        deep: true
                    }
                },
            });
        </script>
		    <script src="assets/js/main3.js"></script>
        </body>
    </html>
