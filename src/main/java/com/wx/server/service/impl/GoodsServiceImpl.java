package com.wx.server.service.impl;

import org.springframework.stereotype.Service;

import com.wx.server.entity.TbGoods;
import com.wx.server.service.GoodsService;
import com.wx.server.service.abs.AbstractCommonService;

@Service
public class GoodsServiceImpl extends AbstractCommonService<TbGoods> implements GoodsService {

  public GoodsServiceImpl() {
    super(TbGoods.class);
  }

}
