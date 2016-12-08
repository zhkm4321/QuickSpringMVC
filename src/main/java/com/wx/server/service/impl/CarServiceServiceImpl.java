package com.wx.server.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wx.server.dao.TbServiceMapper;
import com.wx.server.entity.TbService;
import com.wx.server.entity.TbServiceExample;
import com.wx.server.service.CarServiceService;
import com.wx.server.service.abs.AbstractCommonService;

@Service
public class CarServiceServiceImpl extends AbstractCommonService<TbService> implements CarServiceService {

  @Autowired
  TbServiceMapper serviceMapper;

  public CarServiceServiceImpl() {
    super(TbService.class);
  }

  @Override
  public List getByCategoryId(Integer categoryId) {

    TbServiceExample example = new TbServiceExample();
    TbServiceExample.Criteria criteria = example.createCriteria();
    criteria.andCaretoryIdEqualTo(categoryId);
    example.setOrderByClause("order asc");
    List<TbService> list = serviceMapper.selectByExample(example);
    return list;
  }

}
