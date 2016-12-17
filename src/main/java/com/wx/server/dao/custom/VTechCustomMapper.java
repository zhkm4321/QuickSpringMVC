package com.wx.server.dao.custom;

import com.wx.server.entity.custom.VTechnician;

public interface VTechCustomMapper {

  VTechnician getByUserId(Integer id);

}
