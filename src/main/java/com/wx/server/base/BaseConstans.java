package com.wx.server.base;

import java.util.Map;

import org.springframework.ui.ModelMap;

public class BaseConstans {

	public static final boolean SUCCESS = true;
	public static final boolean FAILE = false;

	public static final String FLAG = "success";

	public static final String MSG = "message";

	public static final String DATA = "data";

	public static final String CTX_PATH = "cp";

	public static final String RES = "res";

	public static final String START_TIME = "stime";

	public static void wrapError(String message, ModelMap map) {
		map.put(FLAG, FAILE);
		map.put(MSG, message);
	}

	public static void wrapError(String message, Map map) {
		map.put(FLAG, FAILE);
		map.put(MSG, message);
	}

	public static void wrapSuccess(Object data, ModelMap map) {
		map.put(FLAG, SUCCESS);
		map.put(DATA, data);
	}

	public static void wrapSuccess(Object data, Map map) {
		map.put(FLAG, SUCCESS);
		map.put(DATA, data);
	}

}
