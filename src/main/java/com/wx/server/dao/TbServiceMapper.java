package com.wx.server.dao;

import com.wx.server.entity.TbService;
import com.wx.server.entity.TbServiceExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbServiceMapper {
    long countByExample(TbServiceExample example);

    int deleteByExample(TbServiceExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbService record);

    int insertSelective(TbService record);

    List<TbService> selectByExample(TbServiceExample example);

    TbService selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbService record, @Param("example") TbServiceExample example);

    int updateByExample(@Param("record") TbService record, @Param("example") TbServiceExample example);

    int updateByPrimaryKeySelective(TbService record);

    int updateByPrimaryKey(TbService record);
}