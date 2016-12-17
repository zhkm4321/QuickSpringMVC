package com.wx.server.service.impl;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.wx.server.dao.TbCarModelsMapper;
import com.wx.server.entity.TbCarModels;
import com.wx.server.entity.TbCarModelsExample;
import com.wx.server.service.CarModelsService;
import com.wx.server.service.abs.AbstractCommonService;

@Service
public class CarModelsServiceImpl extends AbstractCommonService<TbCarModels> implements CarModelsService {

  private static Logger log = LoggerFactory.getLogger(CarModelsServiceImpl.class);

  public CarModelsServiceImpl() {
    super(TbCarModels.class);
  }

  @Autowired
  private TbCarModelsMapper modelsMapper;

  private Map<String, List<String>> brandCache = new LinkedHashMap<String, List<String>>();

  private Map<String, List<TbCarModels>> modelsCache = new LinkedHashMap<String, List<TbCarModels>>();

  @PostConstruct
  public void initCache() {
    log.info("【缓存车型信息开始】");
    List<TbCarModels> list = listAllFromDB();
    List<TbCarModels> subCache = null;
    List<String> subBrand = null;
    if (!CollectionUtils.isEmpty(list)) {
      for (TbCarModels models : list) {
        // 车型缓存
        subCache = modelsCache.get(models.getBrand());
        if (null == subCache) {
          subCache = new ArrayList();
          modelsCache.put(models.getBrand(), subCache);
        }
        subCache.add(models);
        // 品牌缓存
        subBrand = brandCache.get(models.getFirstLetter());
        if (null == subBrand) {
          subBrand = new ArrayList();
          brandCache.put(models.getFirstLetter(), subBrand);
        }
        if (!subBrand.contains(models.getBrand())) {
          subBrand.add(models.getBrand());
        }
      }
    }
    log.info("【缓存车型信息完成】");
  }

  /**
   * 加载缓存时使用并不暴露在外
   */
  private List<TbCarModels> listAllFromDB() {
    TbCarModelsExample example = new TbCarModelsExample();
    example.setOrderByClause("first_letter asc,brand asc,cars_line asc");
    TbCarModelsExample.Criteria c = example.createCriteria();
    c.andValidEqualTo(1);
    List<TbCarModels> list = modelsMapper.selectByExample(example);
    return list;
  }

  @Override
  public List<TbCarModels> listModelsByBrand(String brand) {
    return modelsCache.get(brand);
  }

  @Override
  public Map<String, List<String>> listBrand() {
    return brandCache;
  }

  @Override
  public void reload() {
    modelsCache.clear();
    initCache();
    log.info("【缓存服务器配置reload】");
  }

}
