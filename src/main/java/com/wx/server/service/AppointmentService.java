package com.wx.server.service;

import com.wx.server.entity.TbRepairShop;
import com.wx.server.entity.TbService;
import com.wx.server.entity.TbUser;

/**
 * @author zhenghang
 * @version 创建时间：2016年12月11日 上午10:26:29
 */
public interface AppointmentService extends CommonService {
  /**
   * 预约技师
   * 
   * @param service 服务项目
   * @param reserve 预约者
   * @param technician 技师
   */
  public void addAppointment(TbService service, TbUser reserve, TbUser technician);

  /**
   * 预约门店
   * 
   * @param service 服务项目
   * @param reserve 预约者
   * @param shop 修理店
   */
  public void addAppointment(TbService service, TbUser reserve, TbRepairShop shop);
}
