package me.pwcong.ssm.entity;

import java.util.Date;

import me.pwcong.ssm.base.BaseEntity;

public class User extends BaseEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6080675575017033915L;

	String token;
	String userId;
	String password;
	String portraitUri;
	Date createdAt;
	Date updatedAt;
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPortraitUri() {
		return portraitUri;
	}
	public void setPortraitUri(String portraitUri) {
		this.portraitUri = portraitUri;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	public User(String token, String userId, String password, String portraitUri, Date createdAt, Date updatedAt) {
		super();
		this.token = token;
		this.userId = userId;
		this.password = password;
		this.portraitUri = portraitUri;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}
	
	public User() {
	}
	@Override
	public String toString() {
		return "User [token=" + token + ", userId=" + userId + ", password=" + password + ", portraitUri=" + portraitUri
				+ ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + "]";
	}
	
	
	
	
	
	
	
}
