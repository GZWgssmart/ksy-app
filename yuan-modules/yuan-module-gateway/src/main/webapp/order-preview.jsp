﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                                        订单预览
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
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr v-for="product in products">
                                                            <td>
                                                                <a href="javascript:;"><img
                                                                        :src="product.proLogoImgFull"
                                                                        alt=""></a>
                                                            </td>
                                                            <td><a
                                                                    href="javascript:;" v-text="product.proName"></a></td>
                                                            <td><span v-text="'￥' + product.price"></span></td>
                                                            <td>
                                                                <span v-text="product.count"></span>
                                                            </td>
                                                            <td v-text="'￥' + (product.price * product.count)"></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="row tax-coupon-div">
                                    <div class="col-md-12 login-form" style="text-align: right;">
                                        账户余额：<span v-if="userInfo != null" v-text="userInfo.shopUserExts.balance"></span>&nbsp;&nbsp;
                                        总积分：<span v-if="userInfo != null" v-text="userInfo.shopUserExts.credits"></span><br/>
                                        订单最高可抵扣积分：<span v-text="totalCredits"></span><br/>
                                        <form>
                                        使用积分抵扣：<input v-model="useCredits" placeholder="请输入需要抵扣的积分数" type="text" style="width: 100px;">
                                        </form>
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="cart-total">
                                            <ul>
                                                <li class="cart-black">总价<span v-text="'￥' + totalPrice"></span></li>
                                            </ul>
                                            <div v-if="products.length > 0 && !submitted" class="cart-total-btn">
                                                <div class="cart-total-btn2 f-right">
                                                    <a href="javascript:;" @click="submitOrder">提交订单</a>
                                                </div>
                                            </div>
                                            <span v-text="errMsg" style="color: red;"></span>
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
            var productId = <%=request.getParameter("id")%>
            var quantity = <%=request.getParameter("quantity")%>
            var from = '<%=request.getParameter("from")%>'
            var view = new Vue({
                el: '#content',
                data: {
                    userInfo: {
                        shopUserExts: {}
                    },
                    products: [],
                    useCredits: 0,
                    totalPrice: 0,
                    totalCredits: 0,
                    oTotalPrice: 0,
                    jtype: 0,
                    submitted: false,
                    errMsg: ''
                },
                created: function() {

                },
                mounted: function() {
                    this.isLogin()
                    this.getProducts()
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
                    getProducts () {
                        if (from === 'cart') {
                            $.post(
                                CART_LIST_URL,
                                function (data) {
                                    if (data.success === true) {
                                        view.products = data.data
                                        view.products.forEach(function (item, index) {
                                            view.totalPrice += item.count * item.price
                                            view.totalCredits += item.consumeCredits
                                            item.proLogoImgFull = BASE_URL + MODULE_ADMIN + item.proLogoImg
                                        })
                                        view.jtype = 2
                                    } else if (data.success === 'false' && data.msg === LOGIN_ERR_MSG) {
                                        window.location.href = 'login.jsp?relogin=y'
                                    }
                                }
                            )
                        } else {
                            $.post(
                                PRODUCT_DETAIL_URL,
                                {
                                    id: productId
                                },
                                function (data) {
                                    if (data.success === true) {
                                        data.data.proLogoImgFull = BASE_URL + MODULE_ADMIN + data.data.proLogoImg
                                        data.data.count = quantity
                                        // 如果不是会员大礼包
                                        if (data.data.type !== '1') {
                                            if (view.userInfo != null) {
                                                data.data.price = data.data[USER_PRICE[view.userInfo.vipLevel]]
                                            } else {
                                                data.data.price = data.data.price1
                                            }
                                        } else {
                                            data.data.price = data.data.price1
                                        }
                                        if (data.data.type === '2') {
                                            view.totalCredits += parseInt(data.data.consumeCredits)
                                        }
                                        view.products.push(data.data)
                                        view.totalPrice += quantity * data.data.price
                                        view.oTotalPrice = view.totalPrice
                                        if (data.data.type === 1) {
                                            view.jtype = 1
                                        } else if (data.data.type === 3) {
                                            view.jtype = 13
                                        }
                                    } else if (data.success === 'false' && data.msg === LOGIN_ERR_MSG) {
                                        window.location.href = 'login.jsp?relogin=y'
                                    }
                                }
                            )
                        }
                    },
                    submitOrder () {
                        view.errMsg = ''
                        if (view.useCredits === '') {
                            view.useCredits = 0
                        }
                        $.ajax(
                            {
                                type: "POST",
                                url: ORDER_CREATE_URL,
                                contentType: "application/json; charset=utf-8",
                                data: JSON.stringify({
                                    userId: view.userInfo.id,
                                    price: -view.totalPrice,
                                    credits: view.useCredits,
                                    jtype: view.jtype,
                                    shopTradeDetails: view.products
                                }),
                                dataType: "json",
                                success: function (data) {
                                    if (data.success === true) {
                                        view.submitted = true
                                        view.errMsg = '提交订单成功'
                                        view.userInfo.shopUserExts.balance -= view.totalPrice
                                        view.userInfo.shopUserExts.credits -= view.useCredits
                                        window.localStorage.setItem(USER_INFO, view.userInfo)
                                    } else if (data.success === false) {
                                        view.errMsg = data.msg
                                    } else if (data.success === 'false' && data.msg === LOGIN_ERR_MSG) {
                                        window.location.href = 'login.jsp?relogin=y'
                                    }
                                },
                                error: function (data) {

                                }
                            }
                        )
                    },
                },
                watch: {
                    useCredits: {
                        handler(newValue, oldValue) {
                            var userCredits = parseInt(view.userInfo.shopUserExts.credits)
                            if (view.totalCredits <= userCredits) {
                                if (newValue > view.totalCredits || newValue > userCredits) {
                                    view.useCredits = view.totalCredits
                                }
                            } else {
                                if (newValue > view.totalCredits || newValue > userCredits) {
                                    view.useCredits = userCredits
                                }
                            }
                            if (newValue < 0) {
                                view.useCredits = 0
                            }
                            if (newValue === '-') {
                                view.useCredits = 0
                            }
                            view.totalPrice = view.oTotalPrice - view.useCredits
                        }
                    }
                }
            });
        </script>
		    <script src="assets/js/main3.js"></script>
        </body>
    </html>
