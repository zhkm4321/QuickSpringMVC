package com.wx.server.web.login;

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
import com.wx.server.service.TbUserService;
import com.wx.server.shiro.utils.TbUserUtils;
import com.wx.server.web.base.WxKaptchaExtend;

@Controller
public class LoginController extends WxKaptchaExtend {

	private static Logger log = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	TbUserService userService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpSession session, ModelMap mav) {
		addCaptcha(session, mav);
		// 注销后返回登录页
		TbUser user = TbUserUtils.currentUser();
		if (null != user) {
			TbUserUtils.logout();
			return "redirect:/login";
		}
		return "/login/login";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Integer error, HttpSession session, ModelMap mav) {
		if (null != error && error == 1) {
			mav.put("message", "请填写验证码");
		} else if (null != error && error == 2) {
			mav.put("message", "验证码填写错误");
		}
		addCaptcha(session, mav);
		return "/login/register";
	}

	@RequestMapping(value = "/login.json", method = RequestMethod.GET)
	public String loginPage(HttpSession session, ModelMap mav) {
		return "redirect:/login";
	}

	@RequestMapping(value = "/login.json", method = RequestMethod.POST)
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

	@RequestMapping(value = "/logout.json", method = RequestMethod.GET)
	@ResponseBody
	public String logout(HttpSession session, ModelMap mav) {
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			TbUserUtils.logout();
			BaseConstans.wrapSuccess("注销成功", result);
		} catch (Exception e) {
			BaseConstans.wrapError("注销失败", result);
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
		return "redirect:/login";
	}

	@RequestMapping(value = "/register.json", method = RequestMethod.POST)
	@ResponseBody
	public String register(HttpServletRequest request, TbUser user, String password1) {
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			if (validCaptcha(request)) {
				if (!user.getPassword().equals(password1)) {
					BaseConstans.wrapError("两次输入密码不一致", result);
				} else {
					TbUser exist = userService.findTbUserByUsername(user.getUsername());
					if (null == exist) {
						userService.register(user);
						BaseConstans.wrapSuccess(null, result);
					} else {
						BaseConstans.wrapError("用户名已存在", result);
					}
				}
			} else {
				BaseConstans.wrapError("验证码不正确，请重新输入", result);
			}
		} catch (IncorrectCaptchaException e) {
			BaseConstans.wrapError("验证码不能为空", result);
		} catch (Exception e) {
			e.printStackTrace();
			BaseConstans.wrapError("程序内部异常", result);
		}
		return JSON.toJSONString(result);

	}
}
