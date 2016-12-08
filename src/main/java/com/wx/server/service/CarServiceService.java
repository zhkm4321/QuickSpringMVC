package com.wx.server.service;

import java.util.List;

public interface CarServiceService extends CommonService {

  List getByCategoryId(Integer categoryId);

}
