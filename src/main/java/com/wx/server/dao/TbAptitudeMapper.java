package com.wx.server.dao;

import com.wx.server.entity.TbAptitude;
import com.wx.server.entity.TbAptitudeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbAptitudeMapper {
    int deleteByExample(TbAptitudeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbAptitude record);

    int insertSelective(TbAptitude record);

    List<TbAptitude> selectByExample(TbAptitudeExample example);

    TbAptitude selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbAptitude record, @Param("example") TbAptitudeExample example);

    int updateByExample(@Param("record") TbAptitude record, @Param("example") TbAptitudeExample example);

    int updateByPrimaryKeySelective(TbAptitude record);

    int updateByPrimaryKey(TbAptitude record);
}