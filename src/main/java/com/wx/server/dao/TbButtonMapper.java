package com.wx.server.dao;

import com.wx.server.entity.TbButton;
import com.wx.server.entity.TbButtonExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbButtonMapper {
    int deleteByExample(TbButtonExample example);

    int deleteByPrimaryKey(String id);

    int insert(TbButton record);

    int insertSelective(TbButton record);

    List<TbButton> selectByExample(TbButtonExample example);

    TbButton selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") TbButton record, @Param("example") TbButtonExample example);

    int updateByExample(@Param("record") TbButton record, @Param("example") TbButtonExample example);

    int updateByPrimaryKeySelective(TbButton record);

    int updateByPrimaryKey(TbButton record);
}