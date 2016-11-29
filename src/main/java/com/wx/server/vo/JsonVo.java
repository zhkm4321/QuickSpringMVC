package com.wx.server.vo;

import java.io.Serializable;

public class JsonVo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5320748198566593414L;

	private Object data;

	private boolean success;

	private String message;

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

	public boolean isSuccess() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public JsonVo(boolean success, String message, Object data) {
		this.data = data;
		this.success = success;
		this.message = message;
	}

	public JsonVo() {
	}

	@Override
	public String toString() {
		return "JsonVo [success=" + success + " message=" + message + " object=" + data + "]";
	}

}
