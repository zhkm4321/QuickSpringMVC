package com.wx.server.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class ContextPathInterceptor extends HandlerInterceptorAdapter {

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		String cp = request.getSession().getServletContext().getContextPath();
		if (null != modelAndView) {
			modelAndView.addObject("cp", cp);
		}
		super.postHandle(request, response, handler, modelAndView);
	}

}
