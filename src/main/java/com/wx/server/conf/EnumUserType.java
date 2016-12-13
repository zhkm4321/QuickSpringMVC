package com.wx.server.conf;

/**
 * 用户类型枚举<br>
 * admin 0<br>
 * carowner 1<br>
 * technician 2<br>
 * repairshop 3<br>
 * staff 4<br>
 * 
 * @author zhenghang
 * @version 创建时间：2016年12月13日 下午12:00:17
 */
public enum EnumUserType {

  ADMIN(0, "admin"), CAROWNER(1, "carowner"), TECHNICIAN(2, "technician"), REPAIRSHOP(3, "repairshop"), STAFF(4,
      "staff");

  // 声明的枚举属性，同时生成getter方法
  private int code;

  private String name;

  // 构造函数
  private EnumUserType(int code, String name) {
    this.code = code;
    this.name = name;
  }

  private EnumUserType(String name) {
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
    for (EnumUserType type : EnumUserType.values()) {
      if (type.getCode() == code) {
        return type.getName();
      }
    }
    return null;
  }
}
