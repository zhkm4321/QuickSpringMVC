package com.wx.server.web.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wx.server.service.AlipayService;
import com.wx.server.utils.TplPathUtils;

/**
 * 阿里支付控制器
 * 
 * @author zhenghang E-mail: zhenghang@unitedstone.net
 * @version 创建时间：2016年12月20日 上午10:50:12
 */
@Controller
@RequestMapping("/alipay")
public class AliPayController {

  public static final Logger log = LoggerFactory.getLogger(AliPayController.class);

  @Autowired
  private AlipayService alipaySvc;

  @RequestMapping(value = "/testPay", method = RequestMethod.GET)
  public String pay(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
    try {
      log.debug("-------------测试阿里支付--------------");
      String formHtml = alipaySvc.sendPayRequest(new HashMap<String, String>(), response);
      model.put("formHtml", formHtml);
      log.debug("-------------测试阿里支付-end----------");
    }
    catch (IOException e) {
      e.printStackTrace();
    }
    return TplPathUtils.getFrontTpl("/alipay/pay_return");
  }

  @RequestMapping(value = "/pay_return")
  public String payReturn(HttpServletRequest request, HttpServletResponse response) {
    return TplPathUtils.getFrontTpl("/alipay/pay_return");
  }

  @RequestMapping(value = "/pay_notify")
  public String payNotify(HttpServletRequest request, HttpServletResponse response) {
    return TplPathUtils.getFrontTpl("/alipay/pay_notify");
  }
}
