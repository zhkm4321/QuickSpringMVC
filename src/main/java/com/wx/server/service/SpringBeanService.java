package com.wx.server.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanNameAware;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.beans.factory.support.BeanDefinitionRegistryPostProcessor;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Service;

/**
 * 获取Spring容器中Bean实例的工具类(Java泛型方法实现)。
 *
 * @author zhenghang
 */
@Service
public class SpringBeanService
    implements BeanDefinitionRegistryPostProcessor, InitializingBean, ApplicationContextAware, BeanNameAware {

  private static Logger log = LoggerFactory.getLogger(SpringBeanService.class);

  private static ApplicationContext applicationContext;

  private String beanName;

  @Override
  public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
    SpringBeanService.applicationContext = applicationContext;
    log.info("【SpringBeanService】初始化完成");
  }

  /**
   * 根据bean的名称获取相应类型的对象，使用泛型，获得结果后，不需要强制转换为相应的类型
   *
   * @param clazz bean的类型，使用泛型
   * @return T类型的对象
   */
  public static <T> T getBean(Class<T> clazz) {
    T object = applicationContext.getBean(clazz);
    return object;
  }

  public static Object getBean(String beanName) {
    Object object = applicationContext.getBean(beanName);
    return object;
  }

  @Override
  public void postProcessBeanFactory(ConfigurableListableBeanFactory beanFactory) throws BeansException {
  }

  @Override
  public void setBeanName(String name) {
    this.beanName = name;
  }

  public String getBeanName() {
    return beanName;
  }

  @Override
  public void afterPropertiesSet() throws Exception {
  }

  @Override
  public void postProcessBeanDefinitionRegistry(BeanDefinitionRegistry registry) throws BeansException {
  }
}