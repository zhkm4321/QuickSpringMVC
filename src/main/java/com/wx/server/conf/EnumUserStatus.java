package com.wx.server.conf;

/**
 * 用户状态枚举
 * 
 * @author zhenghang
 * @version 创建时间：2016年12月13日 下午12:00:17
 */
public enum EnumUserStatus {
  /**
   * 刚刚微信登录进来
   */
  BEGINNER(1, "beginner"),
  /**
   * 进阶用户
   */
  ADVANCED(2, "advanced"),
  /**
   * 已经完成注册的
   */
  REGISTERED(3, "registered"),
  /**
   * 年费用户
   */
  VIP(4, "vip"),
  /**
   * 刚刚注册完成的技师
   */
  APPRENTICE(5, "apprentice"),
  /**
   * 获得认证的技师
   */
  MASTER(6, "master"),
  /**
   * 账号被锁
   */
  LOCKED(-1, "locked");

  // 声明的枚举属性，同时生成getter方法
  private int code;

  private String name;

  // 构造函数
  private EnumUserStatus(int code, String name) {
    this.code = code;
    this.name = name;
  }

  private EnumUserStatus(String name) {
    this.name = name;
  }

  // 枚举属性的getter方法
  public int getCode() {
    return code;
  }

  public String getName() {
    return name;
  }

  // 重写toString()方法
  @Override
  public String toString() {
    return "[code:" + this.code + ",name:" + this.name + "]";
  }

  // 提供静态方法，通过code获取name的值
  public static String valueOf(int code) {

    // 遍历枚举所有实例对象
    for (EnumUserStatus type : EnumUserStatus.values()) {
      if (type.getCode() == code) {
        return type.getName();
      }
    }
    return null;
  }
}
