package com.wx.server.web.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.DisabledAccountException;
import org.apache.shiro.authc.ExpiredCredentialsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.subject.Subject;
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
import com.wx.server.conf.EnumUserStatus;
import com.wx.server.conf.EnumUserType;
import com.wx.server.entity.TbUser;
import com.wx.server.exception.IncorrectCaptchaException;
import com.wx.server.service.UserService;
import com.wx.server.service.WxService;
import com.wx.server.shiro.token.UserIdToken;
import com.wx.server.shiro.utils.UserUtils;
import com.wx.server.utils.CameTools;
import com.wx.server.utils.SessionUtils;
import com.wx.server.utils.StringUtils;
import com.wx.server.utils.TplPathUtils;
import com.wx.server.vo.UserVo;
import com.wx.server.web.base.WxKaptchaExtend;

@Controller
public class LoginController extends WxKaptchaExtend {

  private static Logger log = LoggerFactory.getLogger(LoginController.class);

  @Autowired
  private UserService userSvc;

  @Autowired
  private WxService wxSvc;

  @RequestMapping(value = "/login", method = RequestMethod.GET)
  public String login(HttpSession session, ModelMap mav) {
    addCaptcha(session, mav);
    // 注销后返回登录页
    TbUser user = UserUtils.currentUser();
    if (null != user) {
      UserUtils.logout();
      return "redirect:/login";
    }
    return TplPathUtils.getFrontTpl("/login/login");
  }

  @RequestMapping(value = "/login", method = RequestMethod.POST)
  @ResponseBody
  public String login(HttpServletRequest request, TbUser user) {
    Map<String, Object> result = new HashMap<String, Object>();

    Object errorClassName = request.getAttribute("shiroLoginFailure");
    Class<?> errorClass = null;
    String authticationError = null;
    if (null != errorClassName) {
      try {
        errorClass = Class.forName((String) errorClassName);
      }
      catch (ClassNotFoundException e) {
        log.error("不存在的异常类【" + errorClassName + "】", e);
      }
      if (UnknownAccountException.class.equals(errorClass)) {
        authticationError = "用户名或密码错误";
      }
      else if (IncorrectCredentialsException.class.equals(errorClass)) {
        authticationError = "用户名或密码错误";
      }
      else if (IncorrectCaptchaException.class.equals(errorClass)) {
        authticationError = "验证码错误";
      }
      else if (DisabledAccountException.class.equals(errorClass)) {
        authticationError = "帐号被禁用";
      }
      else if (LockedAccountException.class.equals(errorClass)) {
        authticationError = "帐号被锁定";
      }
      else if (ExpiredCredentialsException.class.equals(errorClass)) {
        authticationError = "凭证过期";
      }
      else {
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

  @RequestMapping(value = "/cgi-bin/login", method = RequestMethod.GET)
  public String loginForTest(Integer id, HttpServletRequest request) {
    loginByUserId(id, request.getServerName());
    TbUser user = UserUtils.currentUser();
    if (user.getType().equals(EnumUserType.TECHNICIAN.getCode())) {
      return "redirect:/user/technician/my";
    }
    else if (user.getType().equals(EnumUserType.CAROWNER.getCode())) {
      return "redirect:/user/carowner/my";
    }
    else {
      return "redirect:/";
    }
  }

  @RequestMapping(value = "/logout", method = RequestMethod.GET)
  @ResponseBody
  public String logout(HttpSession session, ModelMap mav) {
    Map<String, Object> result = new HashMap<String, Object>();
    try {
      UserUtils.logout();
      BaseConstans.wrapSuccess("注销成功", result);
    }
    catch (Exception e) {
      BaseConstans.wrapError("注销失败", result);
    }
    return JSON.toJSONString(result);
  }

  @RequestMapping(value = "/register", method = RequestMethod.GET)
  public String register(Integer type, Integer error, HttpSession session, ModelMap mav) {
    if (null != error && error == 1) {
      mav.put("message", "请填写验证码");
    }
    else if (null != error && error == 2) {
      mav.put("message", "验证码填写错误");
    }
    addCaptcha(session, mav);
    return TplPathUtils.getFrontTpl("/login/register");
  }

  @RequestMapping(value = "/register", method = RequestMethod.POST)
  @ResponseBody
  public String register(UserVo user, String password1, HttpServletRequest request, HttpSession session) {
    Map<String, Object> result = new HashMap<String, Object>();
    try {
      if (validCaptcha(request)) {
        if (!user.getPassword().equals(password1)) {
          BaseConstans.wrapError("两次输入密码不一致", result);
        }
        else {
          TbUser exist = userSvc.findUserByUsername(user.getUsername());
          if (null == exist) {
            userSvc.register(user);
            UserVo vo = (UserVo) user;
            SessionUtils.setUserVo(vo, session);
            BaseConstans.wrapSuccess(null, result);
          }
          else {
            BaseConstans.wrapError("用户名已存在", result);
          }
        }
      }
      else {
        BaseConstans.wrapError("验证码不正确，请重新输入", result);
      }
    }
    catch (IncorrectCaptchaException e) {
      BaseConstans.wrapError("验证码不能为空", result);
    }
    catch (Exception e) {
      e.printStackTrace();
      BaseConstans.wrapError("程序内部异常", result);
    }
    return JSON.toJSONString(result);

  }

  /**
   * 必须带上type参数
   * 
   * @see EnumUserType
   * 
   * @param type 注册用户类型
   * @param response
   * @param session
   */
  @RequestMapping(value = "/loginForWx", method = RequestMethod.GET)
  public void loginForWx(String type, HttpServletResponse response, HttpSession session) {
    try {
      // 获取微信用户认证界面的url
      String url = wxSvc.getWxUserAuthUrl(type);
      // 第一步：跳转到微信登录页面当用户同意授权，获取code
      response.sendRedirect(url);
    }
    catch (IOException e) {
      e.printStackTrace();
    }
  }

  /**
   * 车主、技师和商家都通过这个回调请求进入首页
   * 
   * @param code
   * @param state
   * @param session
   * @param mav
   * @return
   */
  @RequestMapping(value = "/cgi-bin/regForWx", method = RequestMethod.GET)
  public String regOrLoginForWx(String code, String state, HttpServletRequest request, HttpSession session,
      ModelMap mav) {
    if (StringUtils.isNotEmpty(state) && StringUtils.isNotEmpty(code)) {
      // 第二步：通过code换取网页授权access_token
      String json = wxSvc.getWxUserAccessToken(code);
      if (JSON.parseObject(json).containsKey("errcode")) {
        log.error("获取用户登录授权code失败");
      }
      else {
        UserVo vo = JSON.parseObject(CameTools.convert(json), UserVo.class);
        // 获取用户信息
        wxSvc.getWxUserInfo(vo);
        // 刚刚登录进来的用户状态
        vo.setStatus(EnumUserStatus.BEGINNER.getCode());
        if ("carowner".equals(state)) {
          vo.setType(EnumUserType.CAROWNER.getCode());
          // 更新或保存用户信息
          userSvc.saveOrupdateWxUserInfo(vo);
          loginByUserId(vo.getUserId(), request.getServerName());
          return "redirect:/user/carowner/my";
        }
        else if ("technician".equals(state)) {
          vo.setType(EnumUserType.TECHNICIAN.getCode());
          // 更新或保存用户信息
          userSvc.saveOrupdateWxUserInfo(vo);
          loginByUserId(vo.getUserId(), request.getServerName());
          return "redirect:/user/carowner/my";
        }
      }
    }
    else {
      log.error("非法请求，未携带正确state参数");
    }
    return "error";
  }

  private void loginByUserId(Integer userId, String host) {
    Subject subject = SecurityUtils.getSubject();
    UserIdToken token = new UserIdToken(userId, host);
    subject.login(token);// 登录
  }
}
