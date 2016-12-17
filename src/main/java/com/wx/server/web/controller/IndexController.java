package com.wx.server.web.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wx.server.base.BaseConstans;
import com.wx.server.service.UserService;
import com.wx.server.service.WxService;
import com.wx.server.utils.TplPathUtils;
import com.wx.server.web.base.WxKaptchaExtend;

@Controller
public class IndexController extends WxKaptchaExtend {

  private static Logger log = LoggerFactory.getLogger(IndexController.class);

  @Autowired
  UserService userService;

  @Autowired
  WxService wxSvc;

  @RequestMapping(value = "/", method = RequestMethod.GET)
  public String root(HttpServletRequest request, HttpSession session, ModelMap model) {
    model.put(BaseConstans.POSITION, "index");
    return TplPathUtils.getFrontTpl("/index");
  }

  @RequestMapping(value = "/index.html", method = RequestMethod.GET)
  public String index(HttpServletRequest request, HttpSession session, ModelMap model) {
    model.put(BaseConstans.POSITION, "index");
    return root(request, session, model);
  }

  @RequestMapping(value = "/demo.html", method = RequestMethod.GET)
  public String demo(HttpServletRequest request, HttpSession session, ModelMap model) {
    int port = request.getServerPort();
    String authUrl = request.getScheme() + "://" + request.getServerName() + (port == 80 ? "" : String.valueOf(port))
        + request.getRequestURI();
    Map<String, String> param = wxSvc.getJSApiConfig(authUrl);
    model.putAll(param);
    return TplPathUtils.getFrontTpl("/demo");
  }

  /**
   * captcha
   */
  @RequestMapping(value = "/captcha.jpg", method = RequestMethod.GET)
  public void captcha(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    super.captcha(req, resp);
  }

}
