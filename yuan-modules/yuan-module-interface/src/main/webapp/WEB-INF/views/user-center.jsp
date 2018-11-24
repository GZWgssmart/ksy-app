<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<!doctype html>
<html class="no-js" lang="en">
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>康生缘-个人中心</title>
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
                            <div id="info" class="section-title text-center mb-50">
                                <h2>
                                    我的资料
                                    <i class="pe-7s-user"></i>
                                </h2>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-12">
                                    <div class="table-content table-responsive">
                                        <table>
                                            <thead>
                                            <tr>
                                                <th>项目</th>
                                                <th>值</th>
                                                <th>操作</th>
                                            </tr>
                                            </thead>
                                        <tr>
                                            <td>姓名</td>
                                            <td><span v-text="user.account"></span></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>手机号</td>
                                            <td><span v-text="user.phone"></span></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>收货地址</td>
                                            <td><span v-text="user.address"></span></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>等级</td>
                                            <td><span v-text="user.userLevel"></span></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>账户余额</td>
                                            <td><span v-text="user.shopUserExts.balance"></span></td>
                                            <td><a href="javascript:;" @click="toDonate">捐赠余额</a></td>
                                        </tr>
                                        <tr>
                                            <td>账户积分</td>
                                            <td><span v-text="user.shopUserExts.credits"></span></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>总健康链</td>
                                            <td><span v-text="user.shopUserExts.bill"></span></td>
                                            <td><a href="<%=path%>/bill-detail">查看健康链变动明细</a></td>
                                        </tr>
                                        <tr>
                                            <td>激活的健康链</td>
                                            <td><span v-text="user.shopUserExts.activeBill"></span></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>转让获得的健康链</td>
                                            <td><span v-text="user.shopUserExts.tradeBill"></span></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>推荐人手机号</td>
                                            <td><span v-text="user.refPhone"></span></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12 login-form">
                                    <div style="margin-bottom: 20px;">
                                        个人信息操作：
                                        <select style="width: 120px;" v-model="operation" @change="selectChange(1)">
                                            <option value="0">请选择操作</option>
                                            <option value="1">修改个人资料</option>
                                            <option value="2">修改登录密码</option>
                                            <option value="3">重置登录密码</option>
                                            <option value="4">修改交易密码</option>
                                            <option value="5">重置交易密码</option>
                                        </select>&nbsp;
                                        健康链操作：
                                        <select style="width: 120px;" v-model="operation1" @change="selectChange(2)">
                                            <option value="0">请选择操作</option>
                                            <option value="1">健康链提现</option>
                                            <option value="2">健康链转让</option>
                                            <option value="3">健康链捐赠</option>
                                            <option value="4">查看健康链变动明细</option>
                                        </select>
                                    </div>
                                    <form v-if="donateOpt == true">
                                        余额捐赠数量<input v-model="donateCount" placeholder="请输入余额捐赠数量" type="text">
                                        <span v-html="errMsg" style="color: red; font-size: 12px;"></span>
                                        <button class="login-btn" type="button" @click="donate">确认捐赠</button>
                                    </form>
                                    <form v-if="operation == '1'">
                                        姓名<input v-model="account" placeholder="请输入姓名" type="text">
                                        收货地址<input v-model="address" placeholder="请输入详细收货地址" type="text">
                                        <span v-html="errMsg" style="color: red; font-size: 12px;"></span>
                                        <button class="login-btn" type="button" @click="updateInfo">修改个人信息</button>
                                    </form>
                                    <form v-if="operation == '2'">
                                        原密码<input v-model="oldLoginPwd" placeholder="请输入原密码" type="password">
                                        新密码<input v-model="loginPwd" placeholder="请输入新密码" type="password">
                                        确认密码<input v-model="conLoginPwd" placeholder="请输入确认密码" type="password">
                                        <span v-html="errMsg" style="color: red; font-size: 12px;"></span>
                                        <button class="login-btn" type="button" @click="updateLoginPwd">修改登录密码</button>
                                    </form>
                                    <form v-if="operation == '3'">
                                        手机号<input v-model="phone" placeholder="请输入手机号，以重置登录密码" type="text">
                                        <span v-html="errMsg" style="color: red; font-size: 12px;"></span>
                                        <button class="login-btn" type="button" @click="resetLoginPwd">重置登录密码</button>
                                    </form>
                                    <form v-if="operation == '4'">
                                        原密码(首次修改，不需要填写原密码)<input v-model="oldPayPwd" placeholder="请输入原密码" type="password">
                                        新密码<input v-model="payPwd" placeholder="请输入新密码" type="password">
                                        确认密码<input v-model="conPayPwd" placeholder="请输入确认密码" type="password">
                                        <span v-html="errMsg" style="color: red; font-size: 12px;"></span>
                                        <button class="login-btn" type="button" @click="updatePayPwd">修改交易密码</button>
                                    </form>
                                    <form v-if="operation == '5'">
                                        手机号<input v-model="phone" placeholder="请输入手机号，以重置交易密码" type="text">
                                        <span v-html="errMsg" style="color: red; font-size: 12px;"></span>
                                        <button class="login-btn" type="button" @click="resetPayPwd">重置交易密码</button>
                                    </form>
                                    <form v-if="operation1 == '1'">
                                        健康链数量<input v-model="getLinkCount" placeholder="请输入提现的健康链数量，不能大于激活的健康链" type="text">
                                        <span v-html="errMsg" style="color: red; font-size: 12px;"></span>
                                        <button class="login-btn" type="button" @click="getLink">确定提现</button>
                                    </form>
                                    <form v-if="operation1 == '2'">
                                        手机号<input v-model="transLinkPhone" placeholder="请输入对方手机号" type="text">
                                        健康链数量<input v-model="transLinkCount" placeholder="请输入转让的健康链数量，不能大于激活的健康链" type="text">
                                        <span v-html="errMsg" style="color: red; font-size: 12px;"></span>
                                        <button class="login-btn" type="button" @click="transLink">确定转让</button>
                                    </form>
                                    <form v-if="operation1 == '3'">
                                        健康链数量<input v-model="donateLinkCount" placeholder="请输入捐赠的健康链数量，不能大于激活的健康链" type="text">
                                        <span v-html="errMsg" style="color: red; font-size: 12px;"></span>
                                        <button class="login-btn" type="button" @click="donateLink">确定捐赠</button>
                                    </form>
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
        <script src="https://cdn.jsdelivr.net/npm/vue@2.5.17/dist/vue.min.js"></script>
        <script src="<%=path%>/assets/js/yuan.js"></script>
        <script>
            var userId = ${sessionScope.userInfo.id}
            var view = new Vue({
                el: '#content',
                data: {
                    user: {
                        shopUserExts: {}
                    },
                    operation: '0',
                    operation1: '0',
                    donateOpt: false,
                    account: '',
                    address: '',
                    oldLoginPwd: '',
                    loginPwd: '',
                    conLoginPwd: '',
                    oldPayPwd: '',
                    payPwd: '',
                    conPayPwd: '',
                    phone: '',
                    getLinkCount: 0,
                    transLinkPhone: '',
                    transLinkCount: 0,
                    donateLinkCount: 0,
                    donateCount: 0,
                    errMsg: ''
                },
                created: function() {

                },
                mounted: function() {
                    this.operation = '${requestScope.operation}'
                    if (this.operation === '') {
                        this.operation = '0'
                    }
                    this.getUser()
                },
                methods: {

                    logout () {
                        $.post(
                            LOGOUT_URL,
                            function(data) {
                                if (data.success === true) {
                                    window.location.href = '<%=path%>/index'
                                }
                            }
                        )
                    },
                    getUser () {
                        $.post(
                            USER_DETAIL_URL,
                            {
                                userId: userId
                            },
                            function (data) {
                                if (data.success === true) {
                                    view.user = data.data
                                    view.user.userLevel = view.user.vipLevel + '-' + USER_LEVELS[view.user.vipLevel]
                                    view.account = view.user.account
                                    view.address = view.user.address
                                } else if (data.success === 'false' && data.msg === LOGIN_ERR_MSG) {
                                    window.location.href = '<%=path%>/login?relogin=y'
                                }
                            }
                        )
                    },
                    updateInfo () {
                        var self = this
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
                                        self.getUser()
                                        view.errMsg = '更新成功'
                                    } else if (data.success === false) {
                                        view.errMsg = data.msg
                                    } else if (data.success === 'false' && data.msg === LOGIN_ERR_MSG) {
                                        window.location.href = '<%=path%>/login?relogin=y'
                                    }
                                }
                            )
                        }
                    },
                    updateLoginPwd () {
                        var errMsg = ''
                        if (view.oldLoginPwd.trim() === '') {
                            errMsg += '请输入旧密码<br/>'
                        }
                        if (view.loginPwd.trim() === '') {
                            errMsg += '请输入新密码<br/>'
                        }
                        if (view.conLoginPwd.trim() === '') {
                            errMsg += '请输入确认密码<br/>'
                        }
                        if (view.loginPwd.trim() !== view.conLoginPwd.trim()) {
                            errMsg += '确认密码与新密码不一致<br/>'
                        }
                        if (errMsg !== '') {
                            view.errMsg = errMsg
                        } else {
                            view.errMsg = ''
                            $.post(
                                UPDATE_LOGIN_PWD_URL,
                                {
                                    userId: userId,
                                    oldPwd: view.oldLoginPwd,
                                    pwd: view.loginPwd
                                },
                                function (data) {
                                    if (data.success === true) {
                                        view.errMsg = '登录密码修改成功'
                                    } else if (data.success === false) {
                                        view.errMsg = data.msg
                                    } else if (data.success === 'false' && data.msg === LOGIN_ERR_MSG) {
                                        window.location.href = '<%=path%>/login?relogin=y'
                                    }
                                }
                            )
                        }
                    },
                    resetLoginPwd () {
                        var errMsg = ''
                        if (view.phone.trim() === '') {
                            errMsg += '请输入手机号， 以重置密码<br/>'
                        }
                        if (errMsg !== '') {
                            view.errMsg = errMsg
                        } else {
                            view.errMsg = ''
                            $.post(
                                RESET_LOGIN_PWD_URL,
                                {
                                    phone: view.phone
                                },
                                function (data) {
                                    if (data.success === true) {
                                        view.errMsg = '重置登录密码成功，请关注手机短信'
                                    } else if (data.success === false) {
                                        view.errMsg = data.msg
                                    } else if (data.success === 'false' && data.msg === LOGIN_ERR_MSG) {
                                        window.location.href = '<%=path%>/login?relogin=y'
                                    }
                                }
                            )
                        }
                    },
                    updatePayPwd () {
                        var errMsg = ''
                        if (view.payPwd.trim() === '') {
                            errMsg += '请输入新密码<br/>'
                        }
                        if (view.conPayPwd.trim() === '') {
                            errMsg += '请输入确认密码<br/>'
                        }
                        if (view.payPwd.trim() !== view.conPayPwd.trim()) {
                            errMsg += '确认密码与新密码不一致<br/>'
                        }
                        if (errMsg !== '') {
                            view.errMsg = errMsg
                        } else {
                            view.errMsg = ''
                            $.post(
                                UPDATE_PAY_PWD_URL,
                                {
                                    userId: userId,
                                    oldPwd: view.oldPayPwd,
                                    pwd: view.payPwd
                                },
                                function (data) {
                                    if (data.success === true) {
                                        view.errMsg = '交易密码修改成功'
                                    } else if (data.success === false) {
                                        view.errMsg = data.msg
                                    } else if (data.success === 'false' && data.msg === LOGIN_ERR_MSG) {
                                        window.location.href = '<%=path%>/login?relogin=y'
                                    }
                                }
                            )
                        }
                    },
                    resetPayPwd () {
                        var errMsg = ''
                        if (view.phone.trim() === '') {
                            errMsg += '请输入手机号， 以重置密码<br/>'
                        }
                        if (errMsg !== '') {
                            view.errMsg = errMsg
                        } else {
                            view.errMsg = ''
                            $.post(
                                RESET_PAY_PWD_URL,
                                {
                                    phone: view.phone
                                },
                                function (data) {
                                    if (data.success === true) {
                                        view.errMsg = '重置交易密码成功，请关注手机短信'
                                    } else if (data.success === false) {
                                        view.errMsg = data.msg
                                    } else if (data.success === 'false' && data.msg === LOGIN_ERR_MSG) {
                                        window.location.href = '<%=path%>/login?relogin=y'
                                    }
                                }
                            )
                        }
                    },
                    getLink () {
                        var errMsg = ''
                        if (isNaN(view.getLinkCount) || view.getLinkCount <= 0 || view.getLinkCount > view.user.shopUserExts.activeBill) {
                            errMsg += '请输入不大于激活的健康链的正整数数值<br/>'
                        }
                        if (errMsg != '') {
                            view.errMsg = errMsg
                        } else {
                            view.errMsg = ''
                            var self = this
                            $.post(
                                SHOPBILL_TRAN,
                                {
                                    userId: userId,
                                    count: view.getLinkCount,
                                    type: 1
                                },
                                function (data) {
                                    if (data.success === true) {
                                        view.errMsg = '提现成功'
                                        self.getUser()
                                    } else if (data.success === false) {
                                        view.errMsg = data.msg
                                    } else if (data.success === 'false' && data.msg === LOGIN_ERR_MSG) {
                                        window.location.href = '<%=path%>/login?relogin=y'
                                    }
                                }
                            )
                        }
                    },
                    transLink () {
                        var errMsg = ''
                        if (!isPhone(view.transLinkPhone.trim())) {
                            errMsg += '请输入正确的手机号<br/>'
                        }
                        if (isNaN(view.transLinkCount) || view.transLinkCount <= 0 || view.transLinkCount > view.user.shopUserExts.activeBill) {
                            errMsg += '请输入不大于激活的健康链的正整数数值<br/>'
                        }
                        if (errMsg != '') {
                            view.errMsg = errMsg
                        } else {
                            view.errMsg = ''
                            var self = this
                            $.post(
                                SHOPBILL_TRAN,
                                {
                                    userId: userId,
                                    count: view.transLinkCount,
                                    tradePhone: view.transLinkPhone,
                                    type: 2
                                },
                                function (data) {
                                    if (data.success === true) {
                                        view.errMsg = '转让成功'
                                        self.getUser()
                                    } else if (data.success === false) {
                                        view.errMsg = data.msg
                                    } else if (data.success === 'false' && data.msg === LOGIN_ERR_MSG) {
                                        window.location.href = '<%=path%>/login?relogin=y'
                                    }
                                }
                            )
                        }
                    },
                    donateLink () {
                        var errMsg = ''
                        if (isNaN(view.donateLinkCount) || view.donateLinkCount <= 0 || view.donateLinkCount > view.user.shopUserExts.activeBill) {
                            errMsg += '请输入不大于激活的健康链的正整数数值<br/>'
                        }
                        if (errMsg != '') {
                            view.errMsg = errMsg
                        } else {
                            view.errMsg = ''
                            var self = this
                            $.post(
                                SHOPBILL_TRAN,
                                {
                                    userId: userId,
                                    count: view.donateLinkCount,
                                    type: 3
                                },
                                function (data) {
                                    if (data.success === true) {
                                        view.errMsg = '捐赠成功'
                                        self.getUser()
                                    } else if (data.success === false) {
                                        view.errMsg = data.msg
                                    } else if (data.success === 'false' && data.msg === LOGIN_ERR_MSG) {
                                        window.location.href = '<%=path%>/login?relogin=y'
                                    }
                                }
                            )
                        }
                    },
                    selectChange (opt) {
                        view.errMsg = ''
                        view.donateOpt = false
                        if (opt === 2 && view.operation1 === '4') {
                            window.location.href = '<%=path%>/bill-detail'
                        }
                        if (opt === 1) {
                            view.operation1 = 0
                        } else if (opt === 2) {
                            view.operation = 0
                        }
                    },
                    toDonate () {
                        view.donateOpt = true
                        view.operation = 0
                        view.operation1 = 0
                    },
                    donate () {
                        var errMsg = ''
                        if (isNaN(view.donateCount) || view.donateCount <= 0 || view.donateCount > view.user.shopUserExts.balance) {
                            errMsg += '请输入不大于账户余额的正整数数值<br/>'
                        }
                        if (errMsg !== '') {
                            view.errMsg = errMsg
                        } else {
                            view.errMsg = ''
                            var self = this
                            $.ajax(
                                {
                                    type: "POST",
                                    url: ORDER_CREATE_URL,
                                    contentType: "application/json; charset=utf-8",
                                    data: JSON.stringify({
                                        userId: userId,
                                        price: -view.donateCount,
                                        jtype: 8
                                    }),
                                    dataType: "json",
                                    success: function (data) {
                                        if (data.success === true) {
                                            view.errMsg = '捐赠余额成功'
                                            self.getUser()
                                        } else if (data.success === false) {
                                            view.errMsg = data.msg
                                        } else if (data.success === 'false' && data.msg === LOGIN_ERR_MSG) {
                                            window.location.href = '<%=path%>/login?relogin=y'
                                        }
                                    },
                                    error: function (data) {

                                    }
                                }
                            )
                        }
                    }
                }
            });
        </script>
		<script src="<%=path%>/assets/js/main3.js"></script>
    </body>
</html>
