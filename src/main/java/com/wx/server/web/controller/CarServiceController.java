package com.wx.server.web.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.wx.server.entity.TbService;
import com.wx.server.service.CarServiceService;
import com.wx.server.utils.AjaxRespUtils;
import com.wx.server.utils.SessionUtils;
import com.wx.server.utils.TplPathUtils;

@Controller
@RequestMapping(value = "/service")
public class CarServiceController {
  private static Logger log = LoggerFactory.getLogger(CarServiceController.class);

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

  /**
   * 预约选择服务项目和时间
   * 
   * @param session
   * @param model
   * @return
   */
  @RequestMapping(value = "/appointment_1", method = RequestMethod.GET)
  public String appointment_1(HttpSession session, ModelMap model) {
    SessionUtils.removeUserCarService(session);
    model.put("serviceList", carSvc.listAll());
    Calendar cal = new GregorianCalendar();
    cal.setTime(new java.util.Date());
    List<Integer> datePartList = new ArrayList<Integer>();
    datePartList.add(cal.get(Calendar.YEAR));
    datePartList.add(cal.get(Calendar.MONTH) + 1);
    datePartList.add(cal.get(Calendar.DAY_OF_MONTH));
    // datePartList.add(cal.get(Calendar.HOUR_OF_DAY));
    // datePartList.add(cal.get(Calendar.MINUTE));
    String dateStr = Arrays.toString(datePartList.toArray());
    model.put("curDateStr", dateStr.substring(1, dateStr.length() - 1));
    return TplPathUtils.getFrontTpl("/appointment/select_service");
  }

  /**
   * 预约第二步选择技师
   * 
   * @param session
   * @param model
   * @return
   */
  @RequestMapping(value = "/appointment_2", method = RequestMethod.GET)
  public String appointment_2(HttpSession session, ModelMap model) {
    TbService service = SessionUtils.getUserCarService(session);
    if (service != null) {
      model.put("service", service);
    }
    else {
      model.put("error", "你还没有选择服务");
    }
    return TplPathUtils.getFrontTpl("/appointment/select_technician");
  }

  @RequestMapping(value = "/appointment", method = RequestMethod.POST)
  @ResponseBody
  public String appointment(Integer serviceId, String serviceDate, HttpSession session, ModelMap model) {
    String error = null;
    if (null != serviceId) {
      try {
        TbService service = carSvc.getById(serviceId);
        SessionUtils.setUserCarService(service, session);
      }
      catch (Exception e) {
        log.error("预约失败", e);
        error = "预约失败";
      }
      return AjaxRespUtils.renderSuccess();
    }
    else {
      error = "服务ID不能为空";
    }
    return AjaxRespUtils.renderErrors(error);
  }
}
