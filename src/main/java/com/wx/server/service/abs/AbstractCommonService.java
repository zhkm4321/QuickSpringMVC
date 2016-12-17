package com.wx.server.service.abs;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;

import com.wx.server.service.CommonService;
import com.wx.server.service.SpringBeanService;
import com.wx.server.service.impl.ConfigServiceImpl;
import com.wx.server.utils.StringUtils;
import com.wx.server.vo.page.Page;

@SuppressWarnings({ "unchecked", "hiding" })
public abstract class AbstractCommonService<T> implements CommonService {

  private static Logger log = LoggerFactory.getLogger(ConfigServiceImpl.class);

  private Object mapper = null;

  private Class<?> exampleClazz = null;

  private Class<?> mapperClazz = null;

  private static Map<String, Map<String, Method>> cacheMethodInClass = new HashMap<String, Map<String, Method>>();

  public AbstractCommonService(Class<T> clazz) {
    String example = clazz.getName() + "Example";
    String className = clazz.getSimpleName() + "Mapper";
    String fullClassName = "com.wx.server.dao." + className;
    try {
      exampleClazz = Class.forName(example);
      mapperClazz = Class.forName(fullClassName);
      Map methodMap = cacheMethodInClass.get(mapperClazz.getName());
      if (null == methodMap) {
        methodMap = new HashMap();
        cacheMethodInClass.put(mapperClazz.getName(), methodMap);
      }
      for (Method method : mapperClazz.getMethods()) {
        methodMap.put(method.getName(), method);
      }
      mapper = SpringBeanService.getBean(StringUtils.toLowerCaseFirstOne(className));
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
    Object object = null;
    try {
      object = invoke("selectByExample", exampleClazz.newInstance());
    }
    catch (InstantiationException | IllegalAccessException e) {
      e.printStackTrace();
    }
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

  /**
   * 反射调用方法
   * 
   * @param methodName
   * @param args
   * @return
   */
  private Object invoke(String methodName, Object... args) {
    try {
      Map<String, Method> methodMap = cacheMethodInClass.get(mapperClazz.getName());
      Method m = methodMap.get(methodName);
      Object obj = m.invoke(mapper, args);
      log.info("invoke 【{}】 in mapper", m.getName());
      return obj;
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

  /**
   * 无参数反射调用方法
   * 
   * @param methodName
   * @return
   */
  @SuppressWarnings("unused")
  private Object invoke(String methodName) {
    try {
      Map<String, Method> methodMap = cacheMethodInClass.get(mapperClazz.getName());
      Method m = methodMap.get(methodName);
      Object obj = m.invoke(mapper);
      log.info("invoke 【{}】 in mapper", m.getName());
      return obj;
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

  public Object getTExample(Class<T> clazz) throws ClassNotFoundException {
    String exampleName = clazz.getName() + "Example";
    return Class.forName(exampleName);
  }

}
