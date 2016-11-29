package com.wx.server.dao;

import com.wx.server.entity.TbFreight;
import com.wx.server.entity.TbFreightExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbFreightMapper {
    int deleteByExample(TbFreightExample example);

    int deleteByPrimaryKey(Integer fgtId);

    int insert(TbFreight record);

    int insertSelective(TbFreight record);

    List<TbFreight> selectByExample(TbFreightExample example);

    TbFreight selectByPrimaryKey(Integer fgtId);

    int updateByExampleSelective(@Param("record") TbFreight record, @Param("example") TbFreightExample example);

    int updateByExample(@Param("record") TbFreight record, @Param("example") TbFreightExample example);

    int updateByPrimaryKeySelective(TbFreight record);

    int updateByPrimaryKey(TbFreight record);
}