package com.wx.server.service;

import com.wx.server.vo.UserVo;
import com.wx.server.vo.page.Pagination;

public interface RepairShopService extends CommonService {
  /**
   * 店铺搜索，根据关键词和位置信息搜索
   * 
   * @param keywords
   * @param location
   * @return
   */
  Pagination search(String keywords, String location);

  /**
   * 根据用户id获取店铺的详细信息
   * 
   * @param id
   * @return
   * @throws RuntimeException
   */
  UserVo getById(Integer id) throws RuntimeException;
}
