package com.wx.server.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wx.server.conf.Constants;
import com.wx.server.dao.TbUserMapper;
import com.wx.server.entity.TbUser;
import com.wx.server.service.TbUserService;
import com.wx.server.utils.DateUtil;
import com.wx.server.utils.StringUtil;
import com.wx.server.utils.UuidUtil;
import com.wx.server.vo.UserVo;


@Service
public class TbUserServiceImpl implements TbUserService{
	
	@Autowired
	TbUserMapper userMapper;
	
	
	public TbUser login(TbUser user) throws Exception {
		
		TbUser _user=null;
		_user=userMapper.selectByPrimaryKey(user.getUserId());
		
		if(_user==null){
			throw new Exception("用户不存在");
		}
		
		if(!StringUtil.equal(_user.getPassword(), user.getPassword())){
			throw new Exception("密码错误");
		}
		
		return _user;
		
	}

	public TbUser register(TbUser user) throws Exception {
		
		if(StringUtil.isNullOrEmpty(user.getPassword())||StringUtil.isNullOrEmpty(user.getUsername())){
			throw new Exception("注册失败，用户名或密码不能为空");
		}
		
		
		TbUser _user=userMapper.selectByPrimaryKey(user.getUserId());
		if(_user!=null){
			throw new Exception("用户已存在");
		}
		
		user.setHeadImg(Constants.DEFAULT_POSTRAITURI);
		user.setStatus(0);
		user.setAddTime(DateUtil.getDateStr());
		user.setMemberTime(DateUtil.getDateStr());
		
		userMapper.insert(user);
		
		return user;
	}

	public TbUser updateUser(TbUser user) throws Exception {
		userMapper.updateByPrimaryKey(user);
		return user;
	}
	
	
}
