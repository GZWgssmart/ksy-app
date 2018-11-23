<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="en">
    
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>康生缘-在线商城首页</title>
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
</head>
<body>


    <div id="content" class="canvas-wrapper">
        <%@include file="master/left-account.jsp"%>
        
        <div class="content-wrap">
            <div class="content">
                <%@include file="master/header.jsp"%>
                <!-- slider start -->
                <section class="hero-slider-container">
                    <div class="hero-slider owl-carousel">
                        <div v-for="item in banners" class="hero-slider-item" :style="{backgroundImage:'url(' + item.coverImageUrl + ')'}">
                            <div class="hero-slider-contents">
                                <div class="container">
                                    <h1 class="title1" v-text="item.title"></h1>
                                    <p class="title2" v-text="item.summary"></p>
                                    <a :href="item.href" class="button-hover">查看</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <a href="#" class="hero-slider-nav prev"><i class="fa fa-angle-left"></i></a>
                    <a href="#" class="hero-slider-nav next"><i class="fa fa-angle-right"></i></a>
                </section>
                <!-- slider end -->

                <!-- shop area start -->
                <div class="portfolio-area pt-100 pb-70">
                    <div class="container">
                        <div class="section-title text-center mb-50">
                            <h2>会员大礼包<i class="fa fa-shopping-cart"></i></h2>
                        </div>		
                        <div class="row portfolio-style-2">
                            <div class="grid">
                                <div v-for="item in giftProducts" class="col-md-3 col-sm-6 col-xs-12 mb-30">
                                    <div class="single-shop">
                                        <div class="shop-img">
                                            <a :href="'single-product.jsp?id=' + item.id"><img :src="item.proLogoImgFull" alt="" /></a>
                                            <div class="shop-quick-view">
                                                <a :href="'single-product.jsp?id=' + item.id">
                                                    <i class="pe-7s-look"></i>
                                                </a>
                                            </div>
                                            <div class="price-up-down">
                                                <span class="sale-new">sale</span>
                                            </div>
                                        </div>
                                        <div class="shop-text-all">
                                            <div class="title-color fix">
                                                <div class="shop-title f-left">
                                                    <h3><a :href="'single-product.jsp?id=' + item.id" v-text="item.proName"></a></h3>
                                                </div>
                                                <span class="price f-right">
                                                    <span class="new" v-text="'￥' + item.price"></span>
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
                    </div>
                </div>
                <!-- shop area end -->
                <!-- blog area start -->
                <div class="blog-area gray-bg pt-100 pb-70">
                    <div class="container">
                        <div class="section-title text-center mb-50">
                            <h2>最新资讯<i class="fa fa-pencil"></i></h2>
                        </div>
                        <div class="row">
                            <div v-for="item in latestArticles" class="col-md-4 col-sm-6">
                                <div class="blog-details mb-30">
                                    <div class="blog-img">
                                        <a :href="'blog-details.jsp?id=' + item.id"><img :src="item.coverImageUrl" alt=""></a>
                                        <div class="blog-quick-view">
                                            <a :href="'blog-details.jsp?id=' + item.id">
                                                <i class="pe-7s-link"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="blog-meta">
                                        <h4><a :href="'blog-details.jsp?id=' + item.id" v-text="item.title"></a></h4>
                                        <ul class="meta">
                                            <li v-text="item.publisher"></li>
                                            <li v-text="item.createDate"></li>
                                            <li>{{item.viewCount}}次查看</li>
                                        </ul>
                                        <p v-text="item.summary"></p>
                                        <a :href="'blog-details.jsp?id=' + item.id">查看</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- blog area end -->
                <%@include file="master/footer.jsp"%>
            </div>
            <!-- content end -->
        </div>
        <!-- content-wrap end -->
    </div>
    <!-- all js here -->
    <script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
    <script src="assets/js/snap.svg-min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.meanmenu.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/isotope.pkgd.min.js"></script>
    <script src="assets/js/imagesloaded.pkgd.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/jquery.validate.min.js"></script>
    <script src="lib/js/jquery.nivo.slider.js"></script>
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
                banners: [],
                giftProducts: [],
                latestArticles: []
            },
            created: function() {

            },
            mounted: function() {
                this.isLogin()
                this.showBanners()
                this.showGiftProducts()
                this.showLatestArticles()
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
                showBanners () {
                    var self = this
                    $.post(
                        ARTICLE_URL,
                        {
                            pageSize: 10,
                            currentPage: 1,
                            columnId: '8a2a08425b7a0b7b015b7a2b0f060006'
                        },
                        function (data) {
                            if (data.success === true) {
                                view.banners = data.data.list
                                if (view.banners.length > 0) {
                                    view.banners.forEach(function(item, index) {
                                        item.coverImageUrl = BASE_URL + MODULE_ADMIN + item.coverImageUrl
                                    })
                                    self.showBannersJquery()
                                }
                            }
                        }
                    )
                },
                showBannersJquery () {
                    this.$nextTick(function() {
                        var $heroSlider = $('.hero-slider').owlCarousel({
                            animateIn: 'lightSpeedIn',
                            animateOut: 'lightSpeedOut',
                            autoplay: true,
                            autoplayTimeout: 5000,
                            dots: false,
                            loop: true,
                            mouseDrag: false,
                            nav: false,
                            responsive: {
                                0: {
                                    items: 1
                                }
                            }
                        });

                        $('.hero-slider-nav').on('click', function (e) {
                            e.preventDefault();

                            if ($(this).hasClass('prev')) {
                                $heroSlider.trigger('prev.owl.carousel');
                            } else {
                                $heroSlider.trigger('next.owl.carousel');
                            }
                        });
                    })
                },
                showGiftProducts () {
                    $.post(
                        PRODUCT_URL,
                        {
                            pageSize: 50,
                            currentPage: 1,
                            type: 1
                        },
                        function (data) {
                            if (data.success === true) {
                                view.giftProducts = data.data.list
                                if (view.giftProducts.length > 0) {
                                    view.giftProducts.forEach(function(item, index) {
                                        item.proLogoImgFull = BASE_URL + MODULE_ADMIN + item.proLogoImg
                                        item.price = item.price1
                                    })
                                }
                            }
                        }
                    )
                },
                showLatestArticles () {
                    $.post(
                        ARTICLE_URL,
                        {
                            pageSize: 3,
                            currentPage: 1,
                            columnId: '8a2a08425b7aa230015b7aa9a1ad0004'
                        },
                        function (data) {
                            if (data.success === true) {
                                view.latestArticles = data.data.list
                                if (view.latestArticles.length > 0) {
                                    view.latestArticles.forEach(function(item, index) {
                                        item.coverImageUrl = BASE_URL + MODULE_ADMIN + item.coverImageUrl
                                        item.createDate = timestampToDatetime(item.createDate)
                                    })
                                }
                            }
                        }
                    )
                }
            }
        });
    </script>

    <script src="assets/js/main3.js"></script>
</body>

</html>
