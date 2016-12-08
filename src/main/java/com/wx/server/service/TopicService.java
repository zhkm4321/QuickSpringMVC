package com.wx.server.service;

import java.util.List;

import com.wx.server.entity.TbTopic;
import com.wx.server.vo.page.Pagination;

public interface TopicService extends CommonService {

  List<TbTopic> getListForTag(Integer categoryId, Integer userId, Integer valid, int count);

  Pagination getPageForTag(Integer categoryId, Integer userId, Integer valid, int pageNo, int pageSize);

}
