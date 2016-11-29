package com.wx.server.dao;

import com.wx.server.entity.TbTechnician;
import com.wx.server.entity.TbTechnicianExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbTechnicianMapper {
    int deleteByExample(TbTechnicianExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbTechnician record);

    int insertSelective(TbTechnician record);

    List<TbTechnician> selectByExample(TbTechnicianExample example);

    TbTechnician selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbTechnician record, @Param("example") TbTechnicianExample example);

    int updateByExample(@Param("record") TbTechnician record, @Param("example") TbTechnicianExample example);

    int updateByPrimaryKeySelective(TbTechnician record);

    int updateByPrimaryKey(TbTechnician record);
}