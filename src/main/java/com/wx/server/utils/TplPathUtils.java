package com.wx.server.utils;

/**
 * freemarker前后台模板路径
 * 
 * @author zhenghang E-mail: zhenghang@unitedstone.net
 * @version 创建时间：2016年12月3日 上午11:48:22
 */
public class TplPathUtils {
	/**
	 * 前台模板路径前缀
	 */
	public static String FRONT_PREFIX = "/front";
	/**
	 * 后台模板路径前缀
	 */
	public static String BACKSTAGE_PREFIX = "/backstage";

	public static String getFrontTpl(String path) {
		if (!path.startsWith("/")) {
			path = "/" + path;
		}
		return FRONT_PREFIX + path;
	}

	public static String getBackstageTpl(String path) {
		if (!path.startsWith("/")) {
			path = "/" + path;
		}
		return BACKSTAGE_PREFIX + path;
	}
}
