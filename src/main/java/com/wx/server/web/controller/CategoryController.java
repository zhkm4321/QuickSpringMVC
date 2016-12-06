package com.wx.server.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wx.server.service.CategoryService;
import com.wx.server.utils.TplPathUtils;

@Controller
@RequestMapping(value = "/category")
public class CategoryController {

  @Autowired
  private CategoryService categSvc;

  @RequestMapping(value = "/list", method = RequestMethod.GET)
  public String list(Integer status, ModelMap mav) {
    mav.put("tag_list", categSvc.getCategoryTree(status));
    return TplPathUtils.getFrontTpl("/category/list");
  }

}
