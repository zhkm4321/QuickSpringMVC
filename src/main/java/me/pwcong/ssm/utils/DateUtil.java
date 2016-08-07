package me.pwcong.ssm.utils;

import java.util.Calendar;
import java.util.Date;

public abstract class DateUtil {
	
	
	public static final String DATE_FORMAT_PATTERN="yyyy-MM-dd HH:mm:ss";
	
	public static Date time(){
		return Calendar.getInstance().getTime();
	}
}
