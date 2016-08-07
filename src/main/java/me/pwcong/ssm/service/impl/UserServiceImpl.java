package me.pwcong.ssm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.pwcong.ssm.conf.Constants;
import me.pwcong.ssm.dao.UserMapper;
import me.pwcong.ssm.entity.User;
import me.pwcong.ssm.service.UserService;
import me.pwcong.ssm.utils.DateUtil;
import me.pwcong.ssm.utils.StringUtil;
import me.pwcong.ssm.utils.UuidUtil;
import me.pwcong.ssm.vo.UserVo;


@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	UserMapper userMapper;
	
	
	public User login(User user) throws Exception {
		
		User _user=null;
		_user=userMapper.findByUsername(user.getUsername());
		if(_user==null){
			throw new Exception("用户不存在");
		}
		
		if(!StringUtil.equal(_user.getPassword(), user.getPassword())){
			throw new Exception("密码错误");
		}
		
		return _user;
		
	}

	public User register(User user) throws Exception {
		
		if(StringUtil.isNullOrEmpty(user.getPassword())||StringUtil.isNullOrEmpty(user.getUsername())){
			throw new Exception("注册失败，用户名或密码不能为空");
		}
		
		
		User _user=userMapper.findByUsername(user.getUsername());
		if(_user!=null){
			throw new Exception("用户已存在");
		}
		
		user.setUserId(UuidUtil.uuid());
		user.setPortraitUri(Constants.DEFAULT_POSTRAITURI);
		user.setToken(UuidUtil.uuid());
		user.setCreatedAt(DateUtil.time());
		user.setUpdatedAt(DateUtil.time());
		
		userMapper.add(new UserVo(user));
		
		return user;
	}

	public User updateUser(User user) throws Exception {
		return null;
	}
	
	
}
