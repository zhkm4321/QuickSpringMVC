package com.wx.server.service;

import javax.servlet.http.HttpSession;

public interface SMSService {

  public void sendMessage(String phone, String code, HttpSession session) throws RuntimeException;
}
