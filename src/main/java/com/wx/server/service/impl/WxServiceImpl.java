package com.wx.server.service.impl;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.wx.server.entity.TbConfig;
import com.wx.server.service.ConfigService;
import com.wx.server.service.WxService;
import com.wx.server.utils.HttpClientUtils;
import com.wx.server.utils.SignUtil;
import com.wx.server.utils.StringUtils;
import com.wx.server.vo.SignatureVo;

@Service
public class WxServiceImpl implements WxService {

  private static Logger log = LoggerFactory.getLogger(WxServiceImpl.class);

  @Autowired
  private ConfigService cfgSvc;

  @Override
  public boolean checkSignature(String signature, String timestamp, String nonce) {
    String token = cfgSvc.getValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_TOKEN);
    SignatureVo sign = new SignatureVo(signature, token, timestamp, nonce);
    return sign.checkSignature();
  }

  @Override
  public boolean checkAccessTokenValid() {
    TbConfig config = cfgSvc.getByGroupAndKey(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_EXPIRES_IN);
    if (null != config) {
      long expTime = config.getUpdateTime().getTime();
      expTime += (Long.parseLong(config.getConfigValue()) * 1000);
      return new java.util.Date().getTime() < expTime;
    }
    return false;
  }

  @Override
  public boolean checkJsapiTicketValid() {
    TbConfig config = cfgSvc.getByGroupAndKey(ConfigService.GROUP_JSAPI, ConfigService.WXCONFIG_JSAPI_TICKET);
    if (null != config) {
      long expTime = config.getUpdateTime().getTime();
      expTime += (7200 * 1000);
      return new java.util.Date().getTime() < expTime;
    }
    return false;
  }

  /**
   * 检查JSSDK的签名是否有效（不是接入微信后台的签名）
   * 
   * @return
   */
  private boolean checkSignatureValid() {
    TbConfig config = cfgSvc.getByGroupAndKey(ConfigService.GROUP_JSAPI, ConfigService.SIGNATURE);
    if (null != config) {
      long expTime = config.getUpdateTime().getTime();
      expTime += (7200 * 1000);
      return new java.util.Date().getTime() < expTime;
    }
    return false;
  }

  @Override
  public String getAccessToken() {
    if (!checkAccessTokenValid()) {
      String reqATUrl = cfgSvc.getValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_GET_ACCESS_TOKEN_URL);
      String appID = cfgSvc.getValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_APPID);
      String appsecret = cfgSvc.getValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_APPSECRET);
      reqATUrl = StringUtils.replace(reqATUrl, "APPID", appID);
      reqATUrl = StringUtils.replace(reqATUrl, "APPSECRET", appsecret);
      String jsonStr = HttpClientUtils.sendGetRequest(reqATUrl, null);
      JSONObject jsonObj = (JSONObject) JSONObject.parse(jsonStr);
      String accessToken = jsonObj.getString(ConfigService.WXCONFIG_ACCESS_TOKEN);
      String expiresIn = jsonObj.getString(ConfigService.WXCONFIG_EXPIRES_IN);
      // 这里需要强制更新缓存和数据库中的配置，因为回传的expiresIn两次可能相同，如不强制时间戳不更新
      cfgSvc.setValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_ACCESS_TOKEN, accessToken, true);
      cfgSvc.setValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_EXPIRES_IN, expiresIn, true);
    }
    String at = cfgSvc.getValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_ACCESS_TOKEN);
    return at;
  }

  /**
   * 调用微信JS接口的临时票据
   * 
   * @param access_token 接口访问凭证
   * @return
   */
  @Override
  public String getJsApiTicket(String access_token) {
    if (!checkJsapiTicketValid()) {
      String reqJATUrl = cfgSvc.getValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_GET_JSAPI_TICKET_URL);
      String requestUrl = reqJATUrl.replace("ACCESS_TOKEN", access_token);
      // 发起GET请求获取凭证
      String jsonStr = HttpClientUtils.sendGetSSL(requestUrl);
      String ticket = null;
      if (StringUtils.isNotEmpty(jsonStr)) {
        JSONObject jsonObject = JSON.parseObject(jsonStr);
        try {
          ticket = jsonObject.getString("ticket");
          cfgSvc.setValue(ConfigService.GROUP_JSAPI, ConfigService.WXCONFIG_JSAPI_TICKET, ticket);
        }
        catch (JSONException e) {
          // 获取token失败
          log.error("获取token失败 errcode:{} errmsg:{}", jsonObject.getIntValue("errcode"),
              jsonObject.getString("errmsg"));
        }
      }
    }
    String at = cfgSvc.getValue(ConfigService.GROUP_JSAPI, ConfigService.WXCONFIG_JSAPI_TICKET);
    return at;
  }

  @Override
  public Map<String, String> getJSApiConfig(String url) {
    log.debug("【获取页面JSAPI】url:{}", url);
    String accessToken = getAccessToken();
    if (!checkSignatureValid()) {
      String jsApiTicket = getJsApiTicket(accessToken);
      String noncestr = UUID.randomUUID().toString().replace("-", "").substring(0, 16);
      String timestamp = String.valueOf(System.currentTimeMillis() / 1000);// 时间戳
      String str = "jsapi_ticket=" + jsApiTicket + "&noncestr=" + noncestr + "&timestamp=" + timestamp + "&url=" + url;
      String signature = SignUtil.getSha1(str);
      cfgSvc.setValue(ConfigService.GROUP_JSAPI, ConfigService.TIMESTAMP, timestamp);
      cfgSvc.setValue(ConfigService.GROUP_JSAPI, ConfigService.NONCESTR, noncestr);
      cfgSvc.setValue(ConfigService.GROUP_JSAPI, ConfigService.SIGNATURE, signature);
      log.debug("【JSAPI参数设置更新完毕】");
    }
    String appId = cfgSvc.getValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_APPID);
    String timestamp = cfgSvc.getValue(ConfigService.GROUP_JSAPI, ConfigService.TIMESTAMP);
    String signature = cfgSvc.getValue(ConfigService.GROUP_JSAPI, ConfigService.SIGNATURE);
    String noncestr = cfgSvc.getValue(ConfigService.GROUP_JSAPI, ConfigService.NONCESTR);
    Map<String, String> map = new HashMap<String, String>();
    map.put("appId", appId);
    map.put("timestamp", timestamp);
    map.put("noncestr", noncestr);
    map.put("signature", signature);
    return map;

  }

  @Override
  public String setMenu(String jsonStr) throws Exception {
    String reqUrl = cfgSvc.getValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_MENU_CREATE_URL);
    reqUrl = handlePlaceholder(reqUrl);
    String json = HttpClientUtils.sendPostSSL(reqUrl, JSON.parseObject(jsonStr).toJSONString());
    return json;
  }

  @Override
  public String getWxUserAuthUrl(String state) {
    String wxAuthUrl = cfgSvc.getValue(ConfigService.GROUP_USERCONFIG, ConfigService.USERCONFIG_SNSAPI_USERINFO_URL);
    String appID = cfgSvc.getValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_APPID);
    wxAuthUrl = StringUtils.replace(wxAuthUrl, "APPID", appID);
    // 用户登录完后重定向地址
    String redirectUrl = null;
    if (StringUtils.isNotEmpty(state)) {
      redirectUrl = cfgSvc.getValue(ConfigService.GROUP_USERCONFIG, ConfigService.USERCONFIG_REDIRECT_REG_URL);
      try {
        wxAuthUrl = StringUtils.replace(wxAuthUrl, "REDIRECT_URL", URLEncoder.encode(redirectUrl, "UTF-8"));
      }
      catch (UnsupportedEncodingException e) {
        e.printStackTrace();
      }
    }
    else {
      throw new NullPointerException("getWxUserAuthUrl state can't be null");
    }
    wxAuthUrl = StringUtils.replace(wxAuthUrl, "REDIRECT_URL", redirectUrl);
    wxAuthUrl = StringUtils.replace(wxAuthUrl, "STATE", state);
    return wxAuthUrl;
  }

  @Override
  public String getWxUserAccessToken(String code) {
    // https://api.weixin.qq.com/sns/oauth2/access_token?appid=APPID&secret=SECRET&code=CODE&grant_type=authorization_code
    String apiUrl = cfgSvc.getValue(ConfigService.GROUP_USERCONFIG, ConfigService.USERCONFIG_GET_TOKEN_URL);
    String appID = cfgSvc.getValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_APPID);
    apiUrl = StringUtils.replace(apiUrl, "APPID", appID);
    String json = HttpClientUtils.sendGetSSL(apiUrl);
    return json;
  }

  private String handlePlaceholder(String reqUrl) {
    String appID = cfgSvc.getValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_APPID);
    String appsecret = cfgSvc.getValue(ConfigService.GROUP_WXCONFIG, ConfigService.WXCONFIG_APPSECRET);
    String accessToken = getAccessToken();
    reqUrl = StringUtils.replace(reqUrl, "APPID", appID);
    reqUrl = StringUtils.replace(reqUrl, "APPSECRET", appsecret);
    reqUrl = StringUtils.replace(reqUrl, "ACCESS_TOKEN", accessToken);
    return reqUrl;
  }

}
