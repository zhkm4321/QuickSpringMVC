package com.wx.server.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wx.server.dao.TbAppointmentMapper;
import com.wx.server.entity.TbAppointment;
import com.wx.server.entity.TbRepairShop;
import com.wx.server.entity.TbService;
import com.wx.server.entity.TbUser;
import com.wx.server.service.AppointmentService;
import com.wx.server.service.abs.AbstractCommonService;

@Service
public class AppointmentImpl extends AbstractCommonService<TbAppointment> implements AppointmentService {

  @Autowired
  private TbAppointmentMapper appointmentMapper;

  public AppointmentImpl() {
    super(TbAppointment.class);
  }

  @Override
  public void addAppointment(TbService service, TbUser reserve, TbUser technician) {
    // TODO Auto-generated method stub

  }

  @Override
  public void addAppointment(TbService service, TbUser reserve, TbRepairShop shop) {
    // TODO Auto-generated method stub

  }

}
