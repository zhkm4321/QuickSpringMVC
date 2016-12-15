package com.wx.server.service;

import java.util.List;
import java.util.Map;

import com.wx.server.entity.TbCarModels;

public interface CarModelsService extends CommonService {
  /**
   * 刷新缓存
   */
  public void reload();

  /**
   * 根据品牌获取车型列表
   * 
   * @param brand
   * @return
   */
  public List<TbCarModels> listModelsByBrand(String brand);

  /**
   * 品牌列表
   * 
   * @return
   */
  public Map<String, List<String>> listBrand();
}
