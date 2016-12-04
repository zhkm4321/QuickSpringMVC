package com.wx.server.service;

import com.wx.server.entity.TbGoods;

//TODO 实现商品服务
public interface GoodsService {

  public TbGoods saveGoods(TbGoods goods);

  public TbGoods updateGoods(TbGoods goods);

  public void deleteGoods(TbGoods goods);

}
