package com.wx.server.utils;

import java.util.UUID;

public abstract class UuidUtil {
	
	public static String uuid(){
		
		String uuid = UUID.randomUUID().toString();
		uuid = uuid.replaceAll("-", "");
		return uuid;
	}

}
