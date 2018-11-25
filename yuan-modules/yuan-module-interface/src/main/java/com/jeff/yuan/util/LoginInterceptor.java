package com.jeff.yuan.util;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
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
			/*System.out.println("session不存在");
			PrintWriter out = null ;
			JSONObject res = new JSONObject();
		    res.put("success","false");
		    res.put("msg","login first");
		    out = response.getWriter();
		    out.append(res.toJSONString());*/
			response.sendRedirect("login.jsp");
            return false;
        }else{    //已经登录
            return true;
        }
	}

}
