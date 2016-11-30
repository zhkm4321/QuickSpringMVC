package com.wx.server.dao;

import com.wx.server.entity.TbOrder;
import com.wx.server.entity.TbOrderExample;
import com.wx.server.entity.TbOrderWithBLOBs;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbOrderMapper {
    int deleteByExample(TbOrderExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbOrderWithBLOBs record);

    int insertSelective(TbOrderWithBLOBs record);

    List<TbOrderWithBLOBs> selectByExampleWithBLOBs(TbOrderExample example);

    List<TbOrder> selectByExample(TbOrderExample example);

    TbOrderWithBLOBs selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbOrderWithBLOBs record, @Param("example") TbOrderExample example);

    int updateByExampleWithBLOBs(@Param("record") TbOrderWithBLOBs record, @Param("example") TbOrderExample example);

    int updateByExample(@Param("record") TbOrder record, @Param("example") TbOrderExample example);

    int updateByPrimaryKeySelective(TbOrderWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(TbOrderWithBLOBs record);

    int updateByPrimaryKey(TbOrder record);
}