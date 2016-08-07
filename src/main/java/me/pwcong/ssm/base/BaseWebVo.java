package me.pwcong.ssm.base;

import java.io.Serializable;

public class BaseWebVo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4305956469464072860L;

	int code;
	String desc;
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public BaseWebVo(int code, String desc) {
		super();
		this.code = code;
		this.desc = desc;
	}
	
	public BaseWebVo() {
	}
	
}
