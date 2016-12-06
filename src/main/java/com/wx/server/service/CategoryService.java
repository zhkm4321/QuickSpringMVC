package com.wx.server.service;

import java.util.List;
import java.util.Map;

import com.wx.server.entity.TbCategory;
import com.wx.server.vo.CategoryVo;

public interface CategoryService extends CommonService {
  /**
   * 获取分类列表
   * 
   * @param valid
   * @return
   */
  public List<TbCategory> getCategoryList(Integer status);

  /**
   * 获取分类树
   * 
   * @param status
   * @return
   */
  public List<CategoryVo> getCategoryTree(Integer status);

  public CategoryVo category2Vo(TbCategory category, Map<Integer, Integer> countMap);
}
