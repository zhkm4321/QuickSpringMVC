package com.wx.server.shiro.utils;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

import com.wx.server.entity.TbUser;
import com.wx.server.vo.UserVo;

public class UserUtils {
  public static final int CAR_OWNER = 1;

  public static final int TECHNICIAN = 2;

  public static final int REPAIR_SHOP = 3;

  public static final int ADMIN = 0;

  public static final int CUSTOMER_SERVICE = 8;

  /**
   * 获取当前登录用户
   * 
   * @return
   */
  public static UserVo currentUser() {
    Subject subject = SecurityUtils.getSubject();
    Object principal = subject.getPrincipal();
    if (principal != null) {
      if (principal instanceof TbUser)
        return (UserVo) principal;
      else
        return null;
    }
    else {
      return null;
    }
  }

  public static boolean isTechnician(UserVo user) {
    return user.getType().equals(TECHNICIAN);
  }

  public static boolean isAdmin(TbUser user) {
    return user.getType().equals(ADMIN);
  }

  public static boolean isRepairShop(TbUser user) {
    return user.getType().equals(REPAIR_SHOP);
  }

  public static boolean isCarOwner(TbUser user) {
    return user.getType().equals(CAR_OWNER);
  }

  public static void logout() {
    if (null != SecurityUtils.getSubject()) {
      SecurityUtils.getSubject().logout();
    }
  }
}
