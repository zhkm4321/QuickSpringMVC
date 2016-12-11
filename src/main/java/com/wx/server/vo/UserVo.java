package com.wx.server.vo;

import com.wx.server.entity.TbRepairShop;
import com.wx.server.entity.TbTechnician;
import com.wx.server.entity.TbUser;

public class UserVo extends TbUser {
  /**
   * 
   */
  private static final long serialVersionUID = 9045384863834350404L;

  public UserVo() {
  }

  TbTechnician technician;

  TbRepairShop repairShop;

  public TbTechnician getTechnician() {
    return technician;
  }

  public void setTechnician(TbTechnician technician) {
    this.technician = technician;
  }

  public TbRepairShop getRepairShop() {
    return repairShop;
  }

  public void setRepairShop(TbRepairShop repairShop) {
    this.repairShop = repairShop;
  }
}
