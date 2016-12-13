package com.wx.server.shiro.authenticator;

import java.io.Serializable;

import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.springframework.beans.factory.annotation.Autowired;

import com.wx.server.entity.TbUser;
import com.wx.server.service.UserService;

public class UserIdCredentialsMatcher implements CredentialsMatcher {

  @Autowired
  private UserService userSvc;

  @Override
  public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
    Object userId = token.getPrincipal();
    if (null != userId) {
      TbUser user = userSvc.getById((Serializable) userId);
      if (user != null) {
        return true;
      }
    }
    return false;
  }

}
