package com.wx.server.utils;

import javax.servlet.http.HttpSession;

import com.wx.server.entity.TbService;
import com.wx.server.vo.UserVo;

public class SessionUtils {

  public static final String USER_CAR_SERVICE = "user_car_service";

  public static final String USER_VO_KEY = "user_vo_key";

  public static void setUserCarService(TbService service, HttpSession session) {
    session.setAttribute(USER_CAR_SERVICE, service);
  }

  public static TbService getUserCarService(HttpSession session) {
    return (TbService) session.getAttribute(USER_CAR_SERVICE);
  }

  public static void removeUserCarService(HttpSession session) {
    session.removeAttribute(USER_CAR_SERVICE);
  }

  public static void setUserVo(UserVo vo, HttpSession session) {
    session.setAttribute(USER_VO_KEY, vo);
  }

  public static UserVo getUserVo(HttpSession session) {
    return (UserVo) session.getAttribute(USER_VO_KEY);
  }
}
