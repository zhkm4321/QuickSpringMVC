package com.wx.server.dao;

import com.wx.server.entity.TbIdentification;
import com.wx.server.entity.TbIdentificationExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbIdentificationMapper {
    int deleteByExample(TbIdentificationExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbIdentification record);

    int insertSelective(TbIdentification record);

    List<TbIdentification> selectByExample(TbIdentificationExample example);

    TbIdentification selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbIdentification record, @Param("example") TbIdentificationExample example);

    int updateByExample(@Param("record") TbIdentification record, @Param("example") TbIdentificationExample example);

    int updateByPrimaryKeySelective(TbIdentification record);

    int updateByPrimaryKey(TbIdentification record);
}