package com.wx.server.web.index;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.wx.server.service.TbUserService;

@Controller
public class IndexController {

	@Autowired
	TbUserService userService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView root(HttpServletRequest request, HttpSession session) {
		Map<String, String> map = new HashMap<>();
		map.put("index", "html");
		ModelAndView modelAndView = new ModelAndView("/index");
		modelAndView.addObject(map);
		return modelAndView;
	}

	@RequestMapping(value = "/index.html", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request, HttpSession session) {
		return root(request, session);
	}

	@RequestMapping(value = "/index.json", method = RequestMethod.GET)
	@ResponseBody
	public String indexJson(HttpServletRequest request, HttpSession session) {
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("success", true);
		return JSON.toJSONString(result);
	}
}
