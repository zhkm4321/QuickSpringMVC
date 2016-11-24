package com.wx.server.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public abstract class DateUtil {
	
	
	public static final String DATETIME_FORMAT_PATTERN="yyyy-MM-dd HH:mm:ss";
	public static final String DATE_FORMAT_PATTERN="yyyy-MM-dd";
	public static final SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT_PATTERN);
	
	public static Date time(){
		return Calendar.getInstance().getTime();
	}
	
	public static String getDateStr(){
		Date date = Calendar.getInstance().getTime();
		return sdf.format(date);
	}
}
