package com.wx.server.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.wx.server.base.BaseConstans;

public class BackstageEvnInterceptor extends HandlerInterceptorAdapter {

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		String cp = request.getSession().getServletContext().getContextPath();
		if (null != modelAndView) {
			modelAndView.addObject(BaseConstans.SYSRES, cp + "/backstage");
		}
		super.postHandle(request, response, handler, modelAndView);
	}
}
