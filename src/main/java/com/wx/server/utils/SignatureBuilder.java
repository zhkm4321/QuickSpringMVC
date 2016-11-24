package com.wx.server.utils;

import com.wx.server.conf.Constants;

public abstract class SignatureBuilder {
	
	
	public static Signature build(){
		
		String nonce=String.valueOf(Math.round(Math.random()*100000));
		String appSecret=new String(Constants.APP_SECRET);
		String timestamp=String.valueOf(DateUtil.time().getTime());
		try {
			
			String signature=EncodeUtil.byte2HexStr(DigestCoder.SHAEncode((appSecret+nonce+timestamp).getBytes()));
			
			return new Signature(nonce, timestamp, signature);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	


	
	public static class Signature{
		
		public final String nonce;
		public final String timestamp;
		public final String signature;
		public Signature(String nonce, String timestamp, String signature) {
			super();
			this.nonce = nonce;
			this.timestamp = timestamp;
			this.signature = signature;
		}
	}
	
}
