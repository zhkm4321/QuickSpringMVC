package com.wx.server.utils;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public abstract class ReflectionUtil {

  /**
   * 通过类对象，运行指定方法
   * 
   * @param obj 类对象
   * @param methodName 方法名
   * @param params 参数值
   * @return 失败返回null
   */
  public static Object invokeMethod(Object obj, String methodName, Object[] params) {

    if (null == obj || StringUtils.isNullOrEmpty(methodName)) {
      return null;
    }

    Class<?> claszz = obj.getClass();

    try {
      Class<?>[] paramTypes = null;

      if (params != null) {
        paramTypes = new Class[params.length];
        for (int i = 0; i < params.length; i++) {
          paramTypes[i] = params[i].getClass();
        }
      }
      Method method = claszz.getMethod(methodName, paramTypes);
      method.setAccessible(true);
      method.invoke(obj, params);

    }
    catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  /**
   * 直接设置对象属性值, 忽略 private/protected 修饰符, 也不经过 setter
   * 
   * @param object : 子类对象
   * @param fieldName : 父类中的属性名
   * @param value : 将要设置的值
   */
  public static void setFieldValue(Object object, String fieldName, Object value) {
    // 根据 对象和属性名通过反射 调用上面的方法获取 Field对象
    Field field = getDeclaredField(object, fieldName);
    // 抑制Java对其的检查
    field.setAccessible(true);
    try {
      // 将 object 中 field 所代表的值 设置为 value
      field.set(object, value);
    }
    catch (IllegalArgumentException e) {
      e.printStackTrace();
    }
    catch (IllegalAccessException e) {
      e.printStackTrace();
    }
  }

  /**
   * 直接读取对象的属性值, 忽略 private/protected 修饰符, 也不经过 getter
   * 
   * @param object : 子类对象
   * @param fieldName : 父类中的属性名
   * @return : 父类中的属性值
   */
  public static Object getFieldValue(Object object, String fieldName) {

    // 根据 对象和属性名通过反射 调用上面的方法获取 Field对象
    Field field = getDeclaredField(object, fieldName);
    // 抑制Java对其的检查
    field.setAccessible(true);
    try {
      // 获取 object 中 field 所代表的属性值
      return field.get(object);
    }
    catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  /**
   * 循环向上转型, 获取对象的 DeclaredField
   * 
   * @param object : 子类对象
   * @param fieldName : 父类中的属性名
   * @return 父类中的属性对象
   */
  public static Field getDeclaredField(Object object, String fieldName) {
    Field field = null;
    Class<?> clazz = object.getClass();
    for (; clazz != Object.class; clazz = clazz.getSuperclass()) {
      try {
        field = clazz.getDeclaredField(fieldName);
        return field;
      }
      catch (Exception e) {
        // 这里甚么都不要做！并且这里的异常必须这样写，不能抛出去。
        // 如果这里的异常打印或者往外抛，则就不会执行clazz = clazz.getSuperclass(),最后就不会进入到父类中了
      }
    }
    return null;
  }

  /*
   * 将父类所有的属性COPY到子类中。 类定义中child一定要extends father；
   * 而且child和father一定为严格javabean写法，属性为deleteDate，方法为getDeleteDate
   */
  public static void fatherToChild(Object father, Object child) {
    if (!(child.getClass().getSuperclass() == father.getClass())) {
      System.err.println("child不是father的子类");
    }
    Class fatherClass = father.getClass();
    Field ff[] = fatherClass.getDeclaredFields();
    for (int i = 0; i < ff.length; i++) {
      Field f = ff[i];// 取出每一个属性，如deleteDate
      Class type = f.getType();
      try {
        if (f.getName().equals("serialVersionUID"))
          continue;
        Method m = fatherClass.getMethod("get" + upperHeadChar(f.getName()));// 方法getDeleteDate
        Object obj = m.invoke(father);// 取出属性值
        // 抑制Java对其的检查
        f.setAccessible(true);
        f.set(child, obj);
      }
      catch (SecurityException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
      }
      catch (IllegalArgumentException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
      }
      catch (NoSuchMethodException e) {
        e.printStackTrace();
      }
      catch (IllegalAccessException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
      }
      catch (InvocationTargetException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
      }
    }
  }

  /**
   * 首字母大写，in:deleteDate，out:DeleteDate
   */
  private static String upperHeadChar(String in) {
    String head = in.substring(0, 1);
    String out = head.toUpperCase() + in.substring(1, in.length());
    return out;
  }

}
