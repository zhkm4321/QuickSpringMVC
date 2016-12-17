package com.wx.server.web.admin;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.wx.server.base.BaseConstans;
import com.wx.server.entity.TbUser;
import com.wx.server.exception.IncorrectCaptchaException;
import com.wx.server.service.UserService;
import com.wx.server.shiro.utils.UserUtils;
import com.wx.server.utils.TplPathUtils;
import com.wx.server.web.base.WxKaptchaExtend;

@Controller
@RequestMapping(value = "/wxbackstage")
public class AdminController extends WxKaptchaExtend {

  private static Logger log = LoggerFactory.getLogger(AdminController.class);

  @Autowired
  UserService userService;

  @RequestMapping(value = "/signin", method = RequestMethod.GET)
  public String signup(HttpSession session, ModelMap mav) {
    addCaptcha(session, mav);
    // 注销后返回登录页
    TbUser user = UserUtils.currentUser();
    if (null != user) {
      UserUtils.logout();
      return "redirect:/wxbackstage/signin";
    }
    return TplPathUtils.getBackstageTpl("/signin");
  }

  @RequestMapping(value = "/signin", method = RequestMethod.POST)
  @ResponseBody
  public String login(HttpServletRequest request, TbUser user) {
    Map<String, Object> result = new HashMap<String, Object>();

    Object errorClassName = request.getAttribute("shiroLoginFailure");
    String authticationError = null;
    if (null != errorClassName) {
      if (UnknownAccountException.class.equals(errorClassName.getClass())) {
        authticationError = "用户名或密码错误";
      }
      else if (IncorrectCredentialsException.class.equals(errorClassName.getClass())) {
        authticationError = "用户名或密码错误";
      }
      else if (IncorrectCaptchaException.class.equals(errorClassName.getClass())) {
        authticationError = "验证码错误";
      }
      else if (errorClassName != null) {
        authticationError = "未知错误：" + errorClassName;
      }
    }
    if (null != authticationError) {
      BaseConstans.wrapError(authticationError, result);
    }
    else {
      BaseConstans.wrapSuccess(true, result);
    }
    return JSON.toJSONString(result);
  }

  @RequestMapping(value = "/logout", method = RequestMethod.GET)
  public String logoutAndRedirect(String returnUrl, HttpSession session, ModelMap mav) {
    try {
      UserUtils.logout();
    }
    catch (Exception e) {
      BaseConstans.wrapError("注销失败", mav);
    }
    return "redirect:/wxbackstage/signup";
  }

  @RequestMapping(value = "/index", method = RequestMethod.GET)
  public String index(HttpSession session, ModelMap model) {
    model.put(BaseConstans.POSITION, "index");
    return TplPathUtils.getBackstageTpl("/index");
  }

  @RequestMapping(value = "/error/noright", method = RequestMethod.GET)
  public String noRightVisit(HttpServletRequest request, ModelMap mav) {
    log.info("来自{}的用户尝试访问无权限的页面", request.getRemoteHost());
    mav.put("message", "您没有权限访问此页面");
    return TplPathUtils.getBackstageTpl("/error/noright");
  }
}
