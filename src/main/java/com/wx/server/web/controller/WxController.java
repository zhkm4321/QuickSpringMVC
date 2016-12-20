package com.wx.server.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.mp.api.WxMpService;

@Controller
public class WxController {

  private static Logger log = LoggerFactory.getLogger(WxController.class);

  @Autowired
  WxMpService wxService;

  /**
   * 微信平台接入
   */
  @RequestMapping(value = "/authByWechat", method = RequestMethod.POST)
  @ResponseBody
  public String authByWechatPOST(HttpServletRequest request, HttpServletResponse response) {
    // 获取微信后台传入的四个参数
    String signature = request.getParameter("signature");
    String timestamp = request.getParameter("timestamp");
    String nonce = request.getParameter("nonce");
    String echostr = request.getParameter("echostr");
    boolean flag = wxService.checkSignature(timestamp, nonce, signature);
    // 刷新AccessToken
    try {
      wxService.getAccessToken();
    }
    catch (WxErrorException e) {
      log.error("刷新AccessToken失败", e.getMessage());
    }
    if (flag) {
      return echostr;// 注意此处必须返回echostr以完成验证
    }
    return "faile";
  }

  @RequestMapping(value = "/authByWechat", method = RequestMethod.GET)
  @ResponseBody
  public String authByWechatGET(HttpServletRequest request, HttpServletResponse response) {
    return authByWechatPOST(request, response);
  }
}
