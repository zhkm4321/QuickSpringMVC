package com.wx.server.web.topic;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wx.server.base.BaseConstans;
import com.wx.server.utils.TplPathUtils;

@Controller
@RequestMapping(value = "/topic")
public class TopicController {
  @RequestMapping(value = "/index")
  public String topicIndex(HttpSession session, ModelMap mav) {
    mav.put(BaseConstans.POSITION, "topicIndex");
    return TplPathUtils.getFrontTpl("topic/index");
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
