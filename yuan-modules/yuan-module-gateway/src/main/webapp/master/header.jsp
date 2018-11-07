<%--
  Created by IntelliJ IDEA.
  User: wangzhenyu
  Date: 2018/11/6
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- header start -->
<header class="header-area home-style-2">
    <div class="header-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-3 col-xs-6">
                    <div class="logo" style="padding: 10px 0 0 0;">
                        <a href="index.jsp">
                            <img src="assets/img/logo/my-logo.png" class="img-responsive" style="max-height:60px;" alt="康生缘在线商城">
                        </a>
                    </div>
                </div>
                <div class="col-md-8 col-sm-9 col-xs-6">
                    <div class="cart-menu">
                        <div class="user user-style-3 f-right">
                            <a href="#" id="open-button">
                                <i class="pe-7s-user"></i>
                            </a>
                        </div>

                        <div class="search-style-2 f-right">
                            <a class="icon-search-2" href="#">
                                <i class="pe-7s-search"></i>
                            </a>
                            <div class="search2-content">
                                <form action="#">
                                    <div class="search-input-button2">
                                        <input class="" placeholder="Search" type="search">
                                        <button class="search-button2" type="submit">
                                            <i class="pe-7s-search"></i>
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div class="shopping-cart f-right">
                            <a class="top-cart" href="cart.jsp"><i class="pe-7s-cart"></i></a>
                            <span>01</span>
                            <ul>
                                <li>
                                    <div class="cart-img-price">
                                        <div class="cart-img">
                                            <a href="#"><img src="assets/img/cart/1.jpg" alt="" /></a>
                                        </div>
                                        <div class="cart-content">
                                            <h3><a href="#">Headphone</a> </h3>
                                            <span class="cart-price">1 x $ 299.00</span>
                                        </div>
                                        <div class="cart-del">
                                            <i class="pe-7s-close-circle"></i>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <p class="total">
                                        Subtotal:
                                        <span>$299.00</span>
                                    </p>
                                </li>
                                <li>
                                    <p class="buttons">
                                        <a class="my-cart" href="cart.jsp">View Cart</a>
                                        <a class="checkout" href="checkout.html">Checkout</a>
                                    </p>
                                </li>
                            </ul>
                        </div>

                        <div class="main-menu f-right">
                            <nav>
                                <ul>
                                    <li>
                                        <a href="index.jsp">首页</a>
                                    </li>
                                    <li class="mega-position">
                                        <a href="shop-page.jsp">商城 </a>
                                        <div class="mega-menu mega-4-colm">
                                            <ul>
                                                <li class="menu-title uppercase">Clothings</li>
                                                <li><a href="shop-page.jsp">Dresses</a></li>
                                                <li><a href="shop-page.jsp">Tops</a></li>
                                                <li><a href="shop-page.jsp">skirt</a></li>
                                                <li><a href="shop-page.jsp">cardigan</a></li>
                                                <li><a href="shop-page.jsp">Outerwear</a></li>
                                            </ul>
                                            <ul>
                                                <li class="menu-title uppercase">Jewelry</li>
                                                <li><a href="shop-page.jsp">ring</a></li>
                                                <li><a href="shop-page.jsp">locket</a></li>
                                                <li><a href="shop-page.jsp">crown</a></li>
                                                <li><a href="shop-page.jsp">wristlet</a></li>
                                                <li><a href="shop-page.jsp">bracelet</a></li>
                                            </ul>
                                            <ul>
                                                <li class="menu-title uppercase">Shoes</li>
                                                <li><a href="shop-page.jsp">Flats</a></li>
                                                <li><a href="shop-page.jsp">Boots</a></li>
                                                <li><a href="shop-page.jsp">Sneakers</a></li>
                                                <li><a href="shop-page.jsp">slipper</a></li>
                                                <li><a href="shop-page.jsp">wellington</a></li>
                                            </ul>
                                            <ul>
                                                <li class="menu-img">
                                                    <a href="shop-page.jsp"><img src="assets/img/shop/1.jpg" alt=""></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="mega-position"><a href="shop-page.jsp">健康管理 </a>
                                        <div class="mega-menu mega-3-colm">
                                            <ul>
                                                <li class="menu-title uppercase">Clothings</li>
                                                <li><a href="shop-page.jsp">suit</a></li>
                                                <li><a href="shop-page.jsp">shirt </a></li>
                                                <li><a href="shop-page.jsp">tie</a></li>
                                                <li><a href="shop-page.jsp">coat</a></li>
                                                <li><a href="#"> jacket</a></li>
                                                <li><a href="shop-page.jsp">t-shirt</a></li>
                                                <li><a href="shop-page.jsp">trouser</a></li>
                                            </ul>
                                            <ul>
                                                <li class="menu-title uppercase">Shoes</li>
                                                <li><a href="shop-page.jsp">Flats</a></li>
                                                <li><a href="shop-page.jsp">Boots</a></li>
                                                <li><a href="shop-page.jsp">Sneakers</a></li>
                                                <li><a href="shop-page.jsp">slipper</a></li>
                                                <li><a href="shop-page.jsp">wellington</a></li>
                                                <li><a href="shop-page.jsp">sanda</a></li>
                                                <li><a href="shop-page.jsp">sock</a></li>
                                            </ul>
                                            <ul>
                                                <li class="menu-img">
                                                    <a href="shop-page.jsp"><img src="assets/img/shop/1.jpg" alt=""></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li><a href="shop-page.jsp">爱心公益</a>
                                        <div class="mega-menu mega-2-colm">
                                            <ul>
                                                <li class="menu-title uppercase">Jewelry</li>
                                                <li><a href="shop-page.jsp">ring</a></li>
                                                <li><a href="shop-page.jsp">locket</a></li>
                                                <li><a href="shop-page.jsp">crown</a></li>
                                                <li><a href="shop-page.jsp">wristlet</a></li>
                                                <li><a href="shop-page.jsp">bracelet</a></li>
                                            </ul>
                                            <ul>
                                                <li class="menu-title uppercase">Clothings</li>
                                                <li><a href="shop-page.jsp">ring</a></li>
                                                <li><a href="shop-page.jsp">locket</a></li>
                                                <li><a href="shop-page.jsp">crown</a></li>
                                                <li><a href="shop-page.jsp">wristlet</a></li>
                                                <li><a href="shop-page.jsp">bracelet</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li><a href="#">项目合作</a>
                                        <ul class="dropdown">
                                            <li><a href="about-us.jsp">about us </a></li>
                                            <li><a href="cart.jsp">cart</a></li>
                                            <li><a href="checkout.html">checkout</a></li>
                                            <li><a href="order.jsp">wishlist</a></li>
                                            <li><a href="login.jsp">login</a></li>
                                            <li><a href="register.jsp">register</a></li>
                                            <li><a href="contact.jsp">contact</a></li>
                                            <li><a href="shop-page.jsp">shop page</a></li>
                                            <li><a href="shop-list.html">shop list</a></li>
                                            <li><a href="single-product.jsp">single product</a></li>
                                            <li><a href="404.html">404 page</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="blog-page.jsp">资讯</a></li>
                                    <li><a href="contact.jsp">联系我们</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- header end -->
<!-- mobile-menu-area start -->
<div class="mobile-menu-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="mobile-menu">
                    <nav id="dropdown">
                        <ul>
                            <li>
                                <a href="index.jsp">首页</a>
                            </li>
                            <li class="mega-position">
                                <a href="shop-page.jsp">商城 </a>
                                <div class="mega-menu mega-4-colm">
                                    <ul>
                                        <li class="menu-title uppercase">Clothings</li>
                                        <li><a href="shop-page.jsp">Dresses</a></li>
                                        <li><a href="shop-page.jsp">Tops</a></li>
                                        <li><a href="shop-page.jsp">skirt</a></li>
                                        <li><a href="shop-page.jsp">cardigan</a></li>
                                        <li><a href="shop-page.jsp">Outerwear</a></li>
                                    </ul>
                                    <ul>
                                        <li class="menu-title uppercase">Jewelry</li>
                                        <li><a href="shop-page.jsp">ring</a></li>
                                        <li><a href="shop-page.jsp">locket</a></li>
                                        <li><a href="shop-page.jsp">crown</a></li>
                                        <li><a href="shop-page.jsp">wristlet</a></li>
                                        <li><a href="shop-page.jsp">bracelet</a></li>
                                    </ul>
                                    <ul>
                                        <li class="menu-title uppercase">Shoes</li>
                                        <li><a href="shop-page.jsp">Flats</a></li>
                                        <li><a href="shop-page.jsp">Boots</a></li>
                                        <li><a href="shop-page.jsp">Sneakers</a></li>
                                        <li><a href="shop-page.jsp">slipper</a></li>
                                        <li><a href="shop-page.jsp">wellington</a></li>
                                    </ul>
                                    <ul>
                                        <li class="menu-img">
                                            <a href="shop-page.jsp"><img src="assets/img/shop/1.jpg" alt=""></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="mega-position"><a href="shop-page.jsp">健康管理 </a>
                                <div class="mega-menu mega-3-colm">
                                    <ul>
                                        <li class="menu-title uppercase">Clothings</li>
                                        <li><a href="shop-page.jsp">suit</a></li>
                                        <li><a href="shop-page.jsp">shirt </a></li>
                                        <li><a href="shop-page.jsp">tie</a></li>
                                        <li><a href="shop-page.jsp">coat</a></li>
                                        <li><a href="#"> jacket</a></li>
                                        <li><a href="shop-page.jsp">t-shirt</a></li>
                                        <li><a href="shop-page.jsp">trouser</a></li>
                                    </ul>
                                    <ul>
                                        <li class="menu-title uppercase">Shoes</li>
                                        <li><a href="shop-page.jsp">Flats</a></li>
                                        <li><a href="shop-page.jsp">Boots</a></li>
                                        <li><a href="shop-page.jsp">Sneakers</a></li>
                                        <li><a href="shop-page.jsp">slipper</a></li>
                                        <li><a href="shop-page.jsp">wellington</a></li>
                                        <li><a href="shop-page.jsp">sanda</a></li>
                                        <li><a href="shop-page.jsp">sock</a></li>
                                    </ul>
                                    <ul>
                                        <li class="menu-img">
                                            <a href="shop-page.jsp"><img src="assets/img/shop/1.jpg" alt=""></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="shop-page.jsp">爱心公益</a>
                                <div class="mega-menu mega-2-colm">
                                    <ul>
                                        <li class="menu-title uppercase">Jewelry</li>
                                        <li><a href="shop-page.jsp">ring</a></li>
                                        <li><a href="shop-page.jsp">locket</a></li>
                                        <li><a href="shop-page.jsp">crown</a></li>
                                        <li><a href="shop-page.jsp">wristlet</a></li>
                                        <li><a href="shop-page.jsp">bracelet</a></li>
                                    </ul>
                                    <ul>
                                        <li class="menu-title uppercase">Clothings</li>
                                        <li><a href="shop-page.jsp">ring</a></li>
                                        <li><a href="shop-page.jsp">locket</a></li>
                                        <li><a href="shop-page.jsp">crown</a></li>
                                        <li><a href="shop-page.jsp">wristlet</a></li>
                                        <li><a href="shop-page.jsp">bracelet</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="active1"><a class="active1" href="#">项目合作</a>
                                <ul>
                                    <li><a href="about-us.jsp">about us </a></li>
                                    <li><a href="cart.jsp">cart</a></li>
                                    <li><a href="checkout.html">checkout</a></li>
                                    <li><a href="order.jsp">wishlist</a></li>
                                    <li><a href="login.jsp">login</a></li>
                                    <li><a href="register.jsp">register</a></li>
                                    <li><a href="contact.jsp">contact</a></li>
                                    <li><a href="shop-page.jsp">shop page</a></li>
                                    <li><a href="shop-list.html">shop list</a></li>
                                    <li><a href="single-product.jsp">single product</a></li>
                                    <li><a href="404.html">404 page</a></li>
                                </ul>
                            </li>
                            <li><a href="blog-page.jsp">资讯</a></li>
                            <li><a href="contact.jsp">联系我们</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- mobile-menu-area end -->