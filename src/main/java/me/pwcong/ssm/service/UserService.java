package me.pwcong.ssm.service;

import me.pwcong.ssm.entity.User;

public interface UserService {
	
	
	public User login(User user) throws Exception;
	public User register(User user) throws Exception;
	public User updateUser(User user) throws Exception;

}
