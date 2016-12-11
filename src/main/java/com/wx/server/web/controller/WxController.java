package com.wx.server.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wx.server.service.WxService;

@Controller
public class WxController {

  @Autowired
  WxService wxService;

  /**
   * 微信平台接入
   */
  @RequestMapping(value = "/authByWechat", method = RequestMethod.GET)
  @ResponseBody
  public String authByWechat(HttpServletRequest request, HttpServletResponse response) {
    // 获取微信后台传入的四个参数
    String signature = request.getParameter("signature");
    String timestamp = request.getParameter("timestamp");
    String nonce = request.getParameter("nonce");
    String echostr = request.getParameter("echostr");
    boolean flag = wxService.checkSignature(signature, timestamp, nonce);
    // 刷新AccessToken
    wxService.getAccessToken();
    if (flag) {
      return echostr;// 注意此处必须返回echostr以完成验证
    }
    return "faile";
  }
}
