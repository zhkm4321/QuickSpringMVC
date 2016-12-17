package com.wx.server.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wx.server.dao.custom.VTechCustomMapper;
import com.wx.server.entity.TbTechnician;
import com.wx.server.entity.TbTechnicianExample;
import com.wx.server.entity.custom.VTechnician;
import com.wx.server.service.TechnicianService;
import com.wx.server.service.UserService;
import com.wx.server.service.abs.AbstractCommonService;
import com.wx.server.vo.UserVo;
import com.wx.server.vo.page.Pagination;

@Service
public class TechnicianServiceImpl extends AbstractCommonService<TbTechnician> implements TechnicianService {

  public TechnicianServiceImpl() {
    super(TbTechnician.class);
  }

  @Autowired
  private UserService userSvc;

  @Autowired
  private VTechCustomMapper techMapper;

  @Override
  public Pagination search(Integer categoryId, String keywords, String location) {
    TbTechnicianExample example = new TbTechnicianExample();
    TbTechnicianExample.Criteria criteria = example.createCriteria();
    // TODO 这里要用新的接口方法暂时没有写
    // List<TbTechnician> list = techMapper.search(example);
    return null;
  }

  @Override
  public UserVo getById(Integer id) throws RuntimeException {
    UserVo userVo = userSvc.getById(id);
    VTechnician tech = techMapper.getByUserId(id);
    userVo.setTechnician(tech);
    return userVo;
  }

}
