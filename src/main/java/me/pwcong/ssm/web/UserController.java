package me.pwcong.ssm.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import me.pwcong.ssm.base.BaseController;
import me.pwcong.ssm.entity.User;
import me.pwcong.ssm.service.UserService;
import me.pwcong.ssm.vo.UserWebVo;

@Controller
public class UserController extends BaseController{
	
	@Autowired
	UserService userService;

	@RequestMapping(value="/user/login.action",method=RequestMethod.POST)
	public @ResponseBody UserWebVo login(@RequestBody User user){
		
		try {
			User login = userService.login(user);
			return new UserWebVo(OK, "登录成功", login);
		} catch (Exception e) {
			e.printStackTrace();
			return new UserWebVo(ERROR, "登录失败", null);
		}
	}
	
	
	@RequestMapping(value="/user/register.action",method=RequestMethod.POST)
	public @ResponseBody UserWebVo register(@RequestBody User user){
		
		try {
			User register = userService.register(user);
			return new UserWebVo(OK,"注册成功",register);
		} catch (Exception e) {
			e.printStackTrace();
			return new UserWebVo(ERROR, e.getMessage(), null);
		}
		
	}
	
	
}
