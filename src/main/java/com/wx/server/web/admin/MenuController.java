package com.wx.server.web.admin;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.wx.server.base.BaseConstans;
import com.wx.server.entity.TbMenu;
import com.wx.server.service.ConfigService;
import com.wx.server.service.MenuService;
import com.wx.server.utils.TplPathUtils;

import me.chanjar.weixin.common.api.WxConsts;
import me.chanjar.weixin.common.bean.menu.WxMenu;
import me.chanjar.weixin.common.bean.menu.WxMenuButton;
import me.chanjar.weixin.mp.api.WxMpService;

@Controller
@RequestMapping(value = "/wxbackstage")
public class MenuController {

  private static Logger log = LoggerFactory.getLogger(MenuController.class);

  @Autowired
  private ConfigService cfgSvc;

  @Autowired
  private WxMpService wxMpSvc;

  @Autowired
  private MenuService menuSvc;

  @RequestMapping(value = "/menu/list", method = RequestMethod.GET)
  public String listmenu(ModelMap model) {
    List<TbMenu> list = menuSvc.getRootMenuList();
    model.put("menus", list);
    model.put(BaseConstans.POSITION, "menuconfig");
    return TplPathUtils.getBackstageTpl("/menu_list");
  }

  @RequestMapping(value = "/menu/add", method = RequestMethod.GET)
  public String getAddMenu(ModelMap model) {
    List<TbMenu> list = menuSvc.getRootMenuList();
    model.put("list", list);
    model.put(BaseConstans.POSITION, "menu");
    return TplPathUtils.getBackstageTpl("/menu_add");
  }

  @RequestMapping(value = "/menu/saveOrUpdate", method = RequestMethod.POST)
  public String postSaveOrUpdateMenu(@ModelAttribute TbMenu menu, ModelMap model) {
    List<TbMenu> list = menuSvc.getRootMenuList();
    model.put("list", list);
    model.put(BaseConstans.POSITION, "menu");
    return TplPathUtils.getBackstageTpl("/menu_add");
  }

  @RequestMapping(value = "/menu/edit", method = RequestMethod.GET)
  public String getEditMenu(Integer id, ModelMap model) {
    TbMenu menu = menuSvc.getById(id);
    model.put("menu", menu);
    model.put(BaseConstans.POSITION, "menu");
    return TplPathUtils.getBackstageTpl("/menu_edit");
  }

  @RequestMapping(value = "/menu/create", method = RequestMethod.POST)
  public String menucreate(String menuJson, ModelMap model) {
    JSONObject jsonObject = JSON.parseObject(menuJson);
    cfgSvc.setValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_MENU_CONFIG, jsonObject.toJSONString(), true);
    model.put("menuJson", JSON.toJSONString(jsonObject, true));
    model.put("message", "保存成功！");
    try {
      WxMenu menu = new WxMenu();
      WxMenuButton button1 = new WxMenuButton();
      button1.setType(WxConsts.BUTTON_VIEW);
      button1.setName("在线预约");
      button1.setUrl("http://wx.zheng-hang.com/wxserver");
      menu.getButtons().add(button1);
      WxMenuButton button2 = new WxMenuButton();
      button2.setName("注册");
      String registUrl = cfgSvc.getValue(ConfigService.GROUP_USERCONFIG, ConfigService.USERCONFIG_REDIRECT_REG_URL);
      WxMenuButton registTech = new WxMenuButton();
      registTech.setName("我是技师");
      registTech.setType(WxConsts.BUTTON_VIEW);
      registTech.setUrl(wxMpSvc.oauth2buildAuthorizationUrl(registUrl, "snsapi_userinfo", "technician"));
      WxMenuButton registCarown = new WxMenuButton();
      registCarown.setName("我是车主");
      registCarown.setType(WxConsts.BUTTON_VIEW);
      registCarown.setUrl(wxMpSvc.oauth2buildAuthorizationUrl(registUrl, "snsapi_userinfo", "carowner"));
      button2.getSubButtons().add(registTech);
      button2.getSubButtons().add(registCarown);
      menu.getButtons().add(button2);
      wxMpSvc.getMenuService().menuCreate(menu);
      log.info("【更新微信公众号底部菜单成功】");
    }
    catch (Exception e) {
      e.printStackTrace();
      log.error("【修改微信菜单失败】", e);
    }
    model.put(BaseConstans.POSITION, "menuconfig");
    return TplPathUtils.getBackstageTpl("/menu_config");
  }
}
