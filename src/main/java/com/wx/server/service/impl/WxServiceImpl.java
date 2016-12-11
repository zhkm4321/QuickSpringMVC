package com.wx.server.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.wx.server.entity.TbConfig;
import com.wx.server.service.ConfigService;
import com.wx.server.service.WxService;
import com.wx.server.utils.HttpClientUtils;
import com.wx.server.utils.StringUtils;
import com.wx.server.vo.SignatureVo;

@Service
public class WxServiceImpl implements WxService {

  @Autowired
  private ConfigService configService;

  @Override
  public boolean checkSignature(String signature, String timestamp, String nonce) {
    String token = configService.getValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_TOKEN);
    SignatureVo sign = new SignatureVo(signature, token, timestamp, nonce);
    return sign.checkSignature();
  }

  @Override
  public boolean checkAccessTokenValid() {
    TbConfig config = configService.getByGroupAndKey(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_EXPIRES_IN);
    if (null != config) {
      long expTime = config.getUpdateTime().getTime();
      expTime += (Long.parseLong(config.getConfigValue()) * 1000);
      System.out.println(new java.util.Date().getTime() + "  expTime:" + expTime);
      return new java.util.Date().getTime() < expTime;
    }
    return false;
  }

  @Override
  public String getAccessToken() {
    if (!checkAccessTokenValid()) {
      String reqATUrl = configService.getValue(ConfigService.GROUP_WXCONFIG,
          ConfigService.WXCONFIG_GET_ACCESS_TOKEN_URL);
      String appID = configService.getValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_APPID);
      String appsecret = configService.getValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_APPSECRET);
      reqATUrl = StringUtils.replace(reqATUrl, "APPID", appID);
      reqATUrl = StringUtils.replace(reqATUrl, "APPSECRET", appsecret);
      String jsonStr = HttpClientUtils.sendGetRequest(reqATUrl, null);
      JSONObject jsonObj = (JSONObject) JSONObject.parse(jsonStr);
      String accessToken = jsonObj.getString(ConfigService.WXCONFIG_ACCESS_TOKEN);
      String expiresIn = jsonObj.getString(ConfigService.WXCONFIG_EXPIRES_IN);
      // 这里需要强制更新缓存和数据库中的配置，因为回传的expiresIn两次可能相同，如不强制时间戳不更新
      configService.setValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_ACCESS_TOKEN, accessToken, true);
      configService.setValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_EXPIRES_IN, expiresIn, true);
    }
    String at = configService.getValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_ACCESS_TOKEN);
    return at;
  }

  @Override
  public String setMenu(String jsonStr) throws Exception {
    String reqUrl = configService.getValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_MENU_CREATE_URL);
    reqUrl = handlePlaceholder(reqUrl);
    String json = HttpClientUtils.sendPostSSL(reqUrl, JSON.parseObject(jsonStr).toJSONString());
    return json;
  }

  private String handlePlaceholder(String reqUrl) {
    String appID = configService.getValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_APPID);
    String appsecret = configService.getValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_APPSECRET);
    String accessToken = getAccessToken();
    reqUrl = StringUtils.replace(reqUrl, "APPID", appID);
    reqUrl = StringUtils.replace(reqUrl, "APPSECRET", appsecret);
    reqUrl = StringUtils.replace(reqUrl, "ACCESS_TOKEN", accessToken);
    return reqUrl;
  }

}
