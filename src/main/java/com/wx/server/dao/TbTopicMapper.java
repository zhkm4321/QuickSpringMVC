package com.wx.server.dao;

import com.wx.server.entity.TbTopic;
import com.wx.server.entity.TbTopicExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbTopicMapper {
    long countByExample(TbTopicExample example);

    int deleteByExample(TbTopicExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbTopic record);

    int insertSelective(TbTopic record);

    List<TbTopic> selectByExample(TbTopicExample example);

    TbTopic selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbTopic record, @Param("example") TbTopicExample example);

    int updateByExample(@Param("record") TbTopic record, @Param("example") TbTopicExample example);

    int updateByPrimaryKeySelective(TbTopic record);

    int updateByPrimaryKey(TbTopic record);
}