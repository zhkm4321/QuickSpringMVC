package com.wx.server.service;

import java.util.Map;

public interface WxService {
  /**
   * 验证签名
   * 
   * @param signature
   * @param timestamp
   * @param nonce
   * @return
   */
  public boolean checkSignature(String signature, String timestamp, String nonce);

  /**
   * 验证当前数据库中的AccessToken是否有效
   */
  public boolean checkAccessTokenValid();

  /**
   * 验证当前数据库中的JsapiTicket是否有效
   * 
   * @return
   */
  public boolean checkJsapiTicketValid();

  /**
   * 获取最新有效的AccessToken
   * 
   * @return
   */
  public String getAccessToken();

  /**
   * 获取jsApiTicket
   * 
   * @param access_token
   * @return
   */
  public String getJsApiTicket(String access_token);

  /**
   * 获取jSApiConfig不会每次刷新值只有时间戳过期了才重新获取
   * 
   * @param accessToken
   * @param jsApiTicket
   * @param url
   * @return
   */
  public Map<String, String> getJSApiConfig(String url);

  /**
   * 发送请求设置微信菜单
   * 
   * @param jsonStr post请求参数
   * @return
   * @throws Exception
   */
  public String setMenu(String jsonStr) throws Exception;

  /**
   * 获取微信用户登录确认页面的地址
   * 
   * @param state
   * @return
   */
  public String getWxUserAuthUrl(String state);

  /**
   * 通过code换取网页授权access_token
   * 
   * @param code
   * @return
   */
  public String getWxUserAccessToken(String code);

}
