package com.wx.server.web.index;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wx.server.service.UserService;
import com.wx.server.utils.TplPathUtils;
import com.wx.server.web.base.WxKaptchaExtend;

@Controller
public class IndexController extends WxKaptchaExtend {

	@Autowired
	UserService userService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String root(HttpServletRequest request, HttpSession session, ModelMap model) {
		model.put("index", "html");
		return TplPathUtils.getFrontTpl("/index");
	}

	@RequestMapping(value = "/index.html", method = RequestMethod.GET)
	public String index(HttpServletRequest request, HttpSession session, ModelMap model) {
		return root(request, session, model);
	}

	/**
	 * captcha
	 */
	@RequestMapping(value = "/captcha.jpg", method = RequestMethod.GET)
	public void captcha(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.captcha(req, resp);
	}
}
