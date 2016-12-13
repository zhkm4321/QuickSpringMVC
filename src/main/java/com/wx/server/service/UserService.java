package com.wx.server.service;

import java.util.List;

import com.wx.server.entity.TbPermission;
import com.wx.server.entity.TbRole;
import com.wx.server.entity.TbUser;
import com.wx.server.vo.UserVo;

public interface UserService extends CommonService {

  public TbUser findUserByUsername(String username);

  public TbUser login(TbUser user) throws Exception;

  public TbUser register(TbUser user) throws Exception;

  public TbUser update(TbUser user);

  public UserVo saveOrupdateWxUserInfo(UserVo vo);

  public List<TbPermission> findUserPermission(TbUser user);

  public List<TbRole> findUserRole(TbUser user);

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
