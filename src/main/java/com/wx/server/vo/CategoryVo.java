package com.wx.server.vo;

import java.util.ArrayList;
import java.util.List;

import com.wx.server.entity.TbCategory;

public class CategoryVo extends TbCategory {

  /**
   * 
   */
  private static final long serialVersionUID = 3447486767716461565L;

  public CategoryVo() {
  }

  public CategoryVo(Integer id) {
    this.setId(id);
  }

  /**
   * 文章数量
   */
  private int count = 0;

  /**
   * 子列表
   */
  private List<CategoryVo> subList = new ArrayList<CategoryVo>();

  public int getCount() {
    return count;
  }

  public void setCount(int count) {
    this.count = count;
  }

  public List<CategoryVo> getSubList() {
    return subList;
  }

  public void setSubList(List<CategoryVo> subList) {
    this.subList = subList;
  }
}
