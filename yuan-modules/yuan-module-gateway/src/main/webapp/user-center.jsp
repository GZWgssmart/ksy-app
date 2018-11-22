<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="en">
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>康生缘-个人中心</title>
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
                            <div id="info" class="section-title mb-50">
                                <h2>
                                    我的资料
                                    <i class="pe-7s-user"></i>
                                </h2>
                                <div class="row">
                                    <div class="col-md-6 col-sm-12">
                                        <table class="table table-striped table-hover">
                                            <tr>
                                                <td>姓名：</td>
                                                <td><span v-text="user.account"></span></td>
                                            </tr>
                                            <tr>
                                                <td>手机号：</td>
                                                <td><span v-text="user.phone"></span></td>
                                            </tr>
                                            <tr>
                                                <td>地址：</td>
                                                <td><span v-text="user.address"></span></td>
                                            </tr>
                                            <tr>
                                                <td>等级：</td>
                                                <td><span v-text="user.userLevel"></span></td>
                                            </tr>
                                            <tr>
                                                <td>账户余额：</td>
                                                <td><span v-text="user.shopUserExts.balance"></span></td>
                                            </tr>
                                            <tr>
                                                <td>账户积分：</td>
                                                <td><span v-text="user.shopUserExts.credits"></span></td>
                                            </tr>
                                            <tr>
                                                <td>总健康值：</td>
                                                <td><span v-text="user.shopUserExts.bill"></span></td>
                                            </tr>
                                            <tr>
                                                <td>激活的健康值：</td>
                                                <td><span v-text="user.shopUserExts.activeBill"></span></td>
                                            </tr>
                                            <tr>
                                                <td>转让获得的健康值：</td>
                                                <td><span v-text="user.shopUserExts.tradeBill"></span></td>
                                            </tr>
                                            <tr>
                                                <td>推荐人手机号：</td>
                                                <td><span v-text="user.refPhone"></span></td>
                                            </tr>
                                        </table>
                                        <div style="color: red;">
                                            操作：
                                            <a href="javascript:;" @click="chgOperation(1)">修改个人资料</a>&nbsp;
                                            <a href="javascript:;" @click="chgOperation(2)">健康值提现</a>&nbsp;
                                            <a href="javascript:;" @click="chgOperation(3)">健康值转让</a>&nbsp;
                                            <a href="javascript:;" @click="chgOperation(4)">健康值捐赠</a>&nbsp;
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12 login-form">
                                        <form v-if="operation == 1">
                                            姓名<input v-model="account" placeholder="请输入姓名" type="text">
                                            地址<input v-model="address" placeholder="请输入详细地址，用于收货" type="text">
                                            <span v-html="errMsg" style="color: red; font-size: 12px;"></span>
                                            <button class="login-btn" type="button" @click="updateInfo">修改个人信息</button>
                                        </form>
                                        <form v-if="operation == 2">
                                            姓名<input v-model="account" placeholder="请输入姓名" type="text">
                                            <input v-model="address" placeholder="请输入详细地址，用于收货" type="text">
                                            <span v-html="errMsg" style="color: red; font-size: 12px;"></span>
                                            <button class="login-btn" type="button" @click="updateInfo">修改个人信息</button>
                                        </form>
                                        <form v-if="operation == 3">
                                            <input v-model="account" placeholder="请输入姓名" type="text">
                                            <input v-model="address" placeholder="请输入详细地址，用于收货" type="text">
                                            <span v-html="errMsg" style="color: red; font-size: 12px;"></span>
                                            <button class="login-btn" type="button" @click="updateInfo">修改个人信息</button>
                                        </form>
                                        <form v-if="operation == 4">
                                            姓名<input v-model="account" placeholder="请输入姓名" type="text">
                                            地址<input v-model="address" placeholder="请输入详细地址，用于收货" type="text">
                                            <span v-html="errMsg" style="color: red; font-size: 12px;"></span>
                                            <button class="login-btn" type="button" @click="updateInfo">修改个人信息</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div id="rights" class="section-title mb-50">
                                <h2>
                                    我的权益
                                    <i class="pe-7s-pin"></i>
                                </h2>
                            </div>
                            <div id="profit" class="section-title mb-50">
                                <h2>
                                    我的收益
                                    <i class="pe-7s-gift"></i>
                                </h2>
                                <div class="row">
                                    <div class="col-md-12">
                                        <table class="table table-striped table-hover">
                                            <thead>
                                            <tr>
                                                <th>收益类别</th>
                                                <th>收益金额</th>
                                                <th>操作</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr v-for="item in income">
                                                <td v-text="item.typeName"></td>
                                                <td v-text="item.income"></td>
                                                <td><a href="#">查看明细</a></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div id="team" class="section-title mb-50">
                                <h2>
                                    我的团队
                                    <i class="pe-7s-users"></i>
                                </h2>
                                <div class="row">
                                    <div class="col-md-6 col-sm-12">
                                        <table class="table table-striped table-hover">
                                            <caption>直推团队</caption>
                                            <thead>
                                            <tr>
                                                <th>姓名</th>
                                                <th>手机号</th>
                                                <th>等级</th>
                                                <th>昵称</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr v-for="item in directTeam">
                                                <td v-text="item.account"></td>
                                                <td v-text="item.phone"></td>
                                                <td v-text="item.userLevel"></td>
                                                <td v-text="item.nickname"></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="col-md-6 col-sm-12">
                                        <table class="table table-striped table-hover">
                                            <caption>间推团队</caption>
                                            <thead>
                                            <tr>
                                                <th>姓名</th>
                                                <th>手机号</th>
                                                <th>等级</th>
                                                <th>昵称</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr v-for="item in otherTeam">
                                                <td v-text="item.account"></td>
                                                <td v-text="item.phone"></td>
                                                <td v-text="item.userLevel"></td>
                                                <td v-text="item.nickname"></td>
                                            </tr>
                                            </tbody>
                                        </table>
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
                    user: {
                        shopUserExts: {}
                    },
                    operation: 0,
                    account: '',
                    address: '',
                    errMsg: '',
                    income: [],
                    directTeam: [],
                    otherTeam: []
                },
                created: function() {

                },
                mounted: function() {
                    this.isLogin()
                    this.getUser()
                    this.getIncome()
                    this.getTeam()
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
                    getUser () {
                        $.post(
                            USER_DETAIL_URL,
                            {
                                userId: this.userInfo.id
                            },
                            function (data) {
                                if (data.success === true) {
                                    view.user = data.data
                                    view.user.userLevel = view.user.vipLevel + '-' + USER_LEVELS[view.user.vipLevel]
                                    view.account = view.user.account
                                    view.address = view.user.address
                                } else {
                                    window.location.href = "login.jsp?relogin=y"
                                }
                            }
                        )
                    },
                    chgOperation (opt) {
                      view.operation = opt
                    },
                    updateInfo () {
                        var errMsg = ''
                        if (view.account.trim() === '') {
                            errMsg += '请输入姓名<br/>'
                        }
                        if (view.address.trim() === '') {
                            errMsg += '请输入收货地址<br/>'
                        }
                        if (errMsg !== '') {
                            view.errMsg = errMsg
                        } else {
                            view.errMsg = ''
                            $.post(
                                USER_UPDATE_URL,
                                {
                                    userId: view.user.id,
                                    account: view.account,
                                    address: view.address
                                },
                                function (data) {
                                    if (data.success === true) {
                                        this.getUser()
                                        view.errMsg = '更新成功'
                                    } else {
                                        view.errMsg = data.msg
                                    }
                                }
                            )
                        }
                    },
                    getIncome () {
                        $.post(
                            USER_INCOME_URL,
                            {
                                userId: this.userInfo.id
                            },
                            function (data) {
                                view.income = data.data
                                view.income.forEach(function (item, index) {
                                    item.typeName = INCOME[item.type - 1]
                                })
                            }
                        )
                    },
                    getTeam () {
                        $.post(
                            USER_TEAM_URL,
                            {
                                phone: this.userInfo.phone
                            },
                            function (data) {
                                if (data.success === true) {
                                    view.directTeam = data.data.zhitui
                                    view.otherTeam = data.data.jiantui
                                    view.directTeam.forEach(function (item, index) {
                                        item.userLevel = item.viplevel + '-' + USER_LEVELS[item.viplevel]
                                    })
                                    view.otherTeam.forEach(function (item, index) {
                                        item.userLevel = item.viplevel + '-' + USER_LEVELS[item.viplevel]
                                    })
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
