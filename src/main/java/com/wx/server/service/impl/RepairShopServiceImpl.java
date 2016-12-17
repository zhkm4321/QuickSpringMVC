package com.wx.server.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.wx.server.dao.TbRepairShopMapper;
import com.wx.server.entity.TbRepairShop;
import com.wx.server.entity.TbRepairShopExample;
import com.wx.server.service.RepairShopService;
import com.wx.server.service.UserService;
import com.wx.server.service.abs.AbstractCommonService;
import com.wx.server.vo.UserVo;
import com.wx.server.vo.page.Pagination;

@Service
public class RepairShopServiceImpl extends AbstractCommonService<TbRepairShop> implements RepairShopService {

  public RepairShopServiceImpl() {
    super(TbRepairShop.class);
  }

  @Autowired
  private UserService userSvc;

  @Autowired
  private TbRepairShopMapper rSMapper;

  @Override
  public Pagination search(String keywords, String location) {
    // TODO Auto-generated method stub
    return null;
  }

  @Override
  public UserVo getById(Integer id) throws RuntimeException {
    UserVo tech = userSvc.getById(id);
    TbRepairShopExample example = new TbRepairShopExample();
    TbRepairShopExample.Criteria criteria = example.createCriteria();
    criteria.andUserIdEqualTo(id);
    List<TbRepairShop> list = rSMapper.selectByExample(example);
    if (!CollectionUtils.isEmpty(list) && list.size() == 1) {
      tech.setRepairShop(list.get(0));
    }
    else {
      throw new RuntimeException("tb_repairshop表中的商铺对应的信息不唯一 id:" + id);
    }
    return tech;
  }

}
