package com.wx.server.vo;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

public class SignatureVo implements Serializable {

  /**
   * 
   */
  private static final long serialVersionUID = -8760270075279458374L;

  private String signature;

  private String timestamp;

  private String nonce;

  private String token;

  public SignatureVo() {
  }

  public SignatureVo(String signature, String token, String timestamp, String nonce) {
    this.signature = signature;
    this.token = token;
    this.timestamp = timestamp;
    this.nonce = nonce;
  }

  public boolean checkSignature() {
    // 1、排序
    String[] arr = new String[] { token, timestamp, nonce };
    Arrays.sort(arr);
    // 2、生成新的字符串
    StringBuilder content = new StringBuilder();
    for (int i = 0; i < arr.length; i++) {
      content.append(arr[i]);
    }
    MessageDigest md = null;
    String tmpStr = null;

    try {
      md = MessageDigest.getInstance("SHA-1");
      // 将三个参数字符串拼接成一个字符串进行sha1加密
      byte[] digest = md.digest(content.toString().getBytes());
      tmpStr = byteToStr(digest);
    }
    catch (NoSuchAlgorithmException e) {
      e.printStackTrace();
    }

    content = null;
    // 将sha1加密后的字符串可与signature对比，标识该请求来源于微信
    return tmpStr != null ? tmpStr.equals(signature.toUpperCase()) : false;
  }

  /**
   * 将字节数组转换为十六进制字符串
   * 
   * @param byteArray
   * @return
   */
  private static String byteToStr(byte[] byteArray) {
    String strDigest = "";
    for (int i = 0; i < byteArray.length; i++) {
      strDigest += byteToHexStr(byteArray[i]);
    }
    return strDigest;
  }

  /**
   * 将字节转换为十六进制字符串
   * 
   * @param mByte
   * @return
   */
  private static String byteToHexStr(byte mByte) {
    char[] Digit = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };
    char[] tempArr = new char[2];
    tempArr[0] = Digit[(mByte >>> 4) & 0X0F];
    tempArr[1] = Digit[mByte & 0X0F];
    String s = new String(tempArr);
    return s;
  }
}
