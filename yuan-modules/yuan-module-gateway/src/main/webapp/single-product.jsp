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

                    <!-- single product area start -->
                    <div class="single-product-area ptb-100">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-5">
                                    <div class="product-details-tab">
                                        <!-- Tab panes -->
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="product1">
                                                <div class="large-img">
                                                    <img src="assets/img/shop/electronics/4.jpg" alt="" />
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="product2">
                                                <div class="large-img">
                                                    <img src="assets/img/shop/electronics/1.jpg" alt="" />
                                                </div>							
                                            </div>
                                            <div class="tab-pane" id="product3">
                                                <div class="large-img">
                                                    <img src="assets/img/shop/electronics/2.jpg" alt="" />
                                                </div>							
                                            </div>
                                            <div class="tab-pane" id="product4">
                                                <div class="large-img">
                                                    <img src="assets/img/shop/electronics/3.jpg" alt="" />
                                                </div>							
                                            </div>
                                            <div class="tab-pane" id="product5">
                                                <div class="large-img">
                                                    <img src="assets/img/shop/electronics/4.jpg" alt="" />
                                                </div>							
                                            </div>
                                            <div class="tab-pane" id="product6">
                                                <div class="large-img">
                                                    <img src="assets/img/shop/electronics/1.jpg" alt="" />
                                                </div>							
                                            </div>
                                        </div>
                                        <!-- Nav tabs -->
                                        <div class="details-tab owl-carousel">
                                            <div class="active"><a href="#product1" data-toggle="tab"><img src="assets/img/shop/electronics/4.jpg" alt="" /></a></div>
                                            <div><a href="#product2" data-toggle="tab"><img src="assets/img/shop/electronics/1.jpg" alt="" /></a></div>
                                            <div><a href="#product3" data-toggle="tab"><img src="assets/img/shop/electronics/2.jpg" alt="" /></a></div>
                                            <div><a href="#product4" data-toggle="tab"><img src="assets/img/shop/electronics/3.jpg" alt="" /></a></div>
                                            <div><a href="#product5" data-toggle="tab"><img src="assets/img/shop/electronics/4.jpg" alt="" /></a></div>
                                            <div><a href="#product6" data-toggle="tab"><img src="assets/img/shop/electronics/1.jpg" alt="" /></a></div>
                                        </div>	
                                    </div>
                                </div>
                                <div class="col-md-7">
                                    <div class="single-product-content">
                                        <div class="single-product-dec pb-30  for-pro-border">
                                            <h2>Pc headphone</h2>
                                            <span class="ratting">
                                                <i class="fa fa-star active"></i>
                                                <i class="fa fa-star active"></i>
                                                <i class="fa fa-star active"></i>
                                                <i class="fa fa-star active"></i>
                                                <i class="fa fa-star active"></i>
                                            </span>
                                            <h3>$200</h3>
                                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes Cum sociis natoque penatibus et magnis dis parturient montes consectetuer adipiscing.</p>
                                        </div>
                                        <div class="single-cart-color for-pro-border">
                                            <p>availability : <span>in stock</span></p>
                                            <div class="model">
                                                <p>model : <span>nms005</span></p>
                                            </div>
                                            <div class="pro-quality">
                                                <p>Quantity:</p>
                                                <input value="1" type="number">
                                            </div>
                                            <div class="single-pro-cart">
                                                <a href="#" title="Add to Cart">
                                                    <i class="pe-7s-cart"></i>
                                                    add to cart
                                                </a>
                                                <a href="#" title="wishlist">
                                                    <i class="pe-7s-like"></i>
                                                    wishlist
                                                </a>
                                            </div>
                                        </div>
                                        <div class="pro-category-tag ptb-30 for-pro-border">
                                            <div class="pro-category">
                                                <p>categories :</p>
                                                <ul>
                                                    <li><a href="#">fashion</a></li>
                                                    <li><a href="#">kid</a></li>
                                                    <li><a href="#">men</a></li>
                                                    <li><a href="#">women</a></li>
                                                    <li><a href="#">Watche</a></li>
                                                </ul>
                                            </div>
                                            <div class="pro-tag">
                                                <p>tags :</p>
                                                <ul>
                                                    <li>
                                                        <a href="#">Clothing</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">accessories</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">fashion</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">footwear</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">kid</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="pro-shared">
                                            <p>share :</p>
                                            <ul>
                                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                                <li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- single product area end -->
                    <!-- single product area end -->
                    <div class="single-product-dec-area">
                        <div class="container">
                            <div class="single-product-dec-tab">
                                <ul role="tablist">
                                    <li class="active">
                                        <a href="#description" data-toggle="tab">
                                            description
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#reviews" data-toggle="tab">
                                            reviews
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="single-product-dec pb-100">
                                <div class="tab-content">
                                    <div class="tab-pane active" id="description">
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes Cum sociis natoque penatibus et magnis dis parturient montes.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes Cum sociis natoque penatibus et magnis dis parturient montes.</p>
                                    </div>
                                    <div class="tab-pane" id="reviews">
                                        <div class="customer-reviews-all">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <p>Review by <a href="#">john doe (Posted on 17/04/2018)</a></p>
                                                    <div class="single-reviews">
                                                        <div class="single-reviews-left">
                                                            <p>Quality :</p>
                                                        </div>
                                                        <div class="single-reviews-right">
                                                            <ul>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="single-reviews">
                                                        <div class="single-reviews-left">
                                                            <p>Price :</p>
                                                        </div>
                                                        <div class="single-reviews-right">
                                                            <ul>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="single-reviews">
                                                        <div class="single-reviews-left">
                                                            <p>Value :</p>
                                                        </div>
                                                        <div class="single-reviews-right">
                                                            <ul>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star-o"></i></li>
                                                                <li><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="reviews-form">
                                                        <h5>Add a review</h5>
                                                        <div class="single-reviews-rating">
                                                            <ul>
                                                                <li><p>Your Rating: </p></li>
                                                                <li>Quality: <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></li>
                                                                <li>Price: <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></li>
                                                                <li>Value: <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></li>
                                                            </ul>
                                                        </div>
                                                        <form action="#">
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <input placeholder="Your name" type="text">
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <input placeholder="Summary of Your Review" type="text">
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <textarea id="contact_message" name="message" placeholder="Review"></textarea>
                                                                    <button class="reviews-btn" type="submit" name="submit">Submit Review</button>
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
                            <div class="features-tab pb-100">
                                <div class="home-2-tab">
                                    <ul role="tablist">
                                        <li class="active">
                                            <a href="#dresses" data-toggle="tab">
                                                related product
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="dresses">
                                        <div class="row">
                                            <div class="product-curosel product-curosel-style owl-carousel">
                                                <div class="col-md-3 col-sm-6 col-xs-12">
                                                    <div class="single-shop">
                                                        <div class="shop-img">
                                                            <a href="#"><img src="assets/img/shop/electronics/1.jpg" alt="" /></a>
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
                                                <div class="col-md-3 col-sm-6 col-xs-12">
                                                    <div class="single-shop">
                                                        <div class="shop-img">
                                                            <a href="#"><img src="assets/img/shop/electronics/8.jpg" alt="" /></a>
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
                                                <div class="col-md-3 col-sm-6 col-xs-12">
                                                    <div class="single-shop">
                                                        <div class="shop-img">
                                                            <a href="#"><img src="assets/img/shop/electronics/7.jpg" alt="" /></a>
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
                                                                    <h3><a href="#">Micro woven</a></h3>
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
                                                <div class="col-md-3 col-sm-6 col-xs-12">
                                                    <div class="single-shop">
                                                        <div class="shop-img">
                                                            <a href="#"><img src="assets/img/shop/electronics/6.jpg" alt="" /></a>
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
                                                                    <h3><a href="#">Air conditionar</a></h3>
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
                                                <div class="col-md-3 col-sm-6 col-xs-12">
                                                    <div class="single-shop">
                                                        <div class="shop-img">
                                                            <a href="#"><img src="assets/img/shop/electronics/5.jpg" alt="" /></a>
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
                                                <div class="col-md-3 col-sm-6 col-xs-12">
                                                    <div class="single-shop">
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
                                                                    <h3><a href="#">Water heater</a></h3>
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
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- single product area end -->
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
