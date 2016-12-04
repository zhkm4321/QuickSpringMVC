package com.wx.server.utils;

public abstract class StringUtil {

  public static boolean isNullOrEmpty(String string) {

    if (null == string) {
      return true;
    }
    else if (string.isEmpty()) {
      return true;
    }
    else {
      return false;
    }

  }

  public static boolean equal(String s1, String s2) {
    return s1.equals(s2);
  }

  // 首字母转小写
  public static String toLowerCaseFirstOne(String s) {
    if (Character.isLowerCase(s.charAt(0)))
      return s;
    else
      return (new StringBuilder()).append(Character.toLowerCase(s.charAt(0))).append(s.substring(1)).toString();
  }

  // 首字母转大写
  public static String toUpperCaseFirstOne(String s) {
    if (Character.isUpperCase(s.charAt(0)))
      return s;
    else
      return (new StringBuilder()).append(Character.toUpperCase(s.charAt(0))).append(s.substring(1)).toString();
  }

}
