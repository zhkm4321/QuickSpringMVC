package com.wx.server.service;

import java.util.List;

import com.wx.server.entity.TbMenu;

public interface MenuService extends CommonService {

  public List<TbMenu> getRootMenuList();

  public List<TbMenu> getMenuListByPId(Integer pid);

}
