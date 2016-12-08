package com.wx.server.utils;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.alibaba.fastjson.JSONObject;

/**
 * ajax请求响应json数据工具类
 * 
 * @author zhenghang E-mail: zhenghang@unitedstone.net
 * @version 创建时间：2016年12月8日 下午11:17:22
 */
public class AjaxRespUtils {

  /**
   * 渲染正常返回数据的json
   * 
   * @param data
   * @return
   */
  public static String renderSuccess(Map<String, Object> data, String message) {
    Map<String, Object> result = new HashMap<String, Object>();
    result.put("success", true);
    result.put("message", message);
    result.put("data", data);
    result.put("timestamp", new Date().getTime());
    return JSONObject.toJSONString(result);
  }
  
  /**
   * 渲染正常返回数据的json
   * 
   * @param data
   * @return
   */
  public static String renderSuccess() {
    Map<String, Object> result = new HashMap<String, Object>();
    result.put("success", true);
    result.put("timestamp", new Date().getTime());
    return JSONObject.toJSONString(result);
  }

  /**
   * 渲染正常返回数据的json
   * 
   * @param data
   * @return
   */
  public static String renderSuccess(String message) {
    Map<String, Object> result = new HashMap<String, Object>();
    result.put("success", true);
    result.put("message", message);
    result.put("timestamp", new Date().getTime());
    return JSONObject.toJSONString(result);
  }

  /**
   * 渲染异常json
   * 
   * @param message
   * @return
   */
  public static String renderErrors(String message) {
    Map<String, Object> result = new HashMap<String, Object>();
    result.put("success", false);
    result.put("message", message);
    result.put("timestamp", new Date().getTime());
    return JSONObject.toJSONString(result);
  }
}
