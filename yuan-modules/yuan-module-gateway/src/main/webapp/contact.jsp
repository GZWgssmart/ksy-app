<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="en">
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>康生缘-联系我们</title>
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

            <div class="content-wrap">
                <div class="content">
                    <%@include file="master/header.jsp"%>

                    <div id="contact-area" class="contact-area ptb-100 gray-bg">
                        <div class="container">
                            <div class="section-title text-center mb-70">
                                <h2>GET IN TOUCH <i class="fa fa-phone"></i></h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel volutpat felis, eu condimentum massa. Pellentesque mollis eros vel mattis tempor.</p>
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
                                                            <h5>Phone</h5>
                                                            <span>+88 669 658 6586</span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="contact-icon">
                                                            <i class="fa fa-envelope-o"></i>
                                                        </div>
                                                        <div class="contact-address">
                                                            <h5>Email</h5>
                                                            <span><a href="#">themeglass@gmail.com</a></span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="contact-icon">
                                                            <i class="fa fa-map-marker"></i>
                                                        </div>
                                                        <div class="contact-address">
                                                            <h5>Our Location</h5>
                                                            <span>Location Name,here.US</span>
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
                                                                <input id="contact_name" name="name" placeholder="Name*" type="text">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="main-input mrg-eml mrg-contact mb-10">
                                                                <input id="contact_email" name="email" type="email" placeholder="Email*">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="text-leave2 mb-20">
                                                                <textarea name="message" id="contact_message" placeholder="Type Your Massage......."></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <button class="submit ripple-btn" type="submit" name="submit" id="contact_submit" data-complete-text="Well done!">Send Massage</button>
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
                        <div id="jerin"></div>
                    </div>
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
        <!-- google map api -->
        <script src="http://ditu.google.cn/maps/api/js?key=AIzaSyAlZPf84AAVt8_FFN7rwQY5nPgB02SlTKs"></script>
        <script src="assets/js/map.js"></script>
        <script src="assets/js/main.js"></script>
        <script src="assets/js/classie.js"></script>
		<script src="assets/js/main3.js"></script>
    </body>
</html>
