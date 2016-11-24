package com.wx.server.vo;

import com.wx.server.entity.TbUser;

public class UserVo {

	TbUser user;

	public TbUser getUser() {
		return user;
	}

	public void setUser(TbUser user) {
		this.user = user;
	}

	public UserVo(TbUser user) {
		super();
		this.user = user;
	}
	
	public UserVo() {
	}

	@Override
	public String toString() {
		return "UserVo [user=" + user + "]";
	}
	
	
}
