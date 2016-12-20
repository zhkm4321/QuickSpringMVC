package com.wx.server.web.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wx.server.base.BaseConstans;
import com.wx.server.conf.EnumUserType;
import com.wx.server.entity.TbCarModels;
import com.wx.server.entity.TbUser;
import com.wx.server.service.CarModelsService;
import com.wx.server.service.SMSService;
import com.wx.server.service.UserService;
import com.wx.server.shiro.utils.UserUtils;
import com.wx.server.utils.AjaxRespUtils;
import com.wx.server.utils.RandomUtil;
import com.wx.server.utils.StringUtils;
import com.wx.server.utils.TplPathUtils;
import com.wx.server.web.base.WxKaptchaExtend;

@Controller
public class UserController extends WxKaptchaExtend {

  private static Logger log = LoggerFactory.getLogger(UserController.class);

  @Autowired
  private UserService userSvc;

  @Autowired
  private SMSService smsSvc;

  @Autowired
  private CarModelsService carModelsSvc;

  /**
   * 车主-我的
   * 
   * @param model
   * @return
   */
  @RequestMapping(value = "/user/carowner/my", method = RequestMethod.GET)
  public String carownerMy(ModelMap model) {
    model.put(BaseConstans.POSITION, "my");
    return TplPathUtils.getFrontTpl("/user/carowner/my");
  }

  @RequestMapping(value = "/user/profile", method = RequestMethod.GET)
  public String profile(ModelMap model) {
    model.put(BaseConstans.POSITION, "my");
    TbUser user = UserUtils.currentUser();
    int type = user.getType();
    if (type == EnumUserType.CAROWNER.getCode()) {
      if (user.getSex() == null || user.getAge() == null || StringUtils.isBlank(user.getRealname())) {
        model.put("incomplete", true);
      }
      else {
        model.put("incomplete", false);
      }
      return TplPathUtils.getFrontTpl("/user/carowner/profile");
    }
    // else if (type == EnumUserType.TECHNICIAN.getCode()) {
    // return TplPathUtils.getFrontTpl("/user/technician/profile");
    // }
    else {
      return "error";
    }
  }

  @RequestMapping(value = "/user/profile/carModels", method = RequestMethod.GET)
  public String carModels(String brand, ModelMap model) {
    model.put(BaseConstans.POSITION, "my");
    try {
      String brandUTF8 = new String(brand.getBytes("ISO-8859-1"), "UTF-8");

      int type = UserUtils.currentUser().getType();
      if (type == EnumUserType.CAROWNER.getCode()) {
        model.put("brand", brandUTF8);
        return TplPathUtils.getFrontTpl("/user/carowner/profile_car_models");
      }
      // else if (type == EnumUserType.TECHNICIAN.getCode()) {
      // return TplPathUtils.getFrontTpl("/user/technician/profile");
      // }
      else {
        return "error";
      }
    }
    catch (UnsupportedEncodingException e) {
      return "error";
    }
  }

  /**
   * 车主设置
   * 
   * @param model
   * @return
   */
  @RequestMapping(value = "/user/config", method = RequestMethod.GET)
  public String carownerConfig(ModelMap model) {
    model.put(BaseConstans.POSITION, "my");
    int type = UserUtils.currentUser().getType();
    if (type == EnumUserType.CAROWNER.getCode()) {
      return TplPathUtils.getFrontTpl("/user/carowner/config");
    }
    // else if (type == EnumUserType.TECHNICIAN.getCode()) {
    // return TplPathUtils.getFrontTpl("/user/technician/config");
    // }
    else {
      return "error";
    }
  }

  /**
   * 技师-我的
   * 
   * @param model
   * @return
   */
  @RequestMapping(value = "/user/technician/my", method = RequestMethod.GET)
  public String technicianMy(ModelMap model) {
    model.put(BaseConstans.POSITION, "my");
    return TplPathUtils.getFrontTpl("/user/technician/my");
  }

  /**
   * 编辑车主资料——车型
   * 
   * @param model
   * @return
   */
  @RequestMapping(value = "/user/profile/carModels", method = RequestMethod.POST)
  @ResponseBody
  public String postCarModels(Integer modelsId, ModelMap model) {
    int type = UserUtils.currentUser().getType();
    if (type == EnumUserType.CAROWNER.getCode()) {
      TbCarModels models = carModelsSvc.getById(modelsId);
      TbUser user = UserUtils.currentUser();
      user.setCarModels(models.getCarsLine());
      userSvc.update(user);
      return AjaxRespUtils.renderSuccess("车型修改成功");
    }
    // else if (type == EnumUserType.TECHNICIAN.getCode()) {
    // return TplPathUtils.getFrontTpl("/user/technician/edit_user_info");
    // }
    else {
      return AjaxRespUtils.renderErrors("用户类型不正确");
    }
  }

  /**
   * 编辑车主资料——车型
   * 
   * @param model
   * @return
   */
  @RequestMapping(value = "/user/profile/numPlates", method = RequestMethod.POST)
  @ResponseBody
  public String postNumPlates(String numPlates, ModelMap model) {
    int type = UserUtils.currentUser().getType();
    if (type == EnumUserType.CAROWNER.getCode()) {
      try {
        TbUser user = UserUtils.currentUser();
        user.setNumPlates(numPlates);
        userSvc.update(user);
      }
      catch (Exception e) {
        log.error(e.getMessage());
      }
      return AjaxRespUtils.renderSuccess("车牌号修改成功");
    }
    // else if (type == EnumUserType.TECHNICIAN.getCode()) {
    // return TplPathUtils.getFrontTpl("/user/technician/edit_user_info");
    // }
    else {
      return AjaxRespUtils.renderErrors("用户类型不正确");
    }
  }

  /**
   * 编辑车主资料——车型
   * 
   * @param model
   * @return
   */
  @RequestMapping(value = "/user/profile/realname", method = RequestMethod.POST)
  @ResponseBody
  public String postRealname(String realname, ModelMap model) {
    int type = UserUtils.currentUser().getType();
    if (type == EnumUserType.CAROWNER.getCode()) {
      try {
        TbUser user = UserUtils.currentUser();
        user.setRealname(realname);
        userSvc.update(user);
      }
      catch (Exception e) {
        log.error(e.getMessage());
      }
      return AjaxRespUtils.renderSuccess("姓名修改成功");
    }
    // else if (type == EnumUserType.TECHNICIAN.getCode()) {
    // return TplPathUtils.getFrontTpl("/user/technician/edit_user_info");
    // }
    else {
      return AjaxRespUtils.renderErrors("用户类型不正确");
    }
  }

  /**
   * 编辑车主资料——车型
   * 
   * @param model
   * @return
   */
  @RequestMapping(value = "/user/profile/age", method = RequestMethod.POST)
  @ResponseBody
  public String postAge(Integer age, ModelMap model) {
    int type = UserUtils.currentUser().getType();
    if (type == EnumUserType.CAROWNER.getCode()) {
      try {
        TbUser user = UserUtils.currentUser();
        user.setAge(age);
        userSvc.update(user);
      }
      catch (Exception e) {
        log.error(e.getMessage());
      }
      return AjaxRespUtils.renderSuccess("年龄修改成功");
    }
    // else if (type == EnumUserType.TECHNICIAN.getCode()) {
    // return TplPathUtils.getFrontTpl("/user/technician/edit_user_info");
    // }
    else {
      return AjaxRespUtils.renderErrors("用户类型不正确");
    }
  }

  /**
   * 编辑车主资料——车型
   * 
   * @param model
   * @return
   */
  @RequestMapping(value = "/user/profile/sex", method = RequestMethod.POST)
  @ResponseBody
  public String postSex(Integer sex, ModelMap model) {
    int type = UserUtils.currentUser().getType();
    if (type == EnumUserType.CAROWNER.getCode()) {
      try {
        TbUser user = UserUtils.currentUser();
        user.setSex(sex);
        userSvc.update(user);
      }
      catch (Exception e) {
        log.error(e.getMessage());
      }
      return AjaxRespUtils.renderSuccess("性别修改成功");
    }
    // else if (type == EnumUserType.TECHNICIAN.getCode()) {
    // return TplPathUtils.getFrontTpl("/user/technician/edit_user_info");
    // }
    else {
      return AjaxRespUtils.renderErrors("用户类型不正确");
    }
  }

  @RequestMapping(value = "/user/validOldPwd", method = RequestMethod.POST)
  @ResponseBody
  public String postValidNewPwd(String oldpwd, HttpServletRequest request, HttpServletResponse response) {
    String error = checkOldPwd(oldpwd);
    if (StringUtils.isBlank(error)) {
      return AjaxRespUtils.renderSuccess("验证通过");
    }
    return AjaxRespUtils.renderErrors(error);
  }

  @RequestMapping(value = "/user/validNewPwd", method = RequestMethod.POST)
  @ResponseBody
  public String postValidNewPwd(String newpwd, String pwdrepeat, HttpServletRequest request,
      HttpServletResponse response) {
    String error = checkNewPwd(newpwd, pwdrepeat);
    if (StringUtils.isBlank(error)) {
      return AjaxRespUtils.renderSuccess("验证通过");
    }
    return AjaxRespUtils.renderErrors(error);
  }

  @RequestMapping(value = "/user/change_pwd", method = RequestMethod.POST)
  @ResponseBody
  public String postChangePwd(String oldpwd, String newpwd, String pwdrepeat, HttpServletRequest request,
      HttpServletResponse response) {
    String error = checkOldPwd(oldpwd);
    if (StringUtils.isNotBlank(error)) {
      return AjaxRespUtils.renderErrors(error);
    }
    error = checkNewPwd(newpwd, pwdrepeat);
    if (StringUtils.isNotBlank(error)) {
      return AjaxRespUtils.renderErrors(error);
    }

    TbUser user = UserUtils.currentUser();
    String passwordMd5 = new Md5Hash(newpwd, user.getUserId().toString()).toString();
    user.setPassword(passwordMd5);
    try {
      userSvc.update(user);
      return AjaxRespUtils.renderSuccess("修改成功");
    }
    catch (Exception e) {
      e.printStackTrace();
    }
    return AjaxRespUtils.renderErrors("修改密码失败");
  }

  @RequestMapping(value = "/sendSMS.json", method = RequestMethod.POST)
  @ResponseBody
  public String postSendSMS(String newphone, String oldphone, HttpSession session) {
    Map<String, Object> result = new HashMap<String, Object>();
    // 验证原手机号
    String errorMsg = checkOldPhone(oldphone);
    if (null != errorMsg) {
      return AjaxRespUtils.renderErrors(result, errorMsg);
    }
    // 验证新手机号
    if (oldphone.equals(newphone)) {
      return AjaxRespUtils.renderErrors(result, "新手机号不能与原来相同");
    }
    else if (StringUtils.isBlank(newphone)) {
      return AjaxRespUtils.renderErrors(result, "新手机号不能为空");
    }
    else if (!newphone.matches("^1\\d{10}$")) {
      return AjaxRespUtils.renderErrors(result, "新手机号格式不正确");
    }
    try {
      String smsCode = RandomUtil.getNumStr(4);
      smsSvc.sendMessage(newphone, smsCode, session);
      log.debug("向{}发送短信——验证码为【{}】", newphone, smsCode);
      Object codeObj = session.getAttribute(BaseConstans.USER_SMS_KEY);
      if (null != codeObj) {
        Object[] codeEntry = (Object[]) codeObj;
        long timeout = Long.parseLong(codeEntry[2].toString());
        result.put("timeout", timeout);
      }
      return AjaxRespUtils.renderSuccess(result, "发送成功");
    }
    catch (

    RuntimeException e) {
      String msg = e.getMessage();
      String[] errorInfo = msg.split("\\|");
      result.put("timeout", errorInfo[1]);
    }
    return AjaxRespUtils.renderErrors(result, "发送验证码过频繁");
  }

  @RequestMapping(value = "/user/change_phone", method = RequestMethod.POST)
  @ResponseBody
  public String postChangePhone(String oldphone, String newphone, String smscode, HttpServletRequest request,
      HttpSession session) {
    String error = checkOldPhone(oldphone);
    if (StringUtils.isNotBlank(error)) {
      return AjaxRespUtils.renderErrors(error);
    }
    Object codeObj = session.getAttribute(BaseConstans.USER_SMS_KEY);
    if (null != codeObj) {
      Object[] codeEntry = (Object[]) codeObj;
      String codeInSession = codeEntry[0].toString();
      if (StringUtils.isBlank(smscode)) {
        return AjaxRespUtils.renderErrors("验证码不能为空");
      }
      if (!smscode.equals(codeInSession)) {
        return AjaxRespUtils.renderErrors("验证码不正确");
      }
    }
    TbUser user = UserUtils.currentUser();
    user.setUsername(newphone);
    user.setPhone(newphone);
    try {
      userSvc.update(user);
      return AjaxRespUtils.renderSuccess("修改成功");
    }
    catch (Exception e) {
      e.printStackTrace();
    }
    return AjaxRespUtils.renderErrors("修改密码失败");
  }

  private String checkOldPhone(String oldPhone) {
    if (StringUtils.isNotBlank(oldPhone)) {
      TbUser user = userSvc.findUserByPhone(oldPhone);
      if (null == user) {
        return "原手机号填写不正确";
      }
    }
    else {
      return "请填写原手机号";
    }
    return null;
  }

  /**
   * 验证修改密码表单填写是否正确
   * 
   * @param oldpwd 原密码
   * @param request
   * @param response
   */
  private String checkOldPwd(String oldpwd) {
    TbUser user = UserUtils.currentUser();
    boolean pass = false;
    if (StringUtils.isNotBlank(oldpwd)) {
      pass = userSvc.isPasswordValid(user.getUserId(), oldpwd);
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
    int level = userSvc.isNewPasswordValid(newpwd);
    if (level == 0) {
      return "新密码不符合要求";
    }
    if (!newpwd.equals(pwdrepeat)) {
      return "两次输入的密码不一样";
    }
    return null;
  }

}
