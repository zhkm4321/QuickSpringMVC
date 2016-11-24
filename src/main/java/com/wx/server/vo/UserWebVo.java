package com.wx.server.vo;

import com.wx.server.base.BaseWebVo;
import com.wx.server.entity.TbUser;

public class UserWebVo extends BaseWebVo{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -2006477308534956253L;
	
	
	TbUser user;

	public TbUser getUser() {
		return user;
	}

	public void setUser(TbUser user) {
		this.user = user;
	}

	public UserWebVo(int code, String desc, TbUser user) {
		super(code, desc);
		this.user = user;
	}

	@Override
	public String toString() {
		return "UserWebVo [user=" + user + "]";
	}
	
	public UserWebVo() {
	}

	
	
}
