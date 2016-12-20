package com.wx.server.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.wx.server.conf.Constants;
import com.wx.server.conf.EnumUserType;
import com.wx.server.dao.TbRepairShopMapper;
import com.wx.server.dao.TbRoleMapper;
import com.wx.server.dao.TbRolePermissionMapper;
import com.wx.server.dao.TbUserMapper;
import com.wx.server.dao.TbUserRoleMapper;
import com.wx.server.dao.custom.VTechCustomMapper;
import com.wx.server.entity.TbRepairShop;
import com.wx.server.entity.TbRepairShopExample;
import com.wx.server.entity.TbRole;
import com.wx.server.entity.TbRoleExample;
import com.wx.server.entity.TbRolePermission;
import com.wx.server.entity.TbRolePermissionExample;
import com.wx.server.entity.TbUser;
import com.wx.server.entity.TbUserExample;
import com.wx.server.entity.TbUserRole;
import com.wx.server.entity.TbUserRoleExample;
import com.wx.server.entity.custom.VTechnician;
import com.wx.server.exception.DuplicateException;
import com.wx.server.service.UserService;
import com.wx.server.service.abs.AbstractCommonService;
import com.wx.server.utils.DateUtil;
import com.wx.server.utils.StringUtils;
import com.wx.server.vo.UserVo;

@Service
public class UserServiceImpl extends AbstractCommonService<TbUser> implements UserService {

  public UserServiceImpl() {
    super(TbUser.class);
  }

  @Autowired
  TbUserMapper userMapper;

  @Autowired
  VTechCustomMapper techMapper;

  @Autowired
  TbRepairShopMapper rSMapper;

  @Autowired
  TbUserRoleMapper userRoleMapper;

  @Autowired
  TbRoleMapper roleMapper;

  @Autowired
  TbRolePermissionMapper permissionMapper;

  @Autowired
  @Qualifier("credentialsMatcher")
  HashedCredentialsMatcher credentialsMatcher;

  @Override
  public UserVo findUserById(Integer id) {
    TbUser user = getById(id);
    UserVo userVo = new UserVo(user);
    if (user.getType().equals(EnumUserType.CAROWNER.getCode())) {

    }
    else if (user.getType().equals(EnumUserType.TECHNICIAN.getCode())) {
      VTechnician technician = techMapper.getByUserId(user.getUserId());
      userVo.setTechnician(technician);
    }
    else if (user.getType().equals(EnumUserType.REPAIRSHOP.getCode())) {
      TbRepairShopExample example = new TbRepairShopExample();
      TbRepairShopExample.Criteria criteria = example.createCriteria();
      criteria.andUserIdEqualTo(user.getUserId());
      List<TbRepairShop> list = rSMapper.selectByExample(example);
      if (null != list && list.size() == 1) {
        userVo.setRepairShop(list.get(0));
      }
    }
    return userVo;
  }

  @Override
  public UserVo findUserByUsername(String username) {
    TbUserExample _userexample = new TbUserExample();
    TbUserExample.Criteria criteria = _userexample.createCriteria();
    criteria.andUsernameEqualTo(username);
    List<TbUser> users = userMapper.selectByExample(_userexample);
    if (users.size() == 1) {
      return findUserById(users.get(0).getUserId());
    }
    else {
      new DuplicateException("用户名不唯一:" + _userexample);
    }
    return null;
  }

  @Override
  public UserVo findUserByPhone(String phone) {
    TbUserExample _userexample = new TbUserExample();
    TbUserExample.Criteria criteria = _userexample.createCriteria();
    criteria.andPhoneEqualTo(phone);
    List<TbUser> users = userMapper.selectByExample(_userexample);
    if (users.size() == 1) {
      return findUserById(users.get(0).getUserId());
    }
    else {
      new DuplicateException("手机号不唯一:" + _userexample);
    }
    return null;
  }

  public TbUser findUserByUnionId(String unionId) {
    TbUserExample example = new TbUserExample();
    TbUserExample.Criteria criteria = example.createCriteria();
    criteria.andUnionIdEqualTo(unionId);
    List<TbUser> userList = userMapper.selectByExample(example);
    if (!CollectionUtils.isEmpty(userList)) {
      return userList.get(0);
    }
    return null;
  }

  @Override
  public UserVo login(UserVo user) throws Exception {

    TbUser _user = null;
    _user = userMapper.selectByPrimaryKey(user.getUserId());

    if (_user == null) {
      throw new Exception("用户不存在");
    }

    if (!StringUtils.equal(_user.getPassword(), user.getPassword())) {
      throw new Exception("密码错误");
    }

    return new UserVo(user);

  }

  @Override
  public UserVo register(UserVo user) throws Exception {

    if (StringUtils.isNullOrEmpty(user.getPassword()) || StringUtils.isNullOrEmpty(user.getUsername())) {
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
    String passwordMd5 = new Md5Hash(paswd == null ? "" : paswd, user.getUserId().toString()).toString();
    user.setPassword(passwordMd5);
    userMapper.updateByPrimaryKey(user);
    return new UserVo(user);
  }

  @Override
  public UserVo update(UserVo user) {
    user.setUpdateTime(new java.util.Date());
    userMapper.updateByPrimaryKey(user);
    return new UserVo(user);
  }

  @Override
  public UserVo saveOrupdateWxUserInfo(UserVo vo) {
    TbUser user = findUserByUnionId(vo.getUnionId());
    boolean isUpdate = true;
    if (null == user) {
      isUpdate = false;
      user = new TbUser();
    }
    user.setHeadImg(vo.getHeadImg());
    user.setNickname(vo.getNickname());
    user.setSex(vo.getSex());
    user.setCountry(vo.getCountry());
    user.setProvince(vo.getProvince());
    user.setCity(vo.getCity());
    user.setStatus(vo.getStatus());
    user.setAccessToken(vo.getAccessToken());
    user.setExpiresIn(vo.getExpiresIn());
    user.setRefreshToken(vo.getRefreshToken());
    user.setOpenId(vo.getOpenId());
    user.setScope(vo.getScope());
    user.setUnionId(vo.getUnionId());
    user.setOpenId(vo.getOpenId());
    user.setStatus(vo.getStatus());
    user.setType(vo.getType());
    if (isUpdate) {
      vo.setUserId(user.getUserId());
      // 更新用户
      update(user);
    }
    else {
      // 新添加一个用户
      try {
        userMapper.insert(user);
        vo.setCreateTime(new java.util.Date());
        vo.setUserId(user.getUserId());
      }
      catch (Exception e) {
        e.printStackTrace();
      }
    }
    return vo;
  }

  @Override
  public List<TbRolePermission> findUserPermission(UserVo user) {
    List<TbRole> role = findUserRole(user);
    if (CollectionUtils.isEmpty(role)) {
      return null;
    }
    List<Integer> roleIds = new ArrayList<Integer>();
    for (TbRole tbRole : role) {
      roleIds.add(tbRole.getId());
    }
    TbRolePermissionExample example = new TbRolePermissionExample();
    TbRolePermissionExample.Criteria criteria = example.createCriteria();
    criteria.andRoleIdIn(roleIds);
    return permissionMapper.selectByExample(example);
  }

  @Override
  public List<TbRole> findUserRole(UserVo user) {
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
  public List<TbRolePermission> findUserPermissionByUsername(String username) {
    UserVo user = findUserByUsername(username);
    return findUserPermission(user);
  }

  @Override
  public List<TbRole> findUserRoleByUsername(String username) {
    UserVo user = findUserByUsername(username);
    return findUserRole(user);
  }

  @Override
  public boolean isPasswordValid(Integer userId, String origPwd) {
    TbUser user = userMapper.selectByPrimaryKey(userId);
    String dbPwd = user.getPassword();
    String hashPwd = new SimpleHash("md5", origPwd, ByteSource.Util.bytes(userId.toString())).toHex();
    if (dbPwd.equals(hashPwd)) {
      return true;
    }
    return false;
  }

  @Override
  public int isNewPasswordValid(String newpwd) {
    // 复杂（同时包含数字，字母，特殊符号）
    String level3 = "^^(?![a-zA-z]+$)(?!\\d+$)(?![!@#$%^&*_-]+$)(?![a-zA-z\\d]+$)(?![a-zA-z!@#$%^&*_-]+$)(?![\\d!@#$%^&*_-]+$)[a-zA-Z\\d!@#$%^&*_-]+$";
    // 中级（包含字母和数字）
    String level2 = "^(?![a-zA-z]+$)(?!\\d+$)(?![!@#$%^&*]+$)[a-zA-Z\\d!@#$%^&*]+$";
    // 简单（只包含数字或字母）
    String level1 = "^(?:\\d+|[a-zA-Z]+|[!@#$%^&*]+)$";

    if (newpwd.matches(level3)) {
      return 3;
    }
    else if (newpwd.matches(level2)) {
      return 2;
    }
    else if (newpwd.matches(level1)) {
      return 1;
    }
    else {
      return 0;
    }
  }
}
