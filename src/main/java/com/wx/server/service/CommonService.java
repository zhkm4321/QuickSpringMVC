package com.wx.server.service;

import java.io.Serializable;
import java.util.List;

import com.wx.server.vo.page.Page;

/*
 * 通用服务基类
 */
public interface CommonService {

  /**
   * 增加一个实体
   * 
   * @param bean
   * @return
   */
  public <T extends Serializable> T save(T bean);

  /**
   * 更新一个实体
   * 
   * @param bean
   * @return
   */
  public <T extends Serializable> T update(T bean);

  /**
   * 
   * 通过id删除实体
   * 
   * @param clazz
   * @param id
   * @return
   */
  public <T extends Serializable> int deleteById(Serializable id);

  /**
   * 
   * 通过主键获取实体
   * 
   * @param clazz
   * @param id
   * @return
   */
  public <T extends Serializable> T getById(Serializable id);

  /**
   * 
   * 查询所有实体
   * 
   * @param clazz
   * @return
   */
  public <T extends Serializable> List<T> listAll();

  /**
   * 
   * 分页查询
   * 
   * @param clazz
   * @param p
   * @return
   */
  public <T extends Serializable> Page<T> pageSelect(Page<T> p, T selectExample);

  /**
   * 
   * 分页查询时，用来统计总条数
   * 
   * @param clazz
   * @param attrs
   * @param values
   * @return
   */
  public <T extends Serializable> int pageCount(T selectExample);

  /**
   * 
   * 统计总条数
   * 
   * @param clazz
   * @return
   */
  public <T extends Serializable> int countAll();

}