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
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.apache.shiro.util.CollectionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.wx.server.entity.TbRolePermission;
import com.wx.server.entity.TbRole;
import com.wx.server.service.RepairShopService;
import com.wx.server.service.TechnicianService;
import com.wx.server.service.UserService;
import com.wx.server.vo.UserVo;

public class TbUserRealm extends AuthorizingRealm {

  private static Logger log = LoggerFactory.getLogger(TbUserRealm.class);

  @Autowired
  private UserService userSvc;

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
    UserVo user = (UserVo) principals.getPrimaryPrincipal();

    List<TbRole> roleList = userSvc.findUserRoleByUsername(user.getUsername());
    // 角色字的集合
    Set<String> roles = new HashSet<String>();
    if (!CollectionUtils.isEmpty(roleList)) {
      for (Iterator<TbRole> it = roleList.iterator(); it.hasNext();) {
        TbRole role = (TbRole) it.next();
        roles.add(role.getValue());
      }
    }
    List<TbRolePermission> permissionList = userSvc.findUserPermissionByUsername(user.getUsername());
    // 权限字的集合
    Set<String> permissions = new HashSet<String>();
    if (!CollectionUtils.isEmpty(permissionList)) {
      for (Iterator<TbRolePermission> it = permissionList.iterator(); it.hasNext();) {
        TbRolePermission per = (TbRolePermission) it.next();
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

    String username = (String) token.getPrincipal();
    UserVo user = userSvc.findUserByUsername(username);
    // 用户状态判断，返回不同的异常
    if (user == null) {
      // 木有找到用户
      throw new UnknownAccountException("没有找到该账号");
    }
    if (-1 == user.getStatus()) {// 帐号锁定
      throw new LockedAccountException();
    }

    /**
     * 交给AuthenticatingRealm使用CredentialsMatcher进行密码匹配，如果觉得人家的不好可以在此判断或自定义实现
     */
    SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user, user.getPassword(),
        ByteSource.Util.bytes(user.getUserId().toString()), getName());

    return info;
  }

  @Override
  public boolean supports(AuthenticationToken token) {
    if (token instanceof UsernamePasswordToken) {
      return true;
    }
    return super.supports(token);
  }

  @Override
  public String getName() {
    return getClass().getName();
  }
}