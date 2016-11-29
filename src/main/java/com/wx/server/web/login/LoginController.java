package com.wx.server.web.login;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.wx.server.base.BaseConstans;
import com.wx.server.base.WxKaptchaExtend;
import com.wx.server.entity.TbUser;
import com.wx.server.exception.BadCaptchaException;
import com.wx.server.service.TbUserService;

@Controller
public class LoginController extends WxKaptchaExtend {
	@Autowired
	TbUserService userService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpSession session, ModelMap mav) {
		addCaptcha(session, mav);
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

	/**
	 * captcha
	 */
	@RequestMapping(value = "/captcha.jpg", method = RequestMethod.GET)
	public void captcha(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.captcha(req, resp);
	}

	@RequestMapping(value = "/login/login.do", method = RequestMethod.POST)
	@ResponseBody
	public String login(HttpServletRequest request, TbUser user) {
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			TbUser login = userService.login(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return JSON.toJSONString(result);
	}

	@RequestMapping(value = "/login/register.do", method = RequestMethod.POST)
	@ResponseBody
	public String register(HttpServletRequest request, TbUser user, String password1) {
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			if (validCaptcha(request)) {
				if (!user.getPassword().equals(password1)) {
					BaseConstans.wrapError("两次输入密码 不一致", result);
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
		} catch (BadCaptchaException e) {
			BaseConstans.wrapError("验证码不能为空", result);
		} catch (Exception e) {
			e.printStackTrace();
			BaseConstans.wrapError("程序内部异常", result);
		}
		return JSON.toJSONString(result);

	}
}
