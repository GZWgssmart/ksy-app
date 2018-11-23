<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="en">
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>康生缘-个人健康链明细</title>
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
                            <div id="profit" class="section-title text-center mb-50">
                                <h2>
                                    健康链变动明细
                                    <i class="pe-7s-gift"></i>
                                </h2>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table table-striped table-hover">
                                        <thead>
                                        <tr>
                                            <th>交易类型</th>
                                            <th>健康链数量</th>
                                            <th>对方手机号</th>
                                            <th>交易状态</th>
                                            <th>交易时间</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr v-for="item in bills">
                                            <td v-text="item.typeName"></td>
                                            <td v-text="item.count"></td>
                                            <td v-text="item.tradePhone"></td>
                                            <td v-text="item.tradeStatusName"></td>
                                            <td v-text="item.createDate"></td>
                                        </tr>
                                        </tbody>
                                    </table>
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
                    bills: [
                        {
                            typeName: 'aa',
                            income: 100
                        }
                    ],
                    totalPage: 0,
                    currentPage: 1,
                    pageNumbers: []
                },
                created: function() {

                },
                mounted: function() {
                    this.isLogin()
                    this.showBills(true, 1)
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
                    showBills (init, pageNo) {
                        var self = this
                        $.post(
                            SHOPBILL_URL,
                            {
                                userId: this.userInfo.id,
                                pageSize: 15,
                                currentPage: pageNo
                            },
                            function (data) {
                                if (data.success === true) {
                                    view.bills = data.data.list
                                    view.totalPage = data.data.totalPage
                                    if (view.bills.length > 0) {
                                        view.bills.forEach(function(item, index) {
                                            item.createDate = timestampToDatetime(item.createDate)
                                            item.typeName = BILL_TYPES[item.type - 1]
                                            item.tradeStatusName = BILL_STATUS[item.tradeStatus - 1]
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
                        this.showBills(false, view.currentPage)
                    },
                    nextPage () {
                        if (view.currentPage === view.totalPage) {
                            return
                        }
                        view.currentPage += 1
                        this.getPageNumbers()
                        this.showBills(false, view.currentPage)
                    },
                    goPage (pageNo) {
                        view.currentPage = pageNo
                        this.getPageNumbers()
                        this.showBills(false, view.currentPage)
                    }
                }
            });
        </script>
		<script src="assets/js/main3.js"></script>
    </body>
</html>
