package com.wx.server.service.abs;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.BeansException;

import com.wx.server.service.CommonService;
import com.wx.server.service.SpringBeanService;
import com.wx.server.utils.StringUtil;
import com.wx.server.vo.page.Page;

@SuppressWarnings("unchecked")
public abstract class AbstractCommonService<T> implements CommonService {

  private Object mapper = null;

  private Class<?> mapperClazz = null;

  private Map<String, Method> cacheMethod = new HashMap<String, Method>();

  public AbstractCommonService(Class<T> clazz) {
    String className = clazz.getSimpleName() + "Mapper";
    String fullClassName = "com.wx.server.dao." + className;
    try {
      mapperClazz = Class.forName(fullClassName);
      for (Method method : mapperClazz.getMethods()) {
        cacheMethod.put(method.getName(), method);
      }
      mapper = SpringBeanService.getBean(StringUtil.toLowerCaseFirstOne(className));
    }
    catch (BeansException e) {
      e.printStackTrace();
    }
    catch (ClassNotFoundException e) {
      e.printStackTrace();
    }
  }

  @Override
  public <T extends Serializable> T save(T bean) {
    Object object = invoke("insert", bean);
    return (T) object;
  }

  @Override
  public <T extends Serializable> T update(T bean) {
    Object object = invoke("updateByPrimaryKey", bean);
    return (T) object;
  }

  @Override
  public <T extends Serializable> int deleteById(Serializable id) {

    return 0;
  }

  @Override
  public <T extends Serializable> T getById(Serializable id) {
    Object object = invoke("selectByPrimaryKey", id);
    return (T) object;
  }

  @Override
  public <T extends Serializable> List<T> listAll() {
    Object object = invoke("selectByExample", null);
    return (List<T>) object;
  }

  @Override
  public <T extends Serializable> Page<T> pageSelect(Page<T> p, T bean) {
    // TODO Auto-generated method stub
    return null;
  }

  @Override
  public <T extends Serializable> int pageCount(T bean) {
    // TODO Auto-generated method stub
    return 0;
  }

  @Override
  public <T extends Serializable> int countAll() {
    // TODO Auto-generated method stub
    return 0;
  }

  private Object invoke(String methodName, Object... args) {
    try {
      Method m = cacheMethod.get(methodName);
      return m.invoke(mapper, args);
    }
    catch (SecurityException e) {
      e.printStackTrace();
    }
    catch (IllegalAccessException e) {
      e.printStackTrace();
    }
    catch (IllegalArgumentException e) {
      e.printStackTrace();
    }
    catch (InvocationTargetException e) {
      e.printStackTrace();
    }
    return null;
  }

}
