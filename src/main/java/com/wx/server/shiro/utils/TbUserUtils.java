package com.wx.server.shiro.utils;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

import com.wx.server.entity.TbUser;

public class TbUserUtils {
	/**
	 * 获取当前登录用户
	 * 
	 * @return
	 */
	public static TbUser currentUser() {
		Subject subject = SecurityUtils.getSubject();
		Object principal = subject.getPrincipal();
		if (principal != null) {
			if (principal instanceof TbUser)
				return (TbUser) principal;
			else
				return null;
		} else {
			return null;
		}
	}

	public static void logout() {
		if (null != SecurityUtils.getSubject()) {
			SecurityUtils.getSubject().logout();
		}
	}
}
