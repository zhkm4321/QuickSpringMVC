package com.wx.server.dao.statistic;

import java.util.List;

import com.wx.server.entity.statistic.VCategoryTopicCount;

public interface VCategoryTopicCountMapper {
  /**
   * 统计分类下帖子数量
   * 
   * @return
   */
  public List<VCategoryTopicCount> selectCategoryTopicCount();
}
