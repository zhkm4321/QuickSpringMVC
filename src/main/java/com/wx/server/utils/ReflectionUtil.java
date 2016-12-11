package com.wx.server.utils;

import java.lang.reflect.Method;

public abstract class ReflectionUtil {
	
	
	/**
	 * 通过类对象，运行指定方法
	 * @param obj 类对象
	 * @param methodName 方法名
	 * @param params 参数值
	 * @return 失败返回null
	 */
	public static Object invokeMethod(Object obj,String methodName,Object[] params){
		
		if(null==obj||StringUtils.isNullOrEmpty(methodName)){
			return null;
		}
		
		Class<?> claszz = obj.getClass();
		
		try {
			Class<?>[] paramTypes=null;
			
			if(params!=null){
				paramTypes=new Class[params.length];
				for(int i=0;i<params.length;i++){
					paramTypes[i]=params[i].getClass();
				}
			}
			Method method = claszz.getMethod(methodName, paramTypes);
			method.setAccessible(true);
			method.invoke(obj, params);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	

}
