<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>康生缘-爱心公益详情</title>
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



<div class="canvas-wrapper">
    <%@include file="master/left-account.jsp"%>

    <div id="content" class="content-wrap">
        <div class="content">
            <%@include file="master/header.jsp"%>

            <!-- blog sidebar area start -->
            <div class="blog-sidebar-area ptb-100">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-lg-9">
                            <div class="blog-wrapper">
                                <div class="single-blog">

                                    <div class="blog-details-text mt-30">
                                        <h3 v-text="article.title"></h3>
                                        <div class="post-info">
                                            <ul>
                                                <li>
                                                    <i class="fa fa-user"></i>
                                                    <span v-text="article.publisher"></span>
                                                </li>
                                                <li>
                                                    <i class="fa fa-calendar"></i>
                                                    <span v-text="article.createDate"></span>
                                                </li>
                                            </ul>
                                        </div>
                                        <a href="#"><img :src="article.coverImageUrl" alt=""></a>
                                        <div v-html="article.content"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-3">
                            <div class="blog-sidebar mrg-for-sm-top">
                                <div class="single-sidebar">
                                    <h3 class="sidebar-title">最新资讯</h3>
                                    <div class="recent-all">
                                        <div v-if="latestArticles.length === 0">暂无最新资讯</div>
                                        <div v-else v-for="item in latestArticles" class="recent-img-text mb-20">
                                            <div class="recent-img">
                                                <a :href="'heart-detail.jsp?id=' + item.id"><img :src="item.coverImageUrl" alt=""></a>
                                            </div>
                                            <div class="recent-text">
                                                <h4>
                                                    <a :href="'heart-detail.jsp?id=' + item.id" v-text="item.title"></a>
                                                </h4>
                                                <div class="post-info">
                                                    <ul>
                                                        <li>
                                                            <i class="fa fa-calendar"></i>
                                                            <span v-text="item.createDate"></span>
                                                        </li>
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
            </div>
            <!-- blog sidebar area end -->
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
    var articleId = '<%=request.getParameter("id")%>'
    var view = new Vue({
        el: '#content',
        data: {
            article: {},
            latestArticles: []
        },
        created: function() {

        },
        mounted: function() {
            this.showArticle()
            this.showLatestArticles()
        },
        methods: {
            showArticle () {
                $.post(
                    ARTICLE_DETAIL_URL,
                    {
                        articleId: articleId
                    },
                    function (data) {
                        if (data.success === true) {
                            view.article = data.data
                            view.article.coverImageUrl = BASE_URL + MODULE_ADMIN + view.article.coverImageUrl
                            view.article.createDate = timestampToDatetime(view.article.createDate)
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
                        columnId: '2c92d39667356dfc016735f691700000'
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
