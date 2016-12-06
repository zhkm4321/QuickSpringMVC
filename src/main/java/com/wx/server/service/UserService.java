package com.wx.server.service;

import java.util.List;

import com.wx.server.entity.TbPermission;
import com.wx.server.entity.TbRole;
import com.wx.server.entity.TbUser;

public interface UserService extends CommonService {

  public TbUser findUserByUsername(String username);

  public TbUser login(TbUser user) throws Exception;

  public TbUser register(TbUser user) throws Exception;

  public TbUser update(TbUser user) throws Exception;

  public List<TbPermission> findUserPermission(TbUser user);

  public List<TbRole> findUserRole(TbUser user);

  public List<TbPermission> findUserPermissionByUsername(String username);

  public List<TbRole> findUserRoleByUsername(String username);
}
