package com.wx.server.web.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wx.server.entity.TbUser;
import com.wx.server.service.UserService;
import com.wx.server.shiro.utils.TbUserUtils;
import com.wx.server.utils.AjaxRespUtils;
import com.wx.server.utils.StringUtils;
import com.wx.server.utils.TplPathUtils;
import com.wx.server.web.base.WxKaptchaExtend;

@Controller
public class UserController extends WxKaptchaExtend {

  private static Logger log = LoggerFactory.getLogger(UserController.class);

  @Autowired
  private UserService userService;

  @RequestMapping(value = "/user/modifyPwd", method = RequestMethod.GET)
  public String modifyPassword(ModelMap model) {
    return TplPathUtils.getFrontTpl("/user/modify_password");
  }

  @RequestMapping(value = "/user/validOldPwd", method = RequestMethod.POST)
  @ResponseBody
  public String validNewPwd(String oldpwd, HttpServletRequest request, HttpServletResponse response) {
    String error = checkOldPwd(oldpwd);
    if (StringUtils.isBlank(error)) {
      return AjaxRespUtils.renderSuccess("验证通过");
    }
    return AjaxRespUtils.renderErrors(error);
  }

  @RequestMapping(value = "/user/validNewPwd", method = RequestMethod.POST)
  @ResponseBody
  public String validNewPwd(String newpwd, String pwdrepeat, HttpServletRequest request, HttpServletResponse response) {
    String error = checkNewPwd(newpwd, pwdrepeat);
    if (StringUtils.isBlank(error)) {
      return AjaxRespUtils.renderSuccess("验证通过");
    }
    return AjaxRespUtils.renderErrors(error);
  }

  @RequestMapping(value = "/user/doModify", method = RequestMethod.POST)
  @ResponseBody
  public String doModify(String oldpwd, String newpwd, String pwdrepeat, HttpServletRequest request,
      HttpServletResponse response) {
    String error = checkOldPwd(oldpwd);
    if (StringUtils.isNotBlank(error)) {
      return AjaxRespUtils.renderErrors(error);
    }
    error = checkNewPwd(newpwd, pwdrepeat);
    if (StringUtils.isNotBlank(error)) {
      return AjaxRespUtils.renderErrors(error);
    }

    TbUser user = TbUserUtils.currentUser();
    String passwordMd5 = new Md5Hash(newpwd, user.getUserId().toString()).toString();
    user.setPassword(passwordMd5);
    try {
      userService.update(user);
      return AjaxRespUtils.renderSuccess("修改成功");
    }
    catch (Exception e) {
      e.printStackTrace();
    }
    return AjaxRespUtils.renderErrors("修改密码失败");

  }

  /**
   * 验证修改密码表单填写是否正确
   * 
   * @param oldpwd 原密码
   * @param request
   * @param response
   */
  private String checkOldPwd(String oldpwd) {
    TbUser user = TbUserUtils.currentUser();
    boolean pass = false;
    if (StringUtils.isNotBlank(oldpwd)) {
      pass = userService.isPasswordValid(user.getUserId(), oldpwd);
    }
    else {
      return "请先填写旧密码";
    }
    if (!pass) {
      return "旧密码填写错误";
    }
    return null;
  }

  private String checkNewPwd(String newpwd, String pwdrepeat) {
    int level = userService.isNewPasswordValid(newpwd);
    if (level == 0) {
      return "新密码不符合要求";
    }
    if (!newpwd.equals(pwdrepeat)) {
      return "两次输入的密码不一样";
    }
    return null;
  }

}
