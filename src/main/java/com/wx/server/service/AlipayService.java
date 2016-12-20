package com.wx.server.service;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

public interface AlipayService {

  /**
   * 支付方法
   * 
   * @param bizParam
   * @param response
   * @return
   * @throws IOException
   */
  public String sendPayRequest(Map<String, String> bizParam, HttpServletResponse response) throws IOException;
}
