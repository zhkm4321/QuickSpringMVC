package me.pwcong.ssm.dao;

import me.pwcong.ssm.entity.User;
import me.pwcong.ssm.vo.UserVo;

public interface UserMapper {
	
	public void add(UserVo userVo);
	public void deleteByUserId(String userId);
	public User findByUserId(String userId);
	public void update(UserVo userVo);
}
