﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<!doctype html>
<html class="no-js" lang="en">
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>康生缘-联系我们</title>
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
        <style>
            #allmap {width: 100%;height: 400px;overflow: hidden;margin:0;font-family:"微软雅黑";}
        </style>
    </head>
    <body>



        <div id="content" class="canvas-wrapper">
            <%@include file="master/left-account.jsp"%>

            <div class="content-wrap">
                <div class="content">
                    <%@include file="master/header.jsp"%>

                    <div id="contact-area" class="contact-area ptb-100 gray-bg">
                        <div class="container">
                            <div class="section-title text-center mb-70">
                                <h2>联系我们 <i class="fa fa-phone"></i></h2>
                                <p>有任何疑问，请联系我们，我们将会为您提供周到的服务！您也可以直接在线提交疑问</p>
                            </div>
                            <div class="row">
                                <div class="col-md-12 col-lg-offset-2 col-lg-8 col-sm-12">
                                    <div class="row">
                                        <div class="col-md-5 col-lg-5 col-sm-5">
                                            <div class="contact-info-area">
                                                <ul>
                                                    <li>
                                                        <div class="contact-icon">
                                                            <i class="fa fa-phone"></i>
                                                        </div>
                                                        <div class="contact-address">
                                                            <h5>电话</h5>
                                                            <span>+88 669 658 6586</span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="contact-icon">
                                                            <i class="fa fa-envelope-o"></i>
                                                        </div>
                                                        <div class="contact-address">
                                                            <h5>邮箱</h5>
                                                            <span><a href="#">admin@163.com</a></span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="contact-icon">
                                                            <i class="fa fa-map-marker"></i>
                                                        </div>
                                                        <div class="contact-address">
                                                            <h5>地址</h5>
                                                            <span>广东省深圳市南山区</span>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-md-7 col-lg-7 col-sm-7">
                                            <div class="sent-message">
                                                <form class="contact_form" id="contact_form" action="contact-form.php" method="post">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="main-input mb-10">
                                                                <input id="contact_name" name="name" placeholder="您的称呼*" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="main-input mrg-eml mrg-contact mb-10">
                                                                <input id="contact_email" name="phone" type="tel" placeholder="您的手机号*">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="text-leave2 mb-20">
                                                                <textarea name="message" id="contact_message" placeholder="请输入您的疑问……"></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <button class="submit ripple-btn" type="submit" name="submit" id="contact_submit" data-complete-text="Well done!">发送</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="contact-area-all">
                        <div id="allmap"></div>
                    </div>
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
            var view = new Vue({
                el: '#content',
                data: {
                },
                created: function() {

                },
                mounted: function() {
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
                    }
                }
            });
        </script>
		<script src="<%=path%>/assets/js/main3.js"></script>
        <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ScHh49FPt46Vdc2M6bSmVDY9IWaKIS4D"></script>
        <script type="text/javascript">
            // 百度地图API功能
            var map = new BMap.Map("allmap");
            var point = new BMap.Point(113.97889,22.539377);
            map.centerAndZoom(point, 15);
            var marker = new BMap.Marker(point);  // 创建标注
            map.addOverlay(marker);               // 将标注添加到地图中
            marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
        </script>
    </body>
</html>