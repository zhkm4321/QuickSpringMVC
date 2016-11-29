package com.wx.server.base;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;

import com.google.code.kaptcha.servlet.KaptchaExtend;
import com.wx.server.utils.CaptchaUtils;

public abstract class WxKaptchaExtend extends KaptchaExtend {

	public static String captcha_url = "/captcha.jpg";

	/**
	 * 设置captcha的值为验证码的html代码
	 * 
	 * @param session
	 * @param mav
	 */
	public void addCaptcha(HttpSession session, ModelAndView mav) {
		String cp = session.getServletContext().getContextPath();
		mav.addObject("captcha", "<img class='captcha' src='" + cp + captcha_url + "' alt='captcha'/>");
	}

	/**
	 * 设置captcha的值为验证码的html代码
	 * 
	 * @param session
	 * @param mav
	 */
	public void addCaptcha(HttpSession session, ModelMap mav) {
		String cp = session.getServletContext().getContextPath();
		mav.put("captcha", "<img class='captcha' src='" + cp + captcha_url + "' alt='captcha'/>");
	}

	/**
	 * 设置captcha的值为验证码的html代码
	 * 
	 * @param session
	 * @param mav
	 */
	public void addCaptcha(HttpSession session, Map mav) {
		String cp = session.getServletContext().getContextPath();
		mav.put("captcha", "<img class='captcha' src='" + cp + captcha_url + "' alt='captcha'/>");
	}

	/**
	 * 检查验证码是否正确
	 * 
	 * @param request
	 * @return
	 */
	public boolean validCaptcha(HttpServletRequest request) {
		return CaptchaUtils.validCaptcha(request);
	}
}
