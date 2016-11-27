package com.wx.server.web.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wx.server.base.BaseConstans;
import com.wx.server.base.WxKaptchaExtend;
import com.wx.server.entity.TbUser;
import com.wx.server.exception.BadCaptchaException;
import com.wx.server.service.TbUserService;
import com.wx.server.vo.UserWebVo;

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
	public @ResponseBody UserWebVo login(@RequestBody TbUser user) {

		try {
			TbUser login = userService.login(user);
			return new UserWebVo(BaseConstans.OK, "登录成功", login);
		} catch (Exception e) {
			e.printStackTrace();
			return new UserWebVo(BaseConstans.ERROR, "登录失败", null);
		}
	}

	@RequestMapping(value = "/login/register.do", method = RequestMethod.POST)
	public String register(HttpServletRequest req, TbUser user, String password1) {
		try {
			if (validCaptcha(req)) {
				if (!user.getPassword().equals(password1)) {
					return "redirect:/register.html?error=3";
				}
				TbUser register = userService.register(user);
				return "redirect:/login.html";
			} else {
				return "redirect:/register.html?error=2";
			}
		} catch (BadCaptchaException e) {
			return "redirect:/register.html?error=1";
		} catch (Exception e) {
			e.printStackTrace();
			return "数据一场";
		}

	}
}
