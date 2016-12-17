package com.wx.server.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.wx.server.dao.TbTechnicianMapper;
import com.wx.server.entity.TbTechnician;
import com.wx.server.entity.TbTechnicianExample;
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
  private TbTechnicianMapper techMapper;

  @Override
  public Pagination search(Integer categoryId, String keywords, String location) {
    TbTechnicianExample example = new TbTechnicianExample();
    TbTechnicianExample.Criteria criteria = example.createCriteria();
    List<TbTechnician> list = techMapper.selectByExample(example);
    return null;
  }

  @Override
  public UserVo getById(Integer id) throws RuntimeException {
    UserVo tech = userSvc.getById(id);
    TbTechnicianExample example = new TbTechnicianExample();
    TbTechnicianExample.Criteria criteria = example.createCriteria();
    criteria.andUserIdEqualTo(id);
    List<TbTechnician> list = techMapper.selectByExample(example);
    if (!CollectionUtils.isEmpty(list) && list.size() == 1) {
      tech.setTechnician(list.get(0));
    }
    else {
      throw new RuntimeException("tb_technician表中的技师对应的信息不唯一 id:" + id);
    }
    return tech;
  }

}
