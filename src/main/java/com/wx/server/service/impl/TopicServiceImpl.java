package com.wx.server.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wx.server.dao.TbCategoryMapper;
import com.wx.server.dao.TbTopicMapper;
import com.wx.server.entity.TbTopic;
import com.wx.server.entity.TbTopicExample;
import com.wx.server.service.TopicService;
import com.wx.server.service.abs.AbstractCommonService;
import com.wx.server.vo.page.Page;
import com.wx.server.vo.page.Pagination;

@Service
public class TopicServiceImpl extends AbstractCommonService<TbTopic> implements TopicService {

  public TopicServiceImpl() {
    super(TbTopic.class);
  }

  @Autowired
  private TbTopicMapper topicMapper;

  @Autowired
  private TbCategoryMapper catgMapper;

  @Override
  public List<TbTopic> getListForTag(Integer categoryId, Integer userId, Integer valid, int count) {
    TbTopicExample topicExample = new TbTopicExample();
    TbTopicExample.Criteria topicCriteria = topicExample.createCriteria();
    if (null != userId) {
      topicCriteria.andUserIdEqualTo(userId);
    }
    if (null != valid) {
      topicCriteria.andValidEqualTo(valid);
    }
    Page<TbTopic> page = new Page<TbTopic>();
    page.setLength(count);
    topicExample.setPage(page);
    return topicMapper.selectByExample(topicExample);
  }

  @Override
  public Pagination getPageForTag(Integer categoryId, Integer userId, Integer valid, int pageNo, int pageSize) {
    TbTopicExample topicExample = new TbTopicExample();
    TbTopicExample.Criteria topicCriteria = topicExample.createCriteria();
    if (null != categoryId) {
      topicCriteria.andCategoryIdEqualTo(categoryId);
    }
    if (null != userId) {
      topicCriteria.andUserIdEqualTo(userId);
    }
    if (null != valid) {
      topicCriteria.andValidEqualTo(valid);
    }
    Page<TbTopic> page = new Page<TbTopic>();
    page.setPageNo(pageNo);
    page.setPageCount(pageSize);
    topicExample.setPage(page);
    List<TbTopic> list = topicMapper.selectByExample(topicExample);
    long totalCount = topicMapper.countByExample(topicExample);
    // 再次包装
    Pagination pagination = new Pagination(pageNo, pageSize, totalCount);
    pagination.setList(list);
    return pagination;
  }

}
