package com.wx.server.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.wx.server.base.BaseConstans;
import com.wx.server.entity.TbUser;
import com.wx.server.shiro.utils.TbUserUtils;

public class EvnInterceptor extends HandlerInterceptorAdapter {

  public static String START_TIME = "start_time";

  @Override
  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
    request.setAttribute("start_time", System.currentTimeMillis());
    return super.preHandle(request, response, handler);
  }

  @Override
  public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
      ModelAndView modelAndView) throws Exception {
    String cp = request.getSession().getServletContext().getContextPath();
    if (null != modelAndView) {
      TbUser curUser = TbUserUtils.currentUser();
      if (null != curUser) {
        modelAndView.addObject(BaseConstans.USER_KEY, curUser);
      }
      modelAndView.addObject(BaseConstans.CTX_PATH, cp);
      modelAndView.addObject(BaseConstans.RES, cp + "/res");
      Long stime = (Long) request.getAttribute("start_time");
      modelAndView.addObject(BaseConstans.START_TIME, stime);
    }
    super.postHandle(request, response, handler, modelAndView);
  }
}
