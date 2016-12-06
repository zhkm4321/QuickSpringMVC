package com.wx.server.entity.statistic;

import java.io.Serializable;

/**
 * 统计分类帖子数量
 * 
 * @author zhenghang E-mail: zhenghang@unitedstone.net
 * @version 创建时间：2016年12月7日 上午1:44:12
 */
public class VCategoryTopicCount implements Serializable {
  /**
   * 
   */
  private static final long serialVersionUID = 7340548531322932737L;

  private Integer categoryId;

  private Integer count;

  public Integer getCategoryId() {
    return categoryId;
  }

  public void setCategoryId(Integer categoryId) {
    this.categoryId = categoryId;
  }

  public Integer getCount() {
    return count;
  }

  public void setCount(Integer count) {
    this.count = count;
  }

}
