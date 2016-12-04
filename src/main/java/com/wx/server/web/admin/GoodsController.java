package com.wx.server.web.admin;

import javax.servlet.http.HttpSession;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wx.server.service.GoodsService;
import com.wx.server.utils.TplPathUtils;

@Controller
@RequestMapping(value = "/wxbackstage/goods")
public class GoodsController {
  @Autowired
  private GoodsService goodsService;

  @RequestMapping(value = "", method = RequestMethod.GET)
  @RequiresPermissions({ "admin_goods" })
  public String signup(HttpSession session, ModelMap mav) {
    return TplPathUtils.getBackstageTpl("/goods");
  }
}
