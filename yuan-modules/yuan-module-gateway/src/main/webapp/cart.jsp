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
                                            <div class="table-content table-responsive">
                                                <table>
                                                    <thead>
                                                        <tr>
                                                            <th>商品图片</th>
                                                            <th>商品名称</th>
                                                            <th>商品单价</th>
                                                            <th>购买数量</th>
                                                            <th>总价</th>
                                                            <th>删除</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr v-for="item in carts">
                                                            <td>
                                                                <a href="javascript:;"><img
                                                                        :src="item.proLogImgFull"
                                                                        alt=""></a>
                                                            </td>
                                                            <td><a
                                                                    href="javascript:;" v-text="item.proName"></a></td>
                                                            <td><span v-text="'￥' + item.price"></span></td>
                                                            <td>
                                                                <input v-model="item.count"
                                                                    type="number">
                                                            </td>
                                                            <td v-text="'￥' + (item.price * item.count)"></td>
                                                            <td
                                                                class="product-remove"><a
                                                                    href="javascript:;" @click="removeCart(item.proId)"><i
                                                                        class="fa
                                                                        fa-times"></i></a></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="row tax-coupon-div">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="cart-total">
                                            <ul>
                                                <li class="cart-black">总价<span v-text="'￥' + totalPrice"></span></li>
                                            </ul>
                                            <div v-if="carts != null && carts.length > 0" class="cart-total-btn">
                                                <div class="cart-total-btn2 f-right">
                                                    <a href="order-preview.jsp?from=cart">去结算</a>
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
                        if (userInfo !== undefined && userInfo !== '' && userInfo != null) {
                            this.userInfo = JSON.parse(userInfo)
                        } else {
                            window.location.href = "login.jsp?relogin=y"
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
                                    if (view.carts != null) {
                                        view.carts.forEach(function (item, index) {
                                            item.proLogoImgFull = BASE_URL + MODULE_ADMIN + item.proLogoImg
                                            view.totalPrice += item.count * item.price
                                        })
                                    }
                                } else if (data.success === 'false' && data.msg === LOGIN_ERR_MSG) {
                                    window.location.href = 'login.jsp?relogin=y'
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
                                if (data.success === true) {
                                    for (var i = 0; i < view.carts.length; i++) {
                                        if (view.carts[i].proId === productId) {
                                            view.carts.splice(i, 1)
                                            break
                                        }
                                    }
                                } else if (data.success === 'false' && data.msg === LOGIN_ERR_MSG) {
                                    window.location.href = 'login.jsp?relogin=y'
                                }
                            }
                        )
                    }
                },
                watch: {
                    carts: {
                        handler(newValue, oldValue) {
                            view.totalPrice = 0
                            if (newValue != null) {
                                newValue.forEach(function (item, index) {
                                    view.totalPrice += item.count * item.price
                                })
                            }
                        },
                        deep: true
                    }
                },
            });
        </script>
		    <script src="assets/js/main3.js"></script>
        </body>
    </html>
