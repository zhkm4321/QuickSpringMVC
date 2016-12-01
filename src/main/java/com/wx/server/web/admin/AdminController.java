package com.wx.server.web.admin;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
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
import com.wx.server.service.TbUserService;
import com.wx.server.shiro.utils.TbUserUtils;
import com.wx.server.web.base.WxKaptchaExtend;

@Controller
@RequestMapping(value = "/wxbackstage")
public class AdminController extends WxKaptchaExtend {

	@Autowired
	TbUserService userService;

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup2(HttpSession session, ModelMap mav) {
		addCaptcha(session, mav);
		return "/signup";
	}

	@RequestMapping(value = "/signup.json", method = RequestMethod.POST)
	@ResponseBody
	public String login(HttpServletRequest request, TbUser user) {
		Map<String, Object> result = new HashMap<String, Object>();

		Object errorClassName = request.getAttribute("shiroLoginFailure");
		String authticationError = null;
		if (null != errorClassName) {
			if (UnknownAccountException.class.equals(errorClassName.getClass())) {
				authticationError = "用户名或密码错误";
			} else if (IncorrectCredentialsException.class.equals(errorClassName.getClass())) {
				authticationError = "用户名或密码错误";
			} else if (IncorrectCaptchaException.class.equals(errorClassName.getClass())) {
				authticationError = "验证码错误";
			} else if (errorClassName != null) {
				authticationError = "未知错误：" + errorClassName;
			}
		}
		if (null != authticationError) {
			BaseConstans.wrapError(authticationError, result);
		} else {
			BaseConstans.wrapSuccess(true, result);
		}
		return JSON.toJSONString(result);
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutAndRedirect(String returnUrl, HttpSession session, ModelMap mav) {
		try {
			TbUserUtils.logout();
		} catch (Exception e) {
			BaseConstans.wrapError("注销失败", mav);
		}
		return "redirect:/wxbackstage/signup";
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(HttpSession session, ModelMap mav) {
		return "/index";
	}
}
