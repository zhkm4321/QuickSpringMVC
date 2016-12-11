package com.wx.server.web.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.wx.server.base.BaseConstans;
import com.wx.server.service.ConfigService;
import com.wx.server.service.WxService;
import com.wx.server.utils.TplPathUtils;

@Controller
@RequestMapping(value = "/wxbackstage")
public class MenuController {

  private static Logger log = LoggerFactory.getLogger(MenuController.class);

  @Autowired
  private ConfigService configService;

  @Autowired
  private WxService wxService;

  @RequestMapping(value = "/menu/config", method = RequestMethod.GET)
  public String menuconfig(ModelMap model) {
    String jsonStr = configService.getValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_MENU_CONFIG);
    JSONObject jsonObject = JSON.parseObject(jsonStr);
    model.put("menuJson", JSON.toJSONString(jsonObject, true));
    model.put(BaseConstans.POSITION, "menuconfig");
    return TplPathUtils.getBackstageTpl("/menu_config");
  }

  @RequestMapping(value = "/menu/create", method = RequestMethod.POST)
  public String menucreate(String menuJson, ModelMap model) {
    JSONObject jsonObject = JSON.parseObject(menuJson);
    configService.setValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_MENU_CONFIG, jsonObject.toJSONString(),
        true);
    model.put("menuJson", JSON.toJSONString(jsonObject, true));
    model.put("message", "保存成功！");
    try {
      wxService.setMenu(jsonObject.toJSONString());
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
