package com.wx.server.realm;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.wx.server.entity.Permission;
import com.wx.server.entity.TbRole;
import com.wx.server.entity.TbUser;
import com.wx.server.service.TbUserService;

public class TbUserRealm extends AuthorizingRealm {
	@Autowired
	private TbUserService userService;

	/**
	 * 授权操作
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		// String username = (String) getAvailablePrincipal(principals);
		String username = (String) principals.getPrimaryPrincipal();

		Set<TbRole> roleSet = userService.findTbUserByUsername(username).getRoleSet();
		// 角色名的集合
		Set<String> roles = new HashSet<String>();
		// 权限名的集合
		Set<String> permissions = new HashSet<String>();

		Iterator<TbRole> it = roleSet.iterator();
		while (it.hasNext()) {
			roles.add(it.next().getName());
			for (Permission per : it.next().getPermissionSet()) {
				permissions.add(per.getName());
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
		TbUser user = userService.findTbUserByUsername(username);

		if (user == null) {
			// 木有找到用户
			throw new UnknownAccountException("没有找到该账号");
		}
		/*
		 * if(Boolean.TRUE.equals(user.getLocked())) { throw new
		 * LockedAccountException(); //帐号锁定 }
		 */

		/**
		 * 交给AuthenticatingRealm使用CredentialsMatcher进行密码匹配，如果觉得人家的不好可以在此判断或自定义实现
		 */
		SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user.getUsername(), user.getPassword(), getName());

		return info;
	}

	@Override
	public String getName() {
		return getClass().getName();
	}
}