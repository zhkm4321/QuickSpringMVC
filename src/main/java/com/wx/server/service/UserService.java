package com.wx.server.service;

import java.util.List;

import com.wx.server.entity.TbPermission;
import com.wx.server.entity.TbRole;
import com.wx.server.vo.UserVo;

public interface UserService extends CommonService {

  public UserVo findUserById(Integer userId);

  public UserVo findUserByUsername(String username);

  public UserVo findUserByPhone(String phone);

  public UserVo login(UserVo user) throws Exception;

  public UserVo register(UserVo user) throws Exception;

  public UserVo update(UserVo user);

  public UserVo saveOrupdateWxUserInfo(UserVo vo);

  public List<TbPermission> findUserPermission(UserVo user);

  public List<TbRole> findUserRole(UserVo user);

  public List<TbPermission> findUserPermissionByUsername(String username);

  public List<TbRole> findUserRoleByUsername(String username);

  /**
   * 密码与用户是否对应
   * 
   * @param userId
   * @param origPwd
   * @return
   */
  public boolean isPasswordValid(Integer userId, String origPwd);

  /**
   * 新密码是否满足复杂度要求
   * 
   * @param newpwd
   * @return
   */
  public int isNewPasswordValid(String newpwd);
}
