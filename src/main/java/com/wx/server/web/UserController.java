package com.wx.server.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wx.server.base.BaseController;
import com.wx.server.entity.TbUser;
import com.wx.server.service.TbUserService;
import com.wx.server.vo.UserWebVo;

@Controller
public class UserController extends BaseController{
	
	@Autowired
	TbUserService userService;

	@RequestMapping(value="/user/login.action",method=RequestMethod.POST)
	public @ResponseBody UserWebVo login(@RequestBody TbUser user){
		
		try {
			TbUser login = userService.login(user);
			return new UserWebVo(OK, "登录成功", login);
		} catch (Exception e) {
			e.printStackTrace();
			return new UserWebVo(ERROR, "登录失败", null);
		}
	}
	
	
	@RequestMapping(value="/user/register.action",method=RequestMethod.POST)
	public @ResponseBody UserWebVo register(@RequestBody TbUser user){
		
		try {
			TbUser register = userService.register(user);
			return new UserWebVo(OK,"注册成功",register);
		} catch (Exception e) {
			e.printStackTrace();
			return new UserWebVo(ERROR, e.getMessage(), null);
		}
		
	}
	
	
}
