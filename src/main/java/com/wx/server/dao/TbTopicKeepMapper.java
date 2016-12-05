package com.wx.server.dao;

import com.wx.server.entity.TbTopicKeep;
import com.wx.server.entity.TbTopicKeepExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbTopicKeepMapper {
    int deleteByExample(TbTopicKeepExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbTopicKeep record);

    int insertSelective(TbTopicKeep record);

    List<TbTopicKeep> selectByExample(TbTopicKeepExample example);

    TbTopicKeep selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbTopicKeep record, @Param("example") TbTopicKeepExample example);

    int updateByExample(@Param("record") TbTopicKeep record, @Param("example") TbTopicKeepExample example);

    int updateByPrimaryKeySelective(TbTopicKeep record);

    int updateByPrimaryKey(TbTopicKeep record);
}