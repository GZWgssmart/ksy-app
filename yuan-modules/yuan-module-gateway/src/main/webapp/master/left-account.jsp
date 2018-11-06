<%--
  Created by IntelliJ IDEA.
  User: wangzhenyu
  Date: 2018/11/6
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="menu-wrap">
    <nav class="menu">
        <div class="icon-list">
            <h5 class="mt-2">个人中心</h5>
            <a href="cart.jsp"><i class="pe-7s-users"></i><span>我的团队</span></a>
            <a href="cart.jsp"><i class="pe-7s-pin"></i><span>我的权益</span></a>
            <a href="cart.jsp"><i class="pe-7s-gift"></i><span>我的收益</span></a>
            <a href="cart.jsp"><i class="pe-7s-shopbag"></i><span>我的订单</span></a>
            <a href="cart.jsp"><i class="pe-7s-cart"></i><span>我的购物车</span></a>
            <a href="login.jsp"><i class="pe-7s-next-2"></i><span>登录</span></a>
            <a href="register.jsp"><i class="pe-7s-add-user"></i><span>注册</span></a>
        </div>
    </nav>
    <button class="close-button" id="close-button">Close Menu</button>
    <div class="morph-shape" id="morph-shape" data-morph-open="M-1,0h101c0,0,0-1,0,395c0,404,0,405,0,405H-1V0z">
        <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 100 800" preserveAspectRatio="none">
            <path d="M-1,0h101c0,0-97.833,153.603-97.833,396.167C2.167,627.579,100,800,100,800H-1V0z"/>
        </svg>
    </div>
</div>
