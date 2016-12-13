package com.wx.server.utils;

import java.util.Set;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public class CameTools {
  public static void main(String[] args) {
    String str = "{'user_name':'o,k','user_sex':0,'object_info':{'business_code':'0001','object_info2':{'object_1':'ok'}}}";
    String str2 = "{'object_info':{'business_code':'ok'}}";
    System.out.println(convert(str));
  }

  public final static void convert(Object json) {
    if (json instanceof JSONArray) {
      JSONArray arr = (JSONArray) json;
      for (Object obj : arr) {
        convert(obj);
      }
    }
    else if (json instanceof JSONObject) {
      JSONObject jo = (JSONObject) json;
      Set<String> keys = jo.keySet();
      String[] array = keys.toArray(new String[keys.size()]);
      for (String key : array) {
        Object value = jo.get(key);
        String[] key_strs = key.split("_");
        if (key_strs.length > 1) {
          StringBuilder sb = new StringBuilder();
          for (int i = 0; i < key_strs.length; i++) {
            String ks = key_strs[i];
            if (!"".equals(ks)) {
              if (i == 0) {
                sb.append(ks);
              }
              else {
                int c = ks.charAt(0);
                if (c >= 97 && c <= 122) {
                  int v = c - 32;
                  sb.append((char) v);
                  if (ks.length() > 1) {
                    sb.append(ks.substring(1));
                  }
                }
                else {
                  sb.append(ks);
                }
              }
            }
          }
          jo.remove(key);
          jo.put(sb.toString(), value);
        }
        convert(value);
      }
    }
  }

  public final static String convert(String json) {
    JSON obj = (JSON) JSON.parse(json);
    convert(obj);
    return obj.toJSONString();
  }

}
