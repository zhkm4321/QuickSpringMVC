package com.wx.server.shiro.realm;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.CollectionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.wx.server.conf.EnumUserType;
import com.wx.server.entity.TbPermission;
import com.wx.server.entity.TbRole;
import com.wx.server.entity.TbUser;
import com.wx.server.service.RepairShopService;
import com.wx.server.service.TechnicianService;
import com.wx.server.service.UserService;
import com.wx.server.shiro.token.UserIdToken;
import com.wx.server.vo.UserVo;

public class WxUserRealm extends AuthorizingRealm {

  private static Logger log = LoggerFactory.getLogger(WxUserRealm.class);

  @Autowired
  private UserService userService;

  @Autowired
  private TechnicianService techSvc;

  @Autowired
  private RepairShopService rShopSvc;

  /**
   * 授权操作
   */
  @Override
  protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
    // 获取登录信息
    TbUser user = (TbUser) principals.getPrimaryPrincipal();

    List<TbRole> roleList = userService.findUserRole(user);
    // 角色字的集合
    Set<String> roles = new HashSet<String>();
    if (!CollectionUtils.isEmpty(roleList)) {
      for (Iterator<TbRole> it = roleList.iterator(); it.hasNext();) {
        TbRole role = (TbRole) it.next();
        roles.add(role.getValue());
      }
    }
    List<TbPermission> permissionList = userService.findUserPermission(user);
    // 权限字的集合
    Set<String> permissions = new HashSet<String>();
    if (!CollectionUtils.isEmpty(permissionList)) {
      for (Iterator<TbPermission> it = permissionList.iterator(); it.hasNext();) {
        TbPermission per = (TbPermission) it.next();
        permissions.add(per.getValue());
      }
    }

    SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();

    authorizationInfo.addRoles(roles);
    authorizationInfo.addStringPermissions(permissions);

    return authorizationInfo;
  }

  /**
   * 身份验证操作
   */
  @Override
  protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {

    Integer userId = (Integer) token.getPrincipal();
    TbUser user = userService.getById(userId);
    UserVo userVo = null;
    // 用户状态判断，返回不同的异常
    if (user == null) {
      // 木有找到用户
      throw new UnknownAccountException("没有找到该账号");
    }
    else if (user.getType().equals(EnumUserType.CAROWNER.getCode())) {
      userVo = (UserVo) user;
    }
    else if (user.getType().equals(EnumUserType.TECHNICIAN.getCode())) {
      userVo = techSvc.getById(user.getUserId());
    }
    else if (user.getType().equals(EnumUserType.REPAIRSHOP.getCode())) {
      userVo = rShopSvc.getById(user.getUserId());
    }
    if (-1 == user.getStatus()) {// 帐号锁定
      throw new LockedAccountException();
    }

    /**
     * 通过验证userId判断用户是否可用
     */
    SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user, null, getName());
    return info;
  }

  @Override
  public boolean supports(AuthenticationToken token) {
    return token instanceof UserIdToken;
  }

  @Override
  public String getName() {
    return getClass().getName();
  }
}