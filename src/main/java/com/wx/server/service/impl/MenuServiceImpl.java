package com.wx.server.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wx.server.dao.TbMenuMapper;
import com.wx.server.entity.TbMenu;
import com.wx.server.entity.TbMenuExample;
import com.wx.server.service.MenuService;
import com.wx.server.service.abs.AbstractCommonService;

@Service
public class MenuServiceImpl extends AbstractCommonService<TbMenu> implements MenuService {

  public MenuServiceImpl() {
    super(TbMenu.class);
  }

  @Autowired
  private TbMenuMapper menuMapper;

  @Override
  public List<TbMenu> getRootMenuList() {
    TbMenuExample example = new TbMenuExample();
    TbMenuExample.Criteria criteria = example.createCriteria();
    criteria.andPidIsNull();
    List<TbMenu> list = menuMapper.selectByExample(example);
    return list;
  }

  @Override
  public List<TbMenu> getMenuListByPId(Integer pid) {
    TbMenuExample example = new TbMenuExample();
    TbMenuExample.Criteria criteria = example.createCriteria();
    criteria.andPidEqualTo(pid);
    List<TbMenu> list = menuMapper.selectByExample(example);
    return list;
  }

}
