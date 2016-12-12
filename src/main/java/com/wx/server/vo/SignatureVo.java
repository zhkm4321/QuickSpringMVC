package com.wx.server.vo;

import java.io.Serializable;

import com.wx.server.utils.SignUtil;

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
    return SignUtil.checkSignature(signature, timestamp, nonce);
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
