package com.wx.server.service;

import com.wx.server.vo.UserVo;
import com.wx.server.vo.page.Pagination;

public interface TechnicianService extends CommonService {

  Pagination search(Integer categoryId, String keywords, String location);

  UserVo getById(Integer id) throws RuntimeException;
}
