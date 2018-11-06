<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="en">
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Jerin - Minimal eCommerce HTML Template</title>
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

            <div class="content-wrap">
                <div class="content">
                    <%@include file="master/header.jsp"%>

                    <!-- login area end -->
                    <div class="shop-page-area ptb-100">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="blog-sidebar">
                                        <div class="single-sidebar">
                                            <h3 class="sidebar-title">Choose Price</h3>
                                            <div class="price-filter">
                                                <div id="slider-range"></div>
                                                <div class="price-slider-amount">
                                                    <input type="text" id="amount" name="price"  />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-sidebar">
                                            <h3 class="sidebar-title">Category</h3>
                                            <div class="sidebar-list">
                                                <ul>
                                                    <li><input type="checkbox"> <a href="#">Dresses (7)</a></li>
                                                    <li><input type="checkbox"> <a href="#">Accessories (9)</a></li>
                                                    <li><input type="checkbox"> <a href="#">Tops (3)</a></li>
                                                    <li><input type="checkbox"> <a href="#">Handbags (1)</a></li>
                                                    <li><input type="checkbox"> <a href="#">Watches (7)</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="single-sidebar">
                                            <h3 class="sidebar-title">Choose color</h3>
                                            <div class="sidebar-list">
                                                <ul>
                                                    <li><input type="checkbox"> <a href="#">red (8)</a></li>
                                                    <li><input type="checkbox"> <a href="#">green (5)</a></li>
                                                    <li><input type="checkbox"> <a href="#">blue (2)</a></li>
                                                    <li><input type="checkbox"> <a href="#">black (6)</a></li>
                                                    <li><input type="checkbox"> <a href="#">Pink (7)</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="single-sidebar">
                                            <h3 class="sidebar-title">Our Brand</h3>
                                            <div class="sidebar-list">
                                                <ul>
                                                    <li><input type="checkbox"> <a href="#">Nike (8)</a></li>
                                                    <li><input type="checkbox"> <a href="#">Religion (2)</a></li>
                                                    <li><input type="checkbox"> <a href="#">Diesel (5)</a></li>
                                                    <li><input type="checkbox"> <a href="#">Monki (8)</a></li>
                                                    <li><input type="checkbox"> <a href="#">Jerin (5)</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="single-sidebar">
                                            <h3 class="sidebar-title">Popular Tags</h3>
                                            <div class="tag">
                                                <ul>
                                                    <li><a href="#">Clothing</a></li>
                                                    <li><a href="#">accessories</a></li>
                                                    <li><a href="#">fashion</a></li>
                                                    <li><a href="#">footwear</a></li>
                                                    <li><a href="#">kid</a></li>
                                                    <li><a href="#">View All Tags</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <div class="blog-wrapper shop-page-mrg">
                                        <div class="tab-menu-product">
                                            <div class="tab-menu-sort">
                                                <div class="tab-menu">
                                                    <ul role="tablist">
                                                        <li class="active">
                                                            <a href="#grid" data-toggle="tab">
                                                                <i class="fa fa-th-large"></i>
                                                                Grid
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#list" data-toggle="tab">
                                                                <i class="fa fa-align-justify"></i>
                                                                List
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="tab-sort">
                                                    <label>Sort By : </label>
                                                    <select>
                                                        <option value="">Position</option>
                                                        <option value="">Popularity</option>
                                                        <option value="">Price</option>
                                                        <option value="">Average rating</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="tab-product">
                                                <div class="tab-content">
                                                    <div class="tab-pane active" id="grid"> 
                                                        <div class="row">
                                                            <div class="col-md-6 col-lg-4 col-sm-6">
                                                                <div class="single-shop mb-40">
                                                                    <div class="shop-img">
                                                                        <a href="#"><img src="assets/img/shop/electronics/3.jpg" alt="" /></a>
                                                                        <div class="shop-quick-view">
                                                                            <a href="#" data-toggle="modal" data-target="#quick-view" title="Quick View">
                                                                                <i class="pe-7s-look"></i>
                                                                            </a>
                                                                        </div>
                                                                        <div class="button-group">
                                                                            <a href="#" title="Add to Cart">
                                                                                <i class="pe-7s-cart"></i>
                                                                                add to cart
                                                                            </a>
                                                                            <a class="wishlist" href="#" title="Wishlist">
                                                                                <i class="pe-7s-like"></i>
                                                                                Wishlist
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="shop-text-all">
                                                                        <div class="title-color fix">
                                                                            <div class="shop-title f-left">
                                                                                <h3><a href="#">PC Headphone</a></h3>
                                                                            </div>
                                                                            <span class="price f-right">
                                                                                <span class="new">$120.00</span>
                                                                            </span>
                                                                        </div>
                                                                        <div class="fix">
                                                                            <span class="f-left">Fashion</span>
                                                                        </div>
                                                                    </div>									
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-lg-4 col-sm-6">
                                                                <div class="single-shop mb-40">
                                                                    <div class="shop-img">
                                                                        <a href="#"><img src="assets/img/shop/electronics/2.jpg" alt="" /></a>
                                                                        <div class="shop-quick-view">
                                                                            <a href="#" data-toggle="modal" data-target="#quick-view" title="Quick View">
                                                                                <i class="pe-7s-look"></i>
                                                                            </a>
                                                                        </div>
                                                                        <div class="price-up-down">
                                                                            <span class="sale-new">-30%</span>
                                                                        </div>
                                                                        <div class="button-group">
                                                                            <a href="#" title="Add to Cart">
                                                                                <i class="pe-7s-cart"></i>
                                                                                add to cart
                                                                            </a>
                                                                            <a class="wishlist" href="#" title="Wishlist">
                                                                                <i class="pe-7s-like"></i>
                                                                                Wishlist
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="shop-text-all">
                                                                        <div class="title-color fix">
                                                                            <div class="shop-title f-left">
                                                                                <h3><a href="#">Table Lamp</a></h3>
                                                                            </div>
                                                                            <span class="price f-right">
                                                                                <span class="new">$120.00</span>
                                                                            </span>
                                                                        </div>
                                                                        <div class="fix">
                                                                            <span class="f-left">Fashion</span>
                                                                        </div>
                                                                    </div>									
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-lg-4 col-sm-6">
                                                                <div class="single-shop mb-40">
                                                                    <div class="shop-img">
                                                                        <a href="#"><img src="assets/img/shop/electronics/1.jpg" alt="" /></a>
                                                                        <div class="shop-quick-view">
                                                                            <a href="#" data-toggle="modal" data-target="#quick-view" title="Quick View">
                                                                                <i class="pe-7s-look"></i>
                                                                            </a>
                                                                        </div>
                                                                        <div class="price-up-down">
                                                                            <span class="sale-new">new</span>
                                                                        </div>
                                                                        <div class="button-group">
                                                                            <a href="#" title="Add to Cart">
                                                                                <i class="pe-7s-cart"></i>
                                                                                add to cart
                                                                            </a>
                                                                            <a class="wishlist" href="#" title="Wishlist">
                                                                                <i class="pe-7s-like"></i>
                                                                                Wishlist
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="shop-text-all">
                                                                        <div class="title-color fix">
                                                                            <div class="shop-title f-left">
                                                                                <h3><a href="#">Table Fan</a></h3>
                                                                            </div>
                                                                            <span class="price f-right">
                                                                                <span class="new">$120.00</span>
                                                                            </span>
                                                                        </div>
                                                                        <div class="fix">
                                                                            <span class="f-left">Fashion</span>
                                                                        </div>
                                                                    </div>									
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-lg-4 col-sm-6">
                                                                <div class="single-shop mb-40">
                                                                    <div class="shop-img">
                                                                        <a href="#"><img src="assets/img/shop/electronics/9.jpg" alt="" /></a>
                                                                        <div class="shop-quick-view">
                                                                            <a href="#" data-toggle="modal" data-target="#quick-view" title="Quick View">
                                                                                <i class="pe-7s-look"></i>
                                                                            </a>
                                                                        </div>
                                                                        <div class="price-up-down">
                                                                            <span class="sale-new">-40%</span>
                                                                        </div>
                                                                        <div class="button-group">
                                                                            <a href="#" title="Add to Cart">
                                                                                <i class="pe-7s-cart"></i>
                                                                                add to cart
                                                                            </a>
                                                                            <a class="wishlist" href="#" title="Wishlist">
                                                                                <i class="pe-7s-like"></i>
                                                                                Wishlist
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="shop-text-all">
                                                                        <div class="title-color fix">
                                                                            <div class="shop-title f-left">
                                                                                <h3><a href="#">Air Conditionar</a></h3>
                                                                            </div>
                                                                            <span class="price f-right">
                                                                                <span class="new">$120.00</span>
                                                                            </span>
                                                                        </div>
                                                                        <div class="fix">
                                                                            <span class="f-left">Fashion</span>
                                                                        </div>
                                                                    </div>									
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-lg-4 col-sm-6">
                                                                <div class="single-shop mb-40">
                                                                    <div class="shop-img">
                                                                        <a href="#"><img src="assets/img/shop/electronics/1.jpg" alt="" /></a>
                                                                        <div class="shop-quick-view">
                                                                            <a href="#" data-toggle="modal" data-target="#quick-view" title="Quick View">
                                                                                <i class="pe-7s-look"></i>
                                                                            </a>
                                                                        </div>
                                                                        <div class="button-group">
                                                                            <a href="#" title="Add to Cart">
                                                                                <i class="pe-7s-cart"></i>
                                                                                add to cart
                                                                            </a>
                                                                            <a class="wishlist" href="#" title="Wishlist">
                                                                                <i class="pe-7s-like"></i>
                                                                                Wishlist
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="shop-text-all">
                                                                        <div class="title-color fix">
                                                                            <div class="shop-title f-left">
                                                                                <h3><a href="#">Soundbox</a></h3>
                                                                            </div>
                                                                            <span class="price f-right">
                                                                                <span class="new">$120.00</span>
                                                                            </span>
                                                                        </div>
                                                                        <div class="fix">
                                                                            <span class="f-left">Fashion</span>
                                                                        </div>
                                                                    </div>									
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-lg-4 col-sm-6">
                                                                <div class="single-shop mb-40">
                                                                    <div class="shop-img">
                                                                        <a href="#"><img src="assets/img/shop/electronics/2.jpg" alt="" /></a>
                                                                        <div class="shop-quick-view">
                                                                            <a href="#" data-toggle="modal" data-target="#quick-view" title="Quick View">
                                                                                <i class="pe-7s-look"></i>
                                                                            </a>
                                                                        </div>
                                                                        <div class="price-up-down">
                                                                            <span class="sale-new">sale</span>
                                                                        </div>
                                                                        <div class="button-group">
                                                                            <a href="#" title="Add to Cart">
                                                                                <i class="pe-7s-cart"></i>
                                                                                add to cart
                                                                            </a>
                                                                            <a class="wishlist" href="#" title="Wishlist">
                                                                                <i class="pe-7s-like"></i>
                                                                                Wishlist
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="shop-text-all">
                                                                        <div class="title-color fix">
                                                                            <div class="shop-title f-left">
                                                                                <h3><a href="#">Micro Woven</a></h3>
                                                                            </div>
                                                                            <span class="price f-right">
                                                                                <span class="new">$120.00</span>
                                                                            </span>
                                                                        </div>
                                                                        <div class="fix">
                                                                            <span class="f-left">Fashion</span>
                                                                        </div>
                                                                    </div>									
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-lg-4 col-sm-6">
                                                                <div class="single-shop mb-40">
                                                                    <div class="shop-img">
                                                                        <a href="#"><img src="assets/img/shop/electronics/3.jpg" alt="" /></a>
                                                                        <div class="shop-quick-view">
                                                                            <a href="#" data-toggle="modal" data-target="#quick-view" title="Quick View">
                                                                                <i class="pe-7s-look"></i>
                                                                            </a>
                                                                        </div>
                                                                        <div class="price-up-down">
                                                                            <span class="sale-new">-30%</span>
                                                                        </div>
                                                                        <div class="button-group">
                                                                            <a href="#" title="Add to Cart">
                                                                                <i class="pe-7s-cart"></i>
                                                                                add to cart
                                                                            </a>
                                                                            <a class="wishlist" href="#" title="Wishlist">
                                                                                <i class="pe-7s-like"></i>
                                                                                Wishlist
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="shop-text-all">
                                                                        <div class="title-color fix">
                                                                            <div class="shop-title f-left">
                                                                                <h3><a href="#">Air Cooler</a></h3>
                                                                            </div>
                                                                            <span class="price f-right">
                                                                                <span class="new">$120.00</span>
                                                                            </span>
                                                                        </div>
                                                                        <div class="fix">
                                                                            <span class="f-left">Fashion</span>
                                                                        </div>
                                                                    </div>									
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-lg-4 col-sm-6">
                                                                <div class="single-shop mb-40">
                                                                    <div class="shop-img">
                                                                        <a href="#"><img src="assets/img/shop/electronics/4.jpg" alt="" /></a>
                                                                        <div class="shop-quick-view">
                                                                            <a href="#" data-toggle="modal" data-target="#quick-view" title="Quick View">
                                                                                <i class="pe-7s-look"></i>
                                                                            </a>
                                                                        </div>
                                                                        <div class="price-up-down">
                                                                            <span class="sale-new">sale</span>
                                                                        </div>
                                                                        <div class="button-group">
                                                                            <a href="#" title="Add to Cart">
                                                                                <i class="pe-7s-cart"></i>
                                                                                add to cart
                                                                            </a>
                                                                            <a class="wishlist" href="#" title="Wishlist">
                                                                                <i class="pe-7s-like"></i>
                                                                                Wishlist
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="shop-text-all">
                                                                        <div class="title-color fix">
                                                                            <div class="shop-title f-left">
                                                                                <h3><a href="#">Washing machine</a></h3>
                                                                            </div>
                                                                            <span class="price f-right">
                                                                                <span class="new">$120.00</span>
                                                                            </span>
                                                                        </div>
                                                                        <div class="fix">
                                                                            <span class="f-left">Fashion</span>
                                                                        </div>
                                                                    </div>									
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-lg-4 col-sm-6">
                                                                <div class="single-shop mb-40">
                                                                    <div class="shop-img">
                                                                        <a href="#"><img src="assets/img/shop/electronics/5.jpg" alt="" /></a>
                                                                        <div class="shop-quick-view">
                                                                            <a href="#" data-toggle="modal" data-target="#quick-view" title="Quick View">
                                                                                <i class="pe-7s-look"></i>
                                                                            </a>
                                                                        </div>
                                                                        <div class="button-group">
                                                                            <a href="#" title="Add to Cart">
                                                                                <i class="pe-7s-cart"></i>
                                                                                add to cart
                                                                            </a>
                                                                            <a class="wishlist" href="#" title="Wishlist">
                                                                                <i class="pe-7s-like"></i>
                                                                                Wishlist
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="shop-text-all">
                                                                        <div class="title-color fix">
                                                                            <div class="shop-title f-left">
                                                                                <h3><a href="#">Wall Watch</a></h3>
                                                                            </div>
                                                                            <span class="price f-right">
                                                                                <span class="new">$120.00</span>
                                                                            </span>
                                                                        </div>
                                                                        <div class="fix">
                                                                            <span class="f-left">Fashion</span>
                                                                        </div>
                                                                    </div>									
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-lg-4 col-sm-6">
                                                                <div class="single-shop mb-40">
                                                                    <div class="shop-img">
                                                                        <a href="#"><img src="assets/img/shop/electronics/6.jpg" alt="" /></a>
                                                                        <div class="shop-quick-view">
                                                                            <a href="#" data-toggle="modal" data-target="#quick-view" title="Quick View">
                                                                                <i class="pe-7s-look"></i>
                                                                            </a>
                                                                        </div>
                                                                        <div class="button-group">
                                                                            <a href="#" title="Add to Cart">
                                                                                <i class="pe-7s-cart"></i>
                                                                                add to cart
                                                                            </a>
                                                                            <a class="wishlist" href="#" title="Wishlist">
                                                                                <i class="pe-7s-like"></i>
                                                                                Wishlist
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="shop-text-all">
                                                                        <div class="title-color fix">
                                                                            <div class="shop-title f-left">
                                                                                <h3><a href="#">IPS Box</a></h3>
                                                                            </div>
                                                                            <span class="price f-right">
                                                                                <span class="new">$120.00</span>
                                                                            </span>
                                                                        </div>
                                                                        <div class="fix">
                                                                            <span class="f-left">Fashion</span>
                                                                        </div>
                                                                    </div>									
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-lg-4 col-sm-6">
                                                                <div class="single-shop mb-40">
                                                                    <div class="shop-img">
                                                                        <a href="#"><img src="assets/img/shop/electronics/7.jpg" alt="" /></a>
                                                                        <div class="shop-quick-view">
                                                                            <a href="#" data-toggle="modal" data-target="#quick-view" title="Quick View">
                                                                                <i class="pe-7s-look"></i>
                                                                            </a>
                                                                        </div>
                                                                        <div class="button-group">
                                                                            <a href="#" title="Add to Cart">
                                                                                <i class="pe-7s-cart"></i>
                                                                                add to cart
                                                                            </a>
                                                                            <a class="wishlist" href="#" title="Wishlist">
                                                                                <i class="pe-7s-like"></i>
                                                                                Wishlist
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="shop-text-all">
                                                                        <div class="title-color fix">
                                                                            <div class="shop-title f-left">
                                                                                <h3><a href="#">Charger</a></h3>
                                                                            </div>
                                                                            <span class="price f-right">
                                                                                <span class="new">$120.00</span>
                                                                            </span>
                                                                        </div>
                                                                        <div class="fix">
                                                                            <span class="f-left">Fashion</span>
                                                                        </div>
                                                                    </div>									
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-lg-4 col-sm-6">
                                                                <div class="single-shop mb-40">
                                                                    <div class="shop-img">
                                                                        <a href="#"><img src="assets/img/shop/electronics/8.jpg" alt="" /></a>
                                                                        <div class="shop-quick-view">
                                                                            <a href="#" data-toggle="modal" data-target="#quick-view" title="Quick View">
                                                                                <i class="pe-7s-look"></i>
                                                                            </a>
                                                                        </div>
                                                                        <div class="button-group">
                                                                            <a href="#" title="Add to Cart">
                                                                                <i class="pe-7s-cart"></i>
                                                                                add to cart
                                                                            </a>
                                                                            <a class="wishlist" href="#" title="Wishlist">
                                                                                <i class="pe-7s-like"></i>
                                                                                Wishlist
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="shop-text-all">
                                                                        <div class="title-color fix">
                                                                            <div class="shop-title f-left">
                                                                                <h3><a href="#">Monitor</a></h3>
                                                                            </div>
                                                                            <span class="price f-right">
                                                                                <span class="new">$120.00</span>
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
                                                    <div class="tab-pane mb-10" id="list">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="row">
                                                                    <div class="single-shop mb-40">
                                                                        <div class="col-md-4 col-sm-4 col-xs-12">
                                                                            <div class="shop-list-left">
                                                                                <div class="shop-img">
                                                                                    <a href="#"><img src="assets/img/shop/electronics/8.jpg" alt="" /></a>
                                                                                    <div class="shop-quick-view">
                                                                                        <a href="#" data-toggle="modal" data-target="#quick-view" title="Quick View">
                                                                                            <i class="pe-7s-look"></i>
                                                                                        </a>
                                                                                    </div>
                                                                                    <div class="price-up-down">
                                                                                        <span class="sale-new">-30%</span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-8 col-sm-8 col-xs-12">
                                                                            <div class="shop-list-right">
                                                                                <div class="shop-list-all">
                                                                                    <div class="shop-list-name">
                                                                                        <h3><a href="#">Table Lamp</a></h3>
                                                                                    </div>
                                                                                    <div class="shop-list-rating">
                                                                                        <span class="ratting">
                                                                                            <i class="fa fa-star active"></i>
                                                                                            <i class="fa fa-star active"></i>
                                                                                            <i class="fa fa-star active"></i>
                                                                                            <i class="fa fa-star active"></i>
                                                                                            <i class="fa fa-star active"></i>
                                                                                        </span>
                                                                                    </div>
                                                                                    <p>Lorem ipsum dolor sit amet, adipiscing elit. Nam fringilla augue nec est auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, odio...</p>
                                                                                    <div class="shop-list-price">
                                                                                        <span class="list-price">
                                                                                            <span class="new">$120.00</span>
                                                                                            <span class="old">$110.00</span>
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="shop-list-cart">
                                                                                        <div class="shop-group">
                                                                                            <a href="#" title="Add to Cart">
                                                                                                <i class="pe-7s-cart"></i>
                                                                                            add to cart
                                                                                            </a>
                                                                                            <a class="wishlist" href="#" title="Wishlist">
                                                                                                <i class="pe-7s-like"></i>
                                                                                                Wishlist
                                                                                            </a>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>	
                                                                            </div>
                                                                        </div>					
                                                                    </div>
                                                                    <div class="single-shop mb-40">
                                                                        <div class="col-md-4 col-sm-4 col-xs-12">
                                                                            <div class="shop-list-left">
                                                                                <div class="shop-img">
                                                                                    <a href="#"><img src="assets/img/shop/electronics/9.jpg" alt="" /></a>
                                                                                    <div class="shop-quick-view">
                                                                                        <a href="#" data-toggle="modal" data-target="#quick-view" title="Quick View">
                                                                                            <i class="pe-7s-look"></i>
                                                                                        </a>
                                                                                    </div>
                                                                                    <div class="price-up-down">
                                                                                        <span class="sale-new">new</span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-8 col-sm-8 col-xs-12">
                                                                            <div class="shop-list-right">
                                                                                <div class="shop-list-all">
                                                                                    <div class="shop-list-name">
                                                                                        <h3><a href="#">Water heater</a></h3>
                                                                                    </div>
                                                                                    <div class="shop-list-rating">
                                                                                        <span class="ratting">
                                                                                            <i class="fa fa-star active"></i>
                                                                                            <i class="fa fa-star active"></i>
                                                                                            <i class="fa fa-star active"></i>
                                                                                            <i class="fa fa-star active"></i>
                                                                                            <i class="fa fa-star active"></i>
                                                                                        </span>
                                                                                    </div>
                                                                                    <p>Lorem ipsum dolor sit amet, adipiscing elit. Nam fringilla augue nec est auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, odio...</p>
                                                                                    <div class="shop-list-price">
                                                                                        <span class="list-price">
                                                                                            <span class="new">$160.00</span>
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="shop-list-cart">
                                                                                        <div class="shop-group">
                                                                                            <a href="#" title="Add to Cart">
                                                                                                <i class="pe-7s-cart"></i>
                                                                                            add to cart
                                                                                            </a>
                                                                                            <a class="wishlist" href="#" title="Wishlist">
                                                                                                <i class="pe-7s-like"></i>
                                                                                                Wishlist
                                                                                            </a>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>	
                                                                            </div>
                                                                        </div>					
                                                                    </div>
                                                                    <div class="single-shop mb-40">
                                                                        <div class="col-md-4 col-sm-4 col-xs-12">
                                                                            <div class="shop-list-left">
                                                                                <div class="shop-img">
                                                                                    <a href="#"><img src="assets/img/shop/electronics/1.jpg" alt="" /></a>
                                                                                    <div class="shop-quick-view">
                                                                                        <a href="#" data-toggle="modal" data-target="#quick-view" title="Quick View">
                                                                                            <i class="pe-7s-look"></i>
                                                                                        </a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-8 col-sm-8 col-xs-12">
                                                                            <div class="shop-list-right">
                                                                                <div class="shop-list-all">
                                                                                    <div class="shop-list-name">
                                                                                        <h3><a href="#">Pc Headphone</a></h3>
                                                                                    </div>
                                                                                    <div class="shop-list-rating">
                                                                                        <span class="ratting">
                                                                                            <i class="fa fa-star active"></i>
                                                                                            <i class="fa fa-star active"></i>
                                                                                            <i class="fa fa-star active"></i>
                                                                                            <i class="fa fa-star active"></i>
                                                                                            <i class="fa fa-star active"></i>
                                                                                        </span>
                                                                                    </div>
                                                                                    <p>Lorem ipsum dolor sit amet, adipiscing elit. Nam fringilla augue nec est auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, odio...</p>
                                                                                    <div class="shop-list-price">
                                                                                        <span class="list-price">
                                                                                            <span class="new">$170.00</span>
                                                                                            <span class="old">$190.00</span>
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="shop-list-cart">
                                                                                        <div class="shop-group">
                                                                                            <a href="#" title="Add to Cart">
                                                                                                <i class="pe-7s-cart"></i>
                                                                                            add to cart
                                                                                            </a>
                                                                                            <a class="wishlist" href="#" title="Wishlist">
                                                                                                <i class="pe-7s-like"></i>
                                                                                                Wishlist
                                                                                            </a>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>	
                                                                            </div>
                                                                        </div>					
                                                                    </div>
                                                                    <div class="single-shop mb-40">
                                                                        <div class="col-md-4 col-sm-4 col-xs-12">
                                                                            <div class="shop-list-left">
                                                                                <div class="shop-img">
                                                                                    <a href="#"><img src="assets/img/shop/electronics/2.jpg" alt="" /></a>
                                                                                    <div class="shop-quick-view">
                                                                                        <a href="#" data-toggle="modal" data-target="#quick-view" title="Quick View">
                                                                                            <i class="pe-7s-look"></i>
                                                                                        </a>
                                                                                    </div>
                                                                                    <div class="price-up-down">
                                                                                        <span class="sale-new">sale</span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-8 col-sm-8 col-xs-12">
                                                                            <div class="shop-list-right">
                                                                                <div class="shop-list-all">
                                                                                    <div class="shop-list-name">
                                                                                        <h3><a href="#">Man Watch</a></h3>
                                                                                    </div>
                                                                                    <div class="shop-list-rating">
                                                                                        <span class="ratting">
                                                                                            <i class="fa fa-star active"></i>
                                                                                            <i class="fa fa-star active"></i>
                                                                                            <i class="fa fa-star active"></i>
                                                                                            <i class="fa fa-star active"></i>
                                                                                            <i class="fa fa-star active"></i>
                                                                                        </span>
                                                                                    </div>
                                                                                    <p>Lorem ipsum dolor sit amet, adipiscing elit. Nam fringilla augue nec est auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, odio...</p>
                                                                                    <div class="shop-list-price">
                                                                                        <span class="list-price">
                                                                                            <span class="new">$150.00</span>
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="shop-list-cart">
                                                                                        <div class="shop-group">
                                                                                            <a href="#" title="Add to Cart">
                                                                                                <i class="pe-7s-cart"></i>
                                                                                            add to cart
                                                                                            </a>
                                                                                            <a class="wishlist" href="#" title="Wishlist">
                                                                                                <i class="pe-7s-like"></i>
                                                                                                Wishlist
                                                                                            </a>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>	
                                                                            </div>
                                                                        </div>					
                                                                    </div>
                                                                    <div class="single-shop mb-40">
                                                                        <div class="col-md-4 col-sm-4 col-xs-12">
                                                                            <div class="shop-list-left">
                                                                                <div class="shop-img">
                                                                                    <a href="#"><img src="assets/img/shop/electronics/3.jpg" alt="" /></a>
                                                                                    <div class="shop-quick-view">
                                                                                        <a href="#" data-toggle="modal" data-target="#quick-view" title="Quick View">
                                                                                            <i class="pe-7s-look"></i>
                                                                                        </a>
                                                                                    </div>
                                                                                    <div class="price-up-down">
                                                                                        <span class="sale-new">-30%</span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-8 col-sm-8 col-xs-12">
                                                                            <div class="shop-list-right">
                                                                                <div class="shop-list-all">
                                                                                    <div class="shop-list-name">
                                                                                        <h3><a href="#">Air Conditionar</a></h3>
                                                                                    </div>
                                                                                    <div class="shop-list-rating">
                                                                                        <span class="ratting">
                                                                                            <i class="fa fa-star active"></i>
                                                                                            <i class="fa fa-star active"></i>
                                                                                            <i class="fa fa-star active"></i>
                                                                                            <i class="fa fa-star active"></i>
                                                                                            <i class="fa fa-star active"></i>
                                                                                        </span>
                                                                                    </div>
                                                                                    <p>Lorem ipsum dolor sit amet, adipiscing elit. Nam fringilla augue nec est auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, odio...</p>
                                                                                    <div class="shop-list-price">
                                                                                        <span class="list-price">
                                                                                            <span class="new">$120.00</span>
                                                                                            <span class="old">$110.00</span>
                                                                                        </span>
                                                                                    </div>
                                                                                    <div class="shop-list-cart">
                                                                                        <div class="shop-group">
                                                                                            <a href="#" title="Add to Cart">
                                                                                                <i class="pe-7s-cart"></i>
                                                                                            add to cart
                                                                                            </a>
                                                                                            <a class="wishlist" href="#" title="Wishlist">
                                                                                                <i class="pe-7s-like"></i>
                                                                                                Wishlist
                                                                                            </a>
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
                                                    <div class="page-pagination text-center">
                                                        <ul>
                                                            <li><a class="active" href="#">1</a></li>
                                                            <li><a href="#">2</a></li>
                                                            <li><a href="#">3</a></li>
                                                            <li><a href="#">4</a></li>
                                                            <li><a href="#"><i class="fa fa-angle-double-right"></i></a></li>
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
                    <!-- quick view start -->
                    <div class="quick-view modal fade in" id="quick-view">
                        <div class="container">
                            <div class="row">
                                <div id="view-gallery">
                                    <div class="col-xs-12">
                                        <div class="d-table">
                                            <div class="d-tablecell">
                                                <div class="modal-dialog">
                                                    <div class="main-view modal-content">
                                                        <div class="modal-footer" data-dismiss="modal">
                                                            <span>x</span>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-xs-12 col-sm-5">
                                                                <div class="quick-image">
                                                                    <div class="single-quick-image tab-content text-center">
                                                                        <div class="tab-pane  fade in active" id="sin-pro-1">
                                                                            <img src="assets/img/shop/q1.jpg" alt="" />
                                                                        </div>
                                                                        <div class="tab-pane fade in" id="sin-pro-2">
                                                                            <img src="assets/img/shop/q2.jpg" alt="" />
                                                                        </div>
                                                                        <div class="tab-pane fade in" id="sin-pro-3">
                                                                            <img src="assets/img/shop/q3.jpg" alt="" />
                                                                        </div>
                                                                        <div class="tab-pane fade in" id="sin-pro-4">
                                                                            <img src="assets/img/shop/q4.jpg" alt="" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="quick-thumb">
                                                                        <div class="nav nav-tabs">
                                                                            <ul>
                                                                                <li><a data-toggle="tab" href="#sin-pro-1"> <img src="assets/img/shop/q1.jpg" alt="quick view" /> </a></li>
                                                                                <li><a data-toggle="tab" href="#sin-pro-2"> <img src="assets/img/shop/q2.jpg" alt="quick view" /> </a></li>
                                                                                <li><a data-toggle="tab" href="#sin-pro-3"> <img src="assets/img/shop/q3.jpg" alt="quick view" /> </a></li>
                                                                                <li><a data-toggle="tab" href="#sin-pro-4"> <img src="assets/img/shop/q4.jpg" alt="quick view" /> </a></li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>							
                                                            </div>
                                                            <div class="col-xs-12 col-sm-7">
                                                                <div class="quick-right">
                                                                    <div class="quick-right-text">
                                                                        <h3><strong>PC Headphone</strong></h3>
                                                                        <div class="rating">
                                                                            <i class="fa fa-star"></i>
                                                                            <i class="fa fa-star"></i>
                                                                            <i class="fa fa-star"></i>
                                                                            <i class="fa fa-star-half-o"></i>
                                                                            <i class="fa fa-star-o"></i>
                                                                        </div>
                                                                        <div class="amount">
                                                                            <h4>$65.00</h4>
                                                                        </div>
                                                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has beenin the stand ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrames bled it make a type specimen book.</p>
                                                                        <div class="row m-p-b">
                                                                            <div class="col-sm-12 col-md-6">
                                                                                <div class="por-dse responsive-strok clearfix">
                                                                                    <ul>
                                                                                        <li><span>Availability</span><strong>:</strong> In stock</li>
                                                                                        <li><span>Condition</span><strong>:</strong> New product</li>
                                                                                        <li><span>Category</span><strong>:</strong> <a href="#">Men</a> <a href="#">Fashion</a> <a href="#">Shirt</a></li>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-12 col-md-6">
                                                                                <div class="por-dse color">
                                                                                    <ul>
                                                                                        <li><span>color</span><strong>:</strong> <a href="#">Red</a> <a href="#">Green</a> <a href="#">Blue</a></li>
                                                                                        <li><span>size</span><strong>:</strong>  <a href="#">SL</a> <a href="#">SX</a> <a href="#">M</a> <a href="#">XL</a></li>
                                                                                        <li><span>tag</span><strong>:</strong> <a href="#">Men</a> <a href="#">Fashion</a> <a href="#">Shirt</a></li>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="dse-btn">
                                                                            <div class="row">
                                                                                <div class="col-sm-12 col-md-12">
                                                                                    <div class="por-dse clearfix">
                                                                                        <ul>
                                                                                            <li class="share-btn clearfix"><span>quantity</span>
                                                                                                <input class="input-text qty" name="qty" maxlength="12" value="1" title="Qty" type="text">
                                                                                            </li>
                                                                                            <li class="share-btn clearfix hidden-xs"><span>share</span>
                                                                                                <a href="#"><i class="fa fa-facebook"></i></a>
                                                                                                <a href="#"><i class="fa fa-twitter"></i></a>
                                                                                                <a href="#"><i class="fa fa-google-plus"></i></a>
                                                                                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                                                                                <a href="#"><i class="fa fa-instagram"></i></a>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-12 col-md-12">
                                                                                    <div class="por-dse add-to">
                                                                                        <a href="#">add to cart</a>
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
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- quick view end -->
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
		<script src="assets/js/main3.js"></script>
    </body>
</html>
