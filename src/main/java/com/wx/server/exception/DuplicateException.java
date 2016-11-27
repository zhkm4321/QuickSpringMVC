package com.wx.server.exception;

public class DuplicateException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2502459952513231193L;

	public DuplicateException() {
		super();
	}

	public DuplicateException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public DuplicateException(String message, Throwable cause) {
		super(message, cause);
	}

	public DuplicateException(String message) {
		super(message);
	}

	public DuplicateException(Throwable cause) {
		super(cause);
	}

}
