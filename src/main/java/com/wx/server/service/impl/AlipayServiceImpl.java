package com.wx.server.service.impl;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.alibaba.fastjson.JSON;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradeWapPayRequest;
import com.alipay.api.response.AlipayTradeWapPayResponse;
import com.wx.server.service.AlipayService;
import com.wx.server.utils.RandomUtil;

public class AlipayServiceImpl implements AlipayService {

  public static final Logger log = LoggerFactory.getLogger(AlipayServiceImpl.class);

  private AlipayClient client = null;

  public static final String SIGN_ALGORITHMS = "SHA1WithRSA";

  private static String privateKey;

  private static String publicKey;

  public void init() throws FileNotFoundException, Exception {
    privateKey = "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAJ0lnBO7rJykr65miegATEdd76Q/Fyij5zOMThaZcE61mS5klgBbCoPq1IyIM/6oKXIm6TQo3Bntgc3nD5XUJTIJw3ScQyeDems94YpB+TXHO/2aDePzpIwWtRQCdSJ211d+TX+o7FUY0VWcxY9N78D2HuPJHazcZbVbifVa71hrAgMBAAECgYB03Z1ex3ks3QSRrEvurxoLEP7ApPKyFIJCQZtpDx8ISeDrMX6kMRB23lLHWBtizOhVrj5Lvf9BgPHBkI50nFoz291Kh149or03I5KtzTMnehKgaXBxwQqGonNi4NAQsnnY07VjaYBf8KXmDJv7cwEWrrqmwFrhhbMI+k3Ac+OwQQJBAMogRvJFZg201ONPq+H7TgyMbbE+q/ALkbSDP83ng7dH4pr6HFBh21iJX6MFQaVZ+EgsAwY4Oqwy98A7ZB8OE/sCQQDHCEHBxVZ4b4efFdkffuT1vsVkCnYqTAzw6DD8WH+GLar12F3rp/obr+/pVNs7M+CnN+upDjeZFtXd1QoufDJRAkBmDGXFa8RapzHUkiT1syt0qnG3Sy0DxNOLj7hm/LxDjMeb9yrUapOT38epRr4d/Y6c4ZulSD5XMmRjaZjjFPiBAkBc+qZ9d0rmCHQ7BWHhLM6ZXv2ntpttNwn0oQQBXvZ0IHF1WBbIODjHJnHVdybTiXCxrZYR6+pdQiW29AdFoA+BAkEAxmQTZLOvDERdg+KIDUAVIvC7YYB8IKBL4IMhBNjjfF8esnGrx+wQ2F5pm/CkVpw27iRbS2RLuZ/ZTGVhqwLhSg==";
    publicKey = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDIgHnOn7LLILlKETd6BFRJ0GqgS2Y3mn1wMQmyh9zEyWlz5p1zrahRahbXAfCfSqshSNfqOmAQzSHRVjCqjsAw1jyqrXaPdKBmr90DIpIxmIyKXv4GGAkPyJ/6FTFY99uhpiq0qadD/uSzQsefWo0aTvP/65zi3eof7TcZ32oWpwIDAQAB";

    // 实例化客户端
    client = new DefaultAlipayClient("https://openapi.alipaydev.com/gateway.do", "2016080100143737",
        privateKey.toString(), "json", "UTF-8", publicKey.toString());
    log.info("【支付宝接口配置初始化完成】");
  }

  public String sendPayRequest(Map bizParam, HttpServletResponse response) throws IOException {
    AlipayTradeWapPayRequest alipayRequest = new AlipayTradeWapPayRequest();
    alipayRequest.setReturnUrl("http://wx.zheng-hang.com/alipay/pay_return");
    alipayRequest.setNotifyUrl("http://wx.zheng-hang.com/alipay/pay_notify");
    // SDK已经封装掉了公共参数，这里只需要传入业务参数
    bizParam.put("out_trade_no", RandomUtil.getNumStr(11));
    bizParam.put("subject", "测试购物的商品");
    bizParam.put("seller_id", "2016080100143737");
    bizParam.put("total_amount", 0.01);
    alipayRequest.setBizContent(JSON.toJSONString(bizParam));
    AlipayTradeWapPayResponse aliResp = null;
    try {
      aliResp = client.pageExecute(alipayRequest);
      // 调用成功，则处理业务逻辑
      if (aliResp.isSuccess()) {
        return aliResp.getBody();
      }
      else {
        aliResp = null;
      }
    }
    catch (AlipayApiException e) {
      e.printStackTrace();
    }
    return "<h1>test faile</h1>";
  }
}
