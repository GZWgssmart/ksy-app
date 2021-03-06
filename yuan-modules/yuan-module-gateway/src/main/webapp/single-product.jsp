﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="en">
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>康生缘-商品详情</title>
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

                    <!-- single product area start -->
                    <div class="single-product-area ptb-100">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-5">
                                    <div class="product-details-tab">
                                        <!-- Tab panes -->
                                        <div class="tab-content">
                                            <div v-if="product.proLogoImgFull != ''" class="tab-pane active" id="product0">
                                                <div class="large-img">
                                                    <img :src="product.proLogoImgFull" alt="" />
                                                </div>
                                            </div>
                                            <div v-if="product.picture1 != ''" class="tab-pane" id="product1">
                                                <div class="large-img">
                                                    <img :src="product.picture1" alt="" />
                                                </div>							
                                            </div>
                                            <div v-if="product.picture2 != ''" class="tab-pane" id="product2">
                                                <div class="large-img">
                                                    <img :src="product.picture2" alt="" />
                                                </div>							
                                            </div>
                                            <div v-if="product.picture3 != ''" class="tab-pane" id="product3">
                                                <div class="large-img">
                                                    <img :src="product.picture3" alt="" />
                                                </div>
                                            </div>
                                            <div v-if="product.picture4 != ''" class="tab-pane" id="product4">
                                                <div class="large-img">
                                                    <img :src="product.picture4" alt="" />
                                                </div>
                                            </div>
                                            <div v-if="product.picture5 != ''" class="tab-pane" id="product5">
                                                <div class="large-img">
                                                    <img :src="product.picture5" alt="" />
                                                </div>
                                            </div>
                                            <div v-if="product.proLogoImgFull != ''" class="tab-pane" id="product6">
                                                <div class="large-img">
                                                    <img :src="product.proLogoImgFull" alt="" />
                                                </div>
                                            </div>
                                            <div v-if="product.picture1 != ''" class="tab-pane" id="product7">
                                                <div class="large-img">
                                                    <img :src="product.picture1" alt="" />
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Nav tabs -->
                                        <div class="details-tab owl-carousel">
                                            <div class="active"><a href="#product0" data-toggle="tab"><img :src="product.proLogoImgFull" alt="" /></a></div>
                                            <div v-if="product.picture1 != ''"><a href="#product1" data-toggle="tab"><img :src="product.picture1" alt="" /></a></div>
                                            <div v-if="product.picture2 != ''"><a href="#product2" data-toggle="tab"><img :src="product.picture2" alt="" /></a></div>
                                            <div v-if="product.picture3 != ''"><a href="#product3" data-toggle="tab"><img :src="product.picture3" alt="" /></a></div>
                                            <div v-if="product.picture4 != ''"><a href="#product4" data-toggle="tab"><img :src="product.picture4" alt="" /></a></div>
                                            <div v-if="product.picture5 != ''"><a href="#product5" data-toggle="tab"><img :src="product.picture5" alt="" /></a></div>
                                            <div><a href="#product6" data-toggle="tab"><img :src="product.proLogoImgFull" alt="" /></a></div>
                                            <div v-if="product.picture1 != ''"><a href="#product7" data-toggle="tab"><img :src="product.picture1" alt="" /></a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7">
                                    <div class="single-product-content">
                                        <div class="single-product-dec pb-30  for-pro-border">
                                            <h2 v-text="product.proName"></h2>
                                            <!--
                                            <span class="ratting">
                                                <i class="fa fa-star active"></i>
                                                <i class="fa fa-star active"></i>
                                                <i class="fa fa-star active"></i>
                                                <i class="fa fa-star active"></i>
                                                <i class="fa fa-star active"></i>
                                            </span>
                                            -->
                                            <h3 v-text="'￥' + product.price"></h3>
                                            <p v-text="product.introduction"></p>
                                        </div>
                                        <div class="single-cart-color for-pro-border">
                                            <p>库存 : <span v-text="product.proCount"></span></p>
                                            <p>赠送积分 : <span v-text="product.incomeCredits"></span></p>
                                            <p>最高抵扣积分 : <span v-text="product.consumeCredits"></span></p>
                                            <div class="pro-quality">
                                                <p>购买数量:</p>
                                                <input type="number" v-model="quantity">
                                            </div>
                                            <div class="single-pro-cart"></div>
                                            <div v-if="product.type == '2'" class="single-pro-cart" style="display: inline;">
                                                <a href="javascript:;" @click="addCart" title="添加到购物车">
                                                    <i class="pe-7s-cart"></i>
                                                    添加到购物车
                                                </a>
                                            </div>
                                            <div class="single-pro-cart" style="display: inline;">
                                                <a href="javascript:;" @click="toBuy(product.id)" title="立即购买">
                                                    <i class="pe-7s-shopbag"></i>
                                                    立即购买
                                                </a>
                                            </div>
                                            <div style="margin-top: 18px;"><span v-text="cartMsg" style="color: red;"></span></div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- single product area end -->
                    <!-- single product area end -->
                    <div class="single-product-dec-area">
                        <div class="container">
                            <div class="single-product-dec-tab">
                                <ul role="tablist">
                                    <li class="active">
                                        <a href="#description" data-toggle="tab">
                                            商品描述
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="single-product-dec pb-100">
                                <div class="tab-content">
                                    <div v-html="product.detail" class="tab-pane active" id="description">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- single product area end -->
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
        <script src="assets/js/classie.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/vue@2.5.17/dist/vue.min.js"></script>
        <script src="assets/js/yuan.js"></script>
        <script>
            var productId = <%=request.getParameter("id")%>
            var view = new Vue({
                el: '#content',
                data: {
                    userInfo: {},
                    product: {},
                    quantity: 1,
                    cartMsg: ''
                },
                created: function() {

                },
                mounted: function() {
                    this.isLogin()
                    this.showProduct()
                },
                methods: {
                    isLogin () {
                        var userInfo = window.localStorage.getItem(USER_INFO)
                        if (userInfo !== undefined && userInfo !== '' && userInfo != null) {
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
                    showProduct () {
                        var self = this
                        $.post(
                            PRODUCT_DETAIL_URL,
                            {
                                id: productId
                            },
                            function (data) {
                                if (data.success === true) {
                                    view.product = data.data
                                    view.product.proLogoImgFull = BASE_URL + MODULE_ADMIN + view.product.proLogoImg
                                    // 如果不是会员大礼包
                                    if (view.product.type !== '1') {
                                        if (view.userInfo != null) {
                                            view.product.price = view.product[USER_PRICE[view.userInfo.vipLevel]]
                                        } else {
                                            view.product.price = view.product.price1
                                        }
                                    } else {
                                        view.product.price = view.product.price1
                                    }
                                    if (view.product.picture1 != '') {
                                        view.product.picture1 = BASE_URL + MODULE_ADMIN + view.product.picture1
                                    }
                                    if (view.product.picture2 != '') {
                                        view.product.picture2 = BASE_URL + MODULE_ADMIN + view.product.picture2
                                    }
                                    if (view.product.picture3 != '') {
                                        view.product.picture3 = BASE_URL + MODULE_ADMIN + view.product.picture3
                                    }
                                    if (view.product.picture4 != '') {
                                        view.product.picture4 = BASE_URL + MODULE_ADMIN + view.product.picture4
                                    }
                                    if (view.product.picture5 != '') {
                                        view.product.picture5 = BASE_URL + MODULE_ADMIN + view.product.picture5
                                    }
                                    self.showProductPics()
                                }
                            }
                        )
                    },
                    showProductPics () {
                        this.$nextTick(function() {
                            /* details-tab */
                            $('.details-tab').owlCarousel({
                                loop: true,
                                nav: true,
                                items: 4,
                                margin: 10,
                                navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
                                responsive: {
                                    0: {
                                        items: 3
                                    },
                                    768: {
                                        items: 4
                                    },
                                    1000: {
                                        items: 4
                                    }
                                }
                            })
                        })
                    },
                    addCart () {
                        $.post(
                            CART_ADD_URL,
                            {
                                proId: view.product.id,
                                count: view.quantity
                            },
                            function (data) {
                                if (data.success === true) {
                                    view.cartMsg = '已添加到购物车'
                                } else {
                                    view.cartMsg = '添加购物车失败，请稍候再试'
                                }
                            }
                        )
                    },
                    toBuy (id) {
                        window.location.href = 'order-preview.jsp?id=' + id + '&quantity=' + view.quantity
                    }
                }
            });
        </script>
        <script src="assets/js/main.js"></script>
		<script src="assets/js/main3.js"></script>
    </body>
</html>
