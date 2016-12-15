package com.wx.server.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.wx.server.dao.TbConfigMapper;
import com.wx.server.entity.TbConfig;
import com.wx.server.entity.TbConfigExample;
import com.wx.server.service.ConfigService;
import com.wx.server.service.abs.AbstractCommonService;
import com.wx.server.utils.StringUtils;

@Service
public class ConfigServiceImpl extends AbstractCommonService<TbConfig> implements ConfigService {

  private static Logger log = LoggerFactory.getLogger(ConfigServiceImpl.class);

  public ConfigServiceImpl() {
    super(TbConfig.class);
  }

  @Autowired
  private TbConfigMapper configMapper;

  private Map<String, Map<String, String>> cache = new HashMap<String, Map<String, String>>();

  @PostConstruct
  public void initCache() {
    log.info("【缓存服务器配置开始】");
    List<TbConfig> list = listAll();
    Map<String, String> subCache = null;
    if (!CollectionUtils.isEmpty(list)) {
      for (TbConfig tbConfig : list) {
        subCache = cache.get(tbConfig.getConfigGroup());
        if (null == subCache) {
          subCache = new HashMap<String, String>();
          cache.put(tbConfig.getConfigGroup(), subCache);
        }
        subCache.put(tbConfig.getConfigKey(), tbConfig.getConfigValue());
      }
    }
    log.info("【缓存服务器配置完成】");
  }

  @Override
  public void reload() {
    cache.clear();
    initCache();
    log.info("【缓存服务器配置reload】");
  }

  @Override
  public List<TbConfig> getByGroup(String groupName) {
    TbConfigExample example = new TbConfigExample();
    TbConfigExample.Criteria criteria = example.createCriteria();
    criteria.andConfigGroupEqualTo(groupName);
    return configMapper.selectByExample(example);
  }

  @Override
  public TbConfig getByGroupAndKey(String groupName, String key) {
    TbConfigExample example = new TbConfigExample();
    TbConfigExample.Criteria criteria = example.createCriteria();
    criteria.andConfigGroupEqualTo(groupName);
    criteria.andConfigKeyEqualTo(key);
    List<TbConfig> beanList = configMapper.selectByExample(example);
    if (!CollectionUtils.isEmpty(beanList)) {
      return beanList.get(0);
    }
    return null;
  }

  @Override
  public String getValue(String groupName, String key) {
    Map<String, String> groupCache = cache.get(groupName);
    if (groupCache == null) {
      return null;
    }
    String value = groupCache.get(key);
    if (StringUtils.isNullOrEmpty(value)) {
      value = getValueFromDB(groupName, key);
      if (!StringUtils.isNullOrEmpty(value)) {
        groupCache.put(key, value);
      }
    }
    return value;
  }

  public String getValueFromDB(String groupName, String key) {
    TbConfig config = getByGroupAndKey(groupName, key);
    return config.getConfigValue();
  }

  @Override
  public void setValue(String groupName, String key, String value) {
    setValue(groupName, key, value, false);
  }

  @Override
  public void setValue(String groupName, String key, String value, boolean force2DB) {
    if (force2DB) {
      saveOrUpdate(groupName, key, value);
    }
    else {
      TbConfig config = getByGroupAndKey(groupName, key);
      if (!config.getConfigValue().equals(value)) {
        saveOrUpdate(groupName, key, value);
      }
    }
    Map<String, String> subCache = cache.get(groupName);
    if (subCache != null) {
      subCache = new HashMap<String, String>();
      cache.put(groupName, subCache);
    }
    subCache.put(key, value);
  }

  private void saveOrUpdate(String groupName, String key, String value) {
    TbConfig config = getByGroupAndKey(groupName, key);
    if (null != config) {// 更新缓存
      config.setConfigValue(value);
      config.setUpdateTime(new Date());
      TbConfigExample example = new TbConfigExample();
      TbConfigExample.Criteria criteria = example.createCriteria();
      criteria.andConfigGroupEqualTo(groupName);
      criteria.andConfigKeyEqualTo(key);
      configMapper.updateByExample(config, example);
      log.info("更新系统配置数据【{},{},{}】 更新时间：{}", new Object[] { config.getConfigGroup(), config.getConfigKey(),
          config.getConfigValue(), config.getUpdateTime() });
    }
    else {// 新建缓存
      config = new TbConfig();
      config.setConfigGroup(groupName);
      config.setConfigKey(key);
      config.setConfigValue(value);
      config.setUpdateTime(new Date());
      configMapper.insert(config);
      log.info("添加新的系统配置数据【{},{},{}】添加时间：{}", new Object[] { config.getConfigGroup(), config.getConfigKey(),
          config.getConfigValue(), config.getUpdateTime() });
    }
  }
}
