package com.wx.server.shiro.filter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.web.filter.authc.UserFilter;

public class AdminUserFilter extends UserFilter {
	/**
	 * 后台登录路径
	 */
	private String adminUrl = null;

	public void setAdminUrl(String adminUrl) {
		this.adminUrl = adminUrl;
	}

	@Override
	protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue) {
		return super.isAccessAllowed(request, response, mappedValue);
	}

	@Override
	protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
		return super.onAccessDenied(request, response);
	}

	@Override
	public String getLoginUrl() {
		return adminUrl;
	}

	@Override
	public void setLoginUrl(String loginUrl) {
		adminUrl = loginUrl;
		super.setLoginUrl(adminUrl);
	}

}
