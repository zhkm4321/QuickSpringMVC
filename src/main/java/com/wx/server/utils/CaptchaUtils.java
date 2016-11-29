package com.wx.server.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.wx.server.exception.IncorrectCaptchaException;

public class CaptchaUtils {
	/**
	 * 检查验证码是否正确
	 * 
	 * @param request
	 * @return
	 */
	public static boolean validCaptcha(HttpServletRequest request) {
		String captcha = request.getParameter("captcha");
		if (!StringUtil.isNullOrEmpty(captcha)) {
			if (captcha.equals(getGeneratedKey(request))) {
				return true;
			}
		} else {
			throw new IncorrectCaptchaException("null captcha");
		}
		return false;
	}

	private static Object getGeneratedKey(HttpServletRequest request) {
		HttpSession session = request.getSession();
		return (String) session.getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
	}
}
