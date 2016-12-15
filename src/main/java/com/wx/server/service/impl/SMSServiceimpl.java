package com.wx.server.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wx.server.base.BaseConstans;
import com.wx.server.service.ConfigService;
import com.wx.server.service.SMSService;
import com.wx.server.utils.StringUtils;

@Service
public class SMSServiceimpl implements SMSService {

  @Autowired
  ConfigService configSvc;

  @Override
  public void sendMessage(String phone, String smscode, HttpSession session) throws RuntimeException {
    String timeoutStr = configSvc.getValue(ConfigService.GROUP_SMSCONFIG, ConfigService.SMSCONFIG_SMS_TIMEOUT);
    long curTime = new java.util.Date().getTime();
    long timeout = 0;// 时间限制，超过这个时间才允许重新获取验证码
    if (StringUtils.isNotBlank(timeoutStr)) {
      timeout = 1000 * Integer.parseInt(timeoutStr);
    }
    timeout = timeout + curTime;// 超时时间
    Object codeObj = session.getAttribute(BaseConstans.USER_SMS_KEY);
    if (null != codeObj) {
      // 如果之前有获取过验证码
      Object[] codeEntry = (Object[]) codeObj;
      // 将session中的超时时间与当前时间进行对比
      if (curTime - Long.parseLong(codeEntry[1].toString()) < 0) {
        // 超时时间比当前时间晚还不能再次发送
        long remain = Long.parseLong(codeEntry[1].toString()) - curTime;
        remain = (remain > 0) ? remain / 1000 : 0;
        throw new RuntimeException(timeoutStr + "秒内不能再次发送,请稍后重试|" + remain);
      }
    }
    session.setAttribute(BaseConstans.USER_SMS_KEY, new Object[] { smscode, timeout, timeoutStr });
    // 1请求接口地址
    String url = configSvc.getValue(ConfigService.GROUP_SMSCONFIG, ConfigService.SMSCONFIG_SMS_SEND_URL);

    // 2.发送短信
    Map params = new HashMap();// 请求参数
    params.put("mobile", phone);// 接收短信的手机号码
    params.put("tpl_id", "");// 短信模板ID，请参考个人中心短信模板设置
    params.put("tpl_value", "");// 变量名和变量值对。如果你的变量名或者变量值中带有#&=中的任意一个特殊符号，请先分别进行urlencode编码后再传递，<a
                                // href="http://www.juhe.cn/news/index/id/50"
                                // target="_blank">详细说明></a>
    params.put("key", "");// 应用APPKEY(应用详细页查询)
    params.put("dtype", "json");// 返回数据的格式,xml或json，默认json

    try {
      // String result = HttpClientUtils.sendGetRequest(url, null);
    }
    catch (Exception e) {
      e.printStackTrace();
    }
  }

}
