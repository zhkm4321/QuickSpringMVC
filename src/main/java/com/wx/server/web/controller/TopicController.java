package com.wx.server.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wx.server.base.BaseConstans;
import com.wx.server.service.CategoryService;
import com.wx.server.service.TopicService;
import com.wx.server.utils.TplPathUtils;
import com.wx.server.web.directive.DirectiveUtils;
import com.wx.server.web.directive.TopicPageDirective;

@Controller
@RequestMapping(value = "/topic")
public class TopicController {
  @Autowired
  private CategoryService catgSvc;

  @Autowired
  private TopicService topicSvc;

  @RequestMapping(value = "/index")
  public String topicIndex(Integer categoryId, HttpSession session, ModelMap mav) {
    mav.put(BaseConstans.POSITION, "topicIndex");
    mav.put("categoryId", categoryId);
    mav.put("valid", 1);
    mav.put("pageNo", 1);
    mav.put("pageSize", 10);
    return TplPathUtils.getFrontTpl("topic/index");
  }

  @RequestMapping(value = "/list", method = RequestMethod.POST)
  public String list(Integer categoryId, Integer userId, Integer valid, Integer pageNo, Integer pageSize,
      ModelMap mav) {
    mav.put(TopicPageDirective.PARAM_CATEGORY_ID, categoryId);
    mav.put(TopicPageDirective.PARAM_USER_ID, userId);
    mav.put(TopicPageDirective.PARAM_VALID, valid);
    mav.put(DirectiveUtils.PAGE_NO, pageNo);
    mav.put(DirectiveUtils.PAGE_SIZE, pageSize);
    return TplPathUtils.getFrontTpl("topic/list");
  }

  @RequestMapping(value = "/detail")
  public String detail(HttpSession session, ModelMap mav) {
    return TplPathUtils.getFrontTpl("topic/detail");
  }

  @RequestMapping(value = "/publish")
  public String publish(HttpSession session, ModelMap mav) {
    return TplPathUtils.getFrontTpl("topic/publish");
  }
}
