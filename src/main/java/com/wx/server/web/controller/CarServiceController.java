package com.wx.server.web.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.wx.server.service.CarServiceService;

@Controller
@RequestMapping(value = "/service")
public class CarServiceController {
  @Autowired
  private CarServiceService carSvc;

  @RequestMapping(value = "/list", method = RequestMethod.GET)
  @ResponseBody
  public String list(Integer categoryId) {
    Map<String, Object> result = new HashMap<String, Object>();
    if (null != categoryId) {
      result.put("data", carSvc.getByCategoryId(categoryId));
    }
    else {
      result.put("data", carSvc.listAll());
    }
    return JSON.toJSONString(result);
  }
}
