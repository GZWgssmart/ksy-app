﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="en">
    
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>康生缘-用户登录</title>
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



        <div class="canvas-wrapper">
            <%@include file="master/left-account.jsp"%>

            <div id="content" class="content-wrap">
                <div class="content">
                    <%@include file="master/header.jsp"%>

                    <!-- login area end -->
                    <div class="login-area ptb-100">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6 col-md-offset-3">
                                    <div class="login-content">
                                        <div class="login-title">
                                            <h4>用户登录</h4>
                                        </div>
                                        <div class="login-form">
                                            <form action="#">
                                                <input v-model="form.phone" placeholder="请输入手机号" type="text">
                                                <input v-model="form.pwd" placeholder="请输入密码" type="password">
                                                <span v-html="errMsg" style="color: red; font-size: 12px;"></span>
                                                <button class="login-btn" type="button" @click="login">登录</button>
                                                <div class="new-account">
                                                    <p>还没有账号？ <a href="register.jsp">注册新账号</a></p>
                                                </div>
                                            </form>
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
        <script src="https://cdn.bootcss.com/qs/6.5.2/qs.min.js"></script>
        <script>
            var view = new Vue({
                el: '#content',
                data: {
                    form: {
                        phone: '',
                        pwd: ''
                    },
                    errMsg: ''
                },
                created: function() {

                },
                mounted: function() {

                },
                methods: {
                    login () {
                        view.errMsg = ''
                        var errMsg = ''
                        if (!isPhone(view.form.phone)) {
                            errMsg += '请输入正确的手机号<br/>';
                        }
                        if (view.form.pwd.trim() === '') {
                            errMsg += '请输入密码<br/>';
                        }
                        if (errMsg === '') {
                            $.post(LOGIN_URL,
                                Qs.stringify(view.form),
                                function (data) {
                                    if (data.success === false) {
                                        view.errMsg = data.msg
                                    } else {
                                        window.location.href = 'user-center.jsp'
                                    }
                                })
                        } else {
                            view.errMsg = errMsg;
                        }
                    }
                }
            });
        </script>
		<script src="assets/js/main3.js"></script>
    </body>

</html>
