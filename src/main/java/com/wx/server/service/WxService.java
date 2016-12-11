package com.wx.server.service;

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
   * 获取最新有效的AccessToken
   * 
   * @return
   */
  public String getAccessToken();

  /**
   * 发送请求设置微信菜单
   * 
   * @param jsonStr post请求参数
   * @return
   * @throws Exception
   */
  public String setMenu(String jsonStr) throws Exception;
}
