package me.pwcong.ssm.utils;

public abstract class StringUtil {
	
	
	public static boolean isNullOrEmpty(String string){

		if(null==string){
			return true;
		}else if (string.isEmpty()) {
			return true;
		}
		else {
			return false;
		}

	}
	
	public static boolean equal(String s1,String s2){
		return s1.equals(s2);
	}

}
