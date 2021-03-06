﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<!doctype html>
<html class="no-js" lang="en">
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>艾瑞堡-我的订单</title>
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
                                    我的订单
                                    <i class="pe-7s-shopbag"></i>
                                </h2>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="table-content table-responsive">
                                        <table>
                                                <thead>
                                                    <tr>
                                                        <th>订单编号</th>
                                                        <th>订单类型</th>
                                                        <th>下单时间</th>
                                                        <th>总价</th>
                                                        <th>积分</th>
                                                        <th>订单状态</th>
                                                        <th>操作</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr v-for="item in orders">
                                                        <td><span v-text="item.tradeNo"></span></td>
                                                        <td><span v-text="item.jtypeName"></span></td>
                                                        <td><span v-text="item.createDate"></span></td>
                                                        <td><span v-text="'￥' + item.price"></span></td>
                                                        <td><span v-text="item.credits"></span></td>
                                                        <td><span v-text="item.statusName"></span></td>
                                                        <td><a :href="'<%=path%>/order-detail?id=' + item.id">查看详情</a></td>
                                                    </tr>
                                                </tbody>
                                            </table>
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
                    <!-- shopping-cart-area end -->
                    <%@include file="master/footer.jsp"%>
                </div>
                <!-- content end -->
            </div>
            <!-- content-wrap end -->
        </div>
		
		

		<!-- all js here -->
        <!--[if lt IE 9]>
        <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
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
        <script src="<%=path%>/assets/js/vue.min.js"></script>
        <script src="<%=path%>/assets/js/yuan.js?v=1.1"></script>
        <script>
            var view = new Vue({
                el: '#content',
                data: {
                    orders: [],
                    totalPage: 0,
                    currentPage: 1,
                    pageNumbers: []
                },
                created: function() {

                },
                mounted: function() {
                    this.meanMenu()
                    this.showOrders(true, 1)
                },
                methods: {
                    logout: function () {
                        $.post(
                            LOGOUT_URL,
                            function(data) {
                                if (data.success === true) {
                                    window.location.href = '<%=path%>/index'
                                }
                            }
                        )
                    },
                    showOrders: function (init, pageNo) {
                        var self = this
                        $.post(
                            ORDER_URL,
                            {
                                userId: ${sessionScope.userInfo.id},
                                jtype: '1,2,13',
                                pageSize: 15,
                                currentPage: pageNo
                            },
                            function (data) {
                                if (data.success === true) {
                                    view.orders = data.data.list
                                    view.totalPage = data.data.totalPage
                                    if (view.orders.length > 0) {
                                        view.orders.forEach(function(item, index) {
                                            item.createDate = timestampToDatetime(item.createDate)
                                            item.jtypeName = ORDER_TYPES['' + item.jtype]
                                            item.statusName = ORDER_STATUS['' + item.status]
                                        })
                                    }
                                    if (init) {
                                        self.initPageNumbers()
                                    }
                                } else if (data.success === 'false' && data.msg === LOGIN_ERR_MSG) {
                                    window.location.href = '<%=path%>/login?relogin=y'
                                }
                            }
                        )
                    },
                    initPageNumbers: function () {
                        if (view.totalPage <= 5) {
                            for (var i = 1; i <= view.totalPage; i++) {
                                view.pageNumbers.push(i)
                            }
                        } else {
                            view.pageNumbers = [1, 2, 3, 4, 5]
                        }
                    },
                    getPageNumbers: function () {
                        if (view.totalPage <= 5) {

                        } else {
                            if (view.currentPage >= 3 && (view.currentPage + 2) <= view.totalPage) {
                                view.pageNumbers = [view.currentPage - 2, view.currentPage - 1, view.currentPage, view.currentPage + 1, view.currentPage + 2]
                            } else if (view.currentPage + 1 === view.totalPage) {
                                view.pageNumbers = [view.currentPage - 3, view.currentPage - 2, view.currentPage - 1, view.currentPage, view.currentPage + 1]
                            }
                        }
                    },
                    previousPage: function () {
                        if (view.currentPage === 1) {
                            return
                        }
                        view.currentPage -= 1
                        this.getPageNumbers()
                        this.showOrders(false, view.currentPage)
                    },
                    nextPage: function () {
                        if (view.currentPage === view.totalPage) {
                            return
                        }
                        view.currentPage += 1
                        this.getPageNumbers()
                        this.showOrders(false, view.currentPage)
                    },
                    goPage: function (pageNo) {
                        view.currentPage = pageNo
                        this.getPageNumbers()
                        this.showOrders(false, view.currentPage)
                    },
                    meanMenu: function () {
                        this.$nextTick(function() {
                            $('#my-mobile-menu').meanmenu()
                        })
                    }
                }
            });
        </script>
		<script src="<%=path%>/assets/js/main3.js"></script>
    </body>
</html>
