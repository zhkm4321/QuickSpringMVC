package com.wx.server.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.wx.server.conf.Constants;
import com.wx.server.dao.TbPermissionMapper;
import com.wx.server.dao.TbRoleMapper;
import com.wx.server.dao.TbUserMapper;
import com.wx.server.dao.TbUserRoleMapper;
import com.wx.server.entity.TbPermission;
import com.wx.server.entity.TbPermissionExample;
import com.wx.server.entity.TbRole;
import com.wx.server.entity.TbRoleExample;
import com.wx.server.entity.TbUser;
import com.wx.server.entity.TbUserExample;
import com.wx.server.entity.TbUserRole;
import com.wx.server.entity.TbUserRoleExample;
import com.wx.server.exception.DuplicateException;
import com.wx.server.service.UserService;
import com.wx.server.service.abs.AbstractCommonService;
import com.wx.server.utils.DateUtil;
import com.wx.server.utils.StringUtil;

@Service
public class UserServiceImpl extends AbstractCommonService<TbUser> implements UserService {

  public UserServiceImpl() {
    super(TbUser.class);
  }

  @Autowired
  TbUserMapper userMapper;

  @Autowired
  TbUserRoleMapper userRoleMapper;

  @Autowired
  TbRoleMapper roleMapper;

  @Autowired
  TbPermissionMapper permissionMapper;

  @Override
  public TbUser findUserByUsername(String username) {
    TbUserExample _userexample = new TbUserExample();
    TbUserExample.Criteria criteria = _userexample.createCriteria();
    criteria.andUsernameEqualTo(username);
    List<TbUser> users = userMapper.selectByExample(_userexample);
    if (users.size() == 1) {
      return users.get(0);
    }
    else {
      new DuplicateException("用户名不唯一:" + _userexample);
    }
    return null;
  }

  @Override
  public TbUser login(TbUser user) throws Exception {

    TbUser _user = null;
    _user = userMapper.selectByPrimaryKey(user.getUserId());

    if (_user == null) {
      throw new Exception("用户不存在");
    }

    if (!StringUtil.equal(_user.getPassword(), user.getPassword())) {
      throw new Exception("密码错误");
    }

    return _user;

  }

  @Override
  public TbUser register(TbUser user) throws Exception {

    if (StringUtil.isNullOrEmpty(user.getPassword()) || StringUtil.isNullOrEmpty(user.getUsername())) {
      throw new Exception("注册失败，用户名或密码不能为空");
    }

    TbUser _user = userMapper.selectByPrimaryKey(user.getUserId());
    if (_user != null) {
      throw new Exception("用户已存在");
    }

    user.setHeadImg(Constants.DEFAULT_POSTRAITURI);
    user.setStatus(0);
    user.setCreateTime(DateUtil.time());

    String paswd = user.getPassword();
    user.setPassword(null);
    userMapper.insert(user);
    String passwordMd5 = new Md5Hash(paswd, user.getUserId().toString()).toString();
    user.setPassword(passwordMd5);
    userMapper.updateByPrimaryKey(user);
    return user;
  }

  @Override
  public TbUser update(TbUser user) throws Exception {
    userMapper.updateByPrimaryKey(user);
    return user;
  }

  @Override
  public List<TbPermission> findUserPermission(TbUser user) {
    List<TbRole> role = findUserRole(user);
    if (CollectionUtils.isEmpty(role)) {
      return null;
    }
    List<Integer> roleIds = new ArrayList<Integer>();
    for (TbRole tbRole : role) {
      roleIds.add(tbRole.getId());
    }
    TbPermissionExample example = new TbPermissionExample();
    TbPermissionExample.Criteria criteria = example.createCriteria();
    criteria.andRoleIdIn(roleIds);
    return permissionMapper.selectByExample(example);
  }

  @Override
  public List<TbRole> findUserRole(TbUser user) {
    // 先查询关系
    TbUserRoleExample userRoleExample = new TbUserRoleExample();
    TbUserRoleExample.Criteria userRoleCriteria = userRoleExample.createCriteria();
    userRoleCriteria.andUserIdEqualTo(user.getUserId());
    List<TbUserRole> userRoles = userRoleMapper.selectByExample(userRoleExample);
    if (CollectionUtils.isEmpty(userRoles)) {
      return null;
    }
    List<Integer> roleIds = new ArrayList<Integer>();
    for (TbUserRole tbUserRole : userRoles) {
      roleIds.add(tbUserRole.getRoleId());
    }
    // 根据关系查询role
    TbRoleExample roleExample = new TbRoleExample();
    TbRoleExample.Criteria roleCriteria = roleExample.createCriteria();
    roleCriteria.andIdIn(roleIds);
    return roleMapper.selectByExample(roleExample);
  }

  @Override
  public List<TbPermission> findUserPermissionByUsername(String username) {
    TbUser user = findUserByUsername(username);
    return findUserPermission(user);
  }

  @Override
  public List<TbRole> findUserRoleByUsername(String username) {
    TbUser user = findUserByUsername(username);
    return findUserRole(user);
  }

}
