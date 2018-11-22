<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="en">
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>康生缘-商城</title>
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
        <link rel="stylesheet" href="assets/css/jquery-ui.css">
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

                    <div class="shop-page-area ptb-100">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="blog-sidebar">
                                        <div class="single-sidebar">
                                            <h3 class="sidebar-title">爆款热门</h3>
                                            <div class="single-shop mb-40">
                                                <div class="shop-img">
                                                    <a href="single-product.jsp"><img src="assets/img/shop/electronics/3.jpg" alt="" /></a>
                                                    <div class="shop-quick-view">
                                                        <a href="single-product.jsp">
                                                            <i class="pe-7s-look"></i>
                                                        </a>
                                                    </div>
                                                    <div class="button-group">
                                                        <a href="#" title="添加到购物车">
                                                            <i class="pe-7s-cart"></i>
                                                            添加到购物车
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="shop-text-all">
                                                    <div class="title-color fix">
                                                        <div class="shop-title f-left">
                                                            <h3><a href="single-product.jsp">PC Headphone</a></h3>
                                                        </div>
                                                        <span class="price f-right">
                                                                                <span class="new">￥120.00</span>
                                                                            </span>
                                                    </div>
                                                    <div class="fix">
                                                        <span class="f-left">Fashion</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <div class="blog-wrapper shop-page-mrg">
                                        <div class="tab-menu-product">
                                            <div class="tab-menu-sort">
                                                <div class="tab-sort">
                                                    <label>排序: </label>
                                                    <select style="width: 60px;">
                                                        <option value="1">综合</option>
                                                        <option value="2">价格</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="tab-product">
                                                <div class="tab-content">
                                                    <div class="tab-pane active" id="grid"> 
                                                        <div class="row">
                                                            <div v-if="products.length === 0" class="col-md-6 col-lg-4 col-sm-6">暂无商品</div>
                                                            <div v-else v-for="item in products" class="col-md-6 col-lg-4 col-sm-6">
                                                                <div class="single-shop mb-40">
                                                                    <div class="shop-img">
                                                                        <a :href="'single-product.jsp?id=' + item.id"><img :src="item.proLogoImg" alt="" /></a>
                                                                        <div class="shop-quick-view">
                                                                            <a :href="'single-product.jsp?id=' + item.id">
                                                                                <i class="pe-7s-look"></i>
                                                                            </a>
                                                                        </div>
                                                                        <div class="button-group">
                                                                            <a href="#" title="添加到购物车">
                                                                                <i class="pe-7s-cart"></i>
                                                                                添加到购物车
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="shop-text-all">
                                                                        <div class="title-color fix">
                                                                            <div class="shop-title f-left">
                                                                                <h3><a :href="'single-product.jsp?id=' + item.id" v-text="item.proName"></a></h3>
                                                                            </div>
                                                                            <span class="price f-right">
                                                                                <span class="new" v-text="'￥' + item.price1"></span>
                                                                            </span>
                                                                        </div>
                                                                        <div class="fix">
                                                                            <span class="f-left" v-text="item.introduction"></span>
                                                                        </div>
                                                                    </div>									
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="page-pagination text-center">
                                                        <ul>
                                                            <li><a href="javascript:;" @click="previousPage"><i class="fa fa-angle-double-left"></i></a></li>
                                                            <li v-for="page in pageNumbers">
                                                                <a href="javascript:;" :class="currentPage == page ? 'active' : ''" @click="goPage(page)" v-text="page"></a>
                                                            </li>
                                                            <li><a href="javascript:;" @click="nextPage"><i class="fa fa-angle-double-right"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- login area end -->
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
                    products: [],
                    totalPage: 0,
                    currentPage: 1,
                    pageNumbers: []
                },
                created: function() {

                },
                mounted: function() {
                    this.isLogin()
                    this.showProducts(true, 1)
                },
                methods: {
                    isLogin () {
                        var userInfo = window.localStorage.getItem(USER_INFO)
                        if (userInfo != undefined && userInfo !== '') {
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
                    showProducts (init, pageNo) {
                        var self = this
                        $.post(
                            PRODUCT_URL,
                            {
                                pageSize: 15,
                                currentPage: pageNo
                            },
                            function (data) {
                                if (data.success === true) {
                                    view.products = data.data.list
                                    view.totalPage = data.data.totalPage
                                    if (view.products.length > 0) {
                                        view.products.forEach(function(item, index) {
                                            item.proLogoImg = BASE_URL + MODULE_ADMIN + item.proLogoImg
                                        })
                                    }
                                    if (init) {
                                        self.initPageNumbers()
                                    }
                                }
                            }
                        )
                    },
                    initPageNumbers () {
                        if (view.totalPage <= 5) {
                            for (var i = 1; i <= view.totalPage; i++) {
                                view.pageNumbers.push(i)
                            }
                        } else {
                            view.pageNumbers = [1, 2, 3, 4, 5]
                        }
                    },
                    getPageNumbers () {
                        if (view.totalPage <= 5) {

                        } else {
                            if (view.currentPage >= 3 && (view.currentPage + 2) <= view.totalPage) {
                                view.pageNumbers = [view.currentPage - 2, view.currentPage - 1, view.currentPage, view.currentPage + 1, view.currentPage + 2]
                            } else if (view.currentPage + 1 === view.totalPage) {
                                view.pageNumbers = [view.currentPage - 3, view.currentPage - 2, view.currentPage - 1, view.currentPage, view.currentPage + 1]
                            }
                        }
                    },
                    previousPage () {
                        if (view.currentPage === 1) {
                            return
                        }
                        view.currentPage -= 1
                        this.getPageNumbers()
                        this.showProducts(false, view.currentPage)
                    },
                    nextPage () {
                        if (view.currentPage === view.totalPage) {
                            return
                        }
                        view.currentPage += 1
                        this.getPageNumbers()
                        this.showProducts(false, view.currentPage)
                    },
                    goPage (pageNo) {
                        view.currentPage = pageNo
                        this.getPageNumbers()
                        this.showProducts(false, view.currentPage)
                    }
                }
            });
        </script>
		<script src="assets/js/main3.js"></script>
    </body>
</html>
