package com.wx.server.web.base;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.ResourceBundle;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;

import com.google.code.kaptcha.Producer;
import com.google.code.kaptcha.util.Config;
import com.wx.server.utils.CaptchaUtils;

/**
 * 需要使用验证码的controller需要继承该类
 * 
 * @author zhenghang E-mail: zhenghang@unitedstone.net
 * @version 创建时间：2016年12月1日 下午6:27:33
 */
public abstract class WxKaptchaExtend {

	public static String captcha_url = "/captcha.jpg";

	private static Properties props = new Properties();

	private static Producer kaptchaProducer = null;

	private static String sessionKeyValue = null;

	private static String sessionKeyDateValue = null;

	private static boolean init = false;

	public WxKaptchaExtend() {
		if (!WxKaptchaExtend.init) {
			ResourceBundle rb = ResourceBundle.getBundle("captcha.config");
			for (Iterator<String> it = rb.keySet().iterator(); it.hasNext();) {
				String key = (String) it.next();
				String value = rb.getString(key);
				WxKaptchaExtend.props.put(key, value);
			}

			// Switch off disk based caching.
			ImageIO.setUseCache(false);
			Config config = new Config(WxKaptchaExtend.props);
			WxKaptchaExtend.kaptchaProducer = config.getProducerImpl();
			WxKaptchaExtend.sessionKeyValue = config.getSessionKey();
			WxKaptchaExtend.sessionKeyDateValue = config.getSessionDate();
			WxKaptchaExtend.init = true;
		}
	}

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

	/**
	 * map it to the /url/captcha.jpg
	 * 
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void captcha(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Set standard HTTP/1.1 no-cache headers.
		resp.setHeader("Cache-Control", "no-store, no-cache");

		// return a jpeg
		resp.setContentType("image/jpeg");

		// create the text for the image
		String capText = WxKaptchaExtend.kaptchaProducer.createText();

		// store the text in the session
		req.getSession().setAttribute(WxKaptchaExtend.sessionKeyValue, capText);

		// store the date in the session so that it can be compared
		// against to make sure someone hasn't taken too long to enter
		// their kaptcha
		req.getSession().setAttribute(WxKaptchaExtend.sessionKeyDateValue, new Date());

		// create the image with the text
		BufferedImage bi = WxKaptchaExtend.kaptchaProducer.createImage(capText);

		ServletOutputStream out = resp.getOutputStream();

		// write the data out
		ImageIO.write(bi, "jpg", out);

		// fixes issue #69: set the attributes after we write the image in case
		// the image writing fails.

		// store the text in the session
		req.getSession().setAttribute(WxKaptchaExtend.sessionKeyValue, capText);

		// store the date in the session so that it can be compared
		// against to make sure someone hasn't taken too long to enter
		// their kaptcha
		req.getSession().setAttribute(WxKaptchaExtend.sessionKeyDateValue, new Date());
	}

	public String getGeneratedKey(HttpServletRequest req) {
		HttpSession session = req.getSession();
		return (String) session.getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
	}
}
