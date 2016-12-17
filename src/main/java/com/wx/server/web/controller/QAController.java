package com.wx.server.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wx.server.base.BaseConstans;
import com.wx.server.utils.TplPathUtils;

@Controller
@RequestMapping("/qa")
public class QAController {
  private static Logger log = LoggerFactory.getLogger(QAController.class);

  @RequestMapping(value = "/list", method = RequestMethod.GET)
  public String demo(HttpServletRequest request, HttpSession session, ModelMap model) {
    model.put(BaseConstans.POSITION, "ask");
    return TplPathUtils.getFrontTpl("/qa/list");
  }
}
