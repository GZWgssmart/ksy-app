package com.jeff.yuan.util;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.jeff.yuan.cms.entity.ShopUser;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		ShopUser user = (ShopUser) session.getAttribute("userInfo");
//        ServletContext application = session.getServletContext();
		if (user==null || "".equals(user)){    //未登录
			System.out.println("session失效");
            /*跳转到500页面 然后500在弹登录超时，2秒后自动跳转到登录页*/
            response.sendRedirect("/login.jsp");
            return false;
        }else{    //已经登录
            return true;
        }
	}

}
