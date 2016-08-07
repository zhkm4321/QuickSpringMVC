package me.pwcong.ssm.entity;

import java.util.Date;

import me.pwcong.ssm.base.BaseEntity;

public class User extends BaseEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6080675575017033915L;

	String userId;
	String username;
	String password;
	String portraitUri;
	String token;
	Date createdAt;
	Date updatedAt;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
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
	public User(String userId, String username, String password, String portraitUri, String token, Date createdAt,
			Date updatedAt) {
		super();
		this.userId = userId;
		this.username = username;
		this.password = password;
		this.portraitUri = portraitUri;
		this.token = token;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}
	
	public User() {
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", username=" + username + ", password=" + password + ", portraitUri="
				+ portraitUri + ", token=" + token + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + "]";
	}
	
	
	
	
}
