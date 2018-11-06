<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>康生缘-我的购物车</title>
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

                        <!-- shopping-cart-area start -->
                        <div class="cart-area ptb-100">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12
                                        col-xs-12">
                                        <form action="#">
                                            <div class="table-content
                                                table-responsive">
                                                <table>
                                                    <thead>
                                                        <tr>
                                                            <th
                                                                class="product-price">images</th>
                                                            <th
                                                                class="product-name">Product</th>
                                                            <th
                                                                class="product-price">Price</th>
                                                            <th
                                                                class="product-quantity">Quantity</th>
                                                            <th
                                                                class="product-subtotal">Total</th>
                                                            <th
                                                                class="product-name">remove</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td
                                                                class="product-thumbnail">
                                                                <a href="#"><img
                                                                        src="assets/img/cart/1.jpg"
                                                                        alt=""></a>
                                                            </td>
                                                            <td
                                                                class="product-name"><a
                                                                    href="#">Headphone</a></td>
                                                            <td
                                                                class="product-price"><span
                                                                    class="amount">$165.00</span></td>
                                                            <td
                                                                class="product-quantity">
                                                                <input value="1"
                                                                    type="number">
                                                            </td>
                                                            <td
                                                                class="product-subtotal">$165.00</td>
                                                            <td
                                                                class="product-remove"><a
                                                                    href="#"><i
                                                                        class="fa
                                                                        fa-times"></i></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td
                                                                class="product-thumbnail">
                                                                <a href="#"><img
                                                                        src="assets/img/cart/2.jpg"
                                                                        alt=""></a>
                                                            </td>
                                                            <td
                                                                class="product-name"><a
                                                                    href="#">Table lamp</a></td>
                                                            <td
                                                                class="product-price"><span
                                                                    class="amount">$150.00</span></td>
                                                            <td
                                                                class="product-quantity">
                                                                <input value="1"
                                                                    type="number">
                                                            </td>
                                                            <td
                                                                class="product-subtotal">$150.00</td>
                                                            <td
                                                                class="product-remove"><a
                                                                    href="#"><i
                                                                        class="fa
                                                                        fa-times"></i></a></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="row tax-coupon-div">
                                    <div class="col-md-7 col-sm-12 col-xs-12">
                                        <div class="tax-coupon-all">
                                            <div class="tax-coupon">
                                                <ul role="tablist">
                                                    <li class="active">
                                                        <a href="#tax" data-toggle="tab">Shipping and Tax</a>
                                                    </li>
                                                    <li>
                                                        <a href="#coupon" data-toggle="tab">Discount Coupon </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="tax-coupon-details
                                                tab-content">
                                                <div id="tax"
                                                    class="shipping-dec tab-pane
                                                    active">
                                                    <p>Enter your destination to get a shipping estimate.</p>
                                                    <div class="shipping-form">
                                                        <div
                                                            class="single-shipping-form">
                                                            <label
                                                                class="required
                                                                get">
                                                                country
                                                                <em>*</em>
                                                            </label>
                                                            <select class="email s-email">
                                                                <option value="">United States
                                                                </option>
                                                                <option value="AF">Afghanistan</option>
                                                                <option value="AX">Åland Islands
                                                                </option>
                                                                <option value="AL">Albania</option>
                                                                <option value="UZ">Uzbekistan</option>
                                                                <option value="VU">Vanuatu</option>
                                                                <option value="VA">Vatican City</option>
                                                                <option value="VE">Venezuela</option>
                                                                <option value="VN">Vietnam</option>
                                                                <option value="WF">Wallis and Futuna</option>
                                                                <option value="EH">Western Sahara</option>
                                                                <option value="YE">Yemen</option>
                                                                <option value="ZM">Zambia</option>
                                                                <option value="ZW">Zimbabwe</option>
                                                            </select>
                                                        </div>
                                                        <div
                                                            class="single-shipping-form">
                                                            <label class="required get">State/Province <em>*</em> </label>
                                                            <select class="email s-email">
                                                                <option value="">Please select region</option>
                                                                <option value="1">Alabama</option>
                                                                <option value="61">Virginia</option>
                                                                <option value="62">Washington</option>
                                                                <option value="63">West Virginia</option>
                                                                <option value="64">Wisconsin</option>
                                                                <option value="65">Wyoming</option>
                                                            </select>
                                                        </div>
                                                        <div
                                                            class="single-shipping-form">
                                                            <label
                                                                class="required
                                                                get">
                                                                Zip/Postal Code
                                                                <em>*</em>
                                                            </label>
                                                            <input
                                                                placeholder="1234567"
                                                                type="text"
                                                                required="">
                                                        </div>
                                                        <div
                                                            class="single-shipping-botton">
                                                            <button
                                                                type="submit">
                                                                <span>Get a Quote</span>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="coupon"
                                                    class="coupon-dec tab-pane">
                                                    <p>Enter your coupon code if you have one.</p>
                                                    <label class="required get">coupon<em>*</em></label>
                                                    <input placeholder="coupon code" required="" type="text">
                                                    <button class="coupon-btn" type="submit">Apply Coupon</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-5 col-sm-12 col-xs-12">
                                        <div class="cart-total">
                                            <ul>
                                                <li>Subtotal<span>$315.00</span></li>
                                                <li class="cart-black">Total<span>$315.00</span></li>
                                            </ul>
                                            <div class="cart-total-btn">
                                                <div class="cart-total-btn1 f-left">
                                                    <a href="#">Proceed to
                                                        checkout</a>
                                                </div>
                                                <div class="cart-total-btn2 f-right">
                                                    <a href="#">Confirm Order</a>
                                                </div>
                                            </div>
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
		    <script src="assets/js/main3.js"></script>
        </body>
    </html>
