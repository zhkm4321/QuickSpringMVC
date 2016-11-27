package com.wx.server.entity;

import java.util.HashSet;
import java.util.Set;

public class TbUser {
	private Integer userId;

	private String oppenId;

	private String username;

	private String realname;

	private String password;

	private String headImg;

	private String addTime;

	private Integer areaId;

	private String areaName;

	private Integer status;

	private String memberTime;

	private Set<TbRole> roleSet = new HashSet<TbRole>();

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getOppenId() {
		return oppenId;
	}

	public void setOppenId(String oppenId) {
		this.oppenId = oppenId == null ? null : oppenId.trim();
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username == null ? null : username.trim();
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname == null ? null : realname.trim();
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password == null ? null : password.trim();
	}

	public String getHeadImg() {
		return headImg;
	}

	public void setHeadImg(String headImg) {
		this.headImg = headImg == null ? null : headImg.trim();
	}

	public String getAddTime() {
		return addTime;
	}

	public void setAddTime(String addTime) {
		this.addTime = addTime == null ? null : addTime.trim();
	}

	public Integer getAreaId() {
		return areaId;
	}

	public void setAreaId(Integer areaId) {
		this.areaId = areaId;
	}

	public String getAreaName() {
		return areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName == null ? null : areaName.trim();
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getMemberTime() {
		return memberTime;
	}

	public void setMemberTime(String memberTime) {
		this.memberTime = memberTime == null ? null : memberTime.trim();
	}

	public Set<TbRole> getRoleSet() {
		return roleSet;
	}

	public void setRoleSet(Set<TbRole> roleSet) {
		this.roleSet = roleSet;
	}

}