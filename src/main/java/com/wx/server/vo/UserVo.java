package com.wx.server.vo;

import com.wx.server.entity.TbRepairShop;
import com.wx.server.entity.TbUser;
import com.wx.server.entity.custom.VTechnician;
import com.wx.server.utils.ReflectionUtil;

public class UserVo extends TbUser {
  /**
   * 
   */
  private static final long serialVersionUID = 9045384863834350404L;

  public UserVo() {
  }

  public UserVo(TbUser user) {
    ReflectionUtil.fatherToChild(user, this);
  }

  VTechnician technician;

  TbRepairShop repairShop;

  public VTechnician getTechnician() {
    return technician;
  }

  public void setTechnician(VTechnician technician) {
    this.technician = technician;
  }

  public TbRepairShop getRepairShop() {
    return repairShop;
  }

  public void setRepairShop(TbRepairShop repairShop) {
    this.repairShop = repairShop;
  }
}
