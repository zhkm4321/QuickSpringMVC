package me.pwcong.ssm.utils;

import java.security.MessageDigest;

public abstract class DigestCoder {
	
	//MD5加密
	public static byte[] MD5Encode(byte[] data)throws Exception{
		
		MessageDigest messageDigest=MessageDigest.getInstance("MD5");
		byte[] digest = messageDigest.digest(data);
		return digest;
	}
	
	//SHA-1加密
	public static byte[] SHAEncode(byte[] data)throws Exception{
		MessageDigest messageDigest=MessageDigest.getInstance("SHA-1");
		byte[] digest = messageDigest.digest(data);
		return digest;
	}
}
