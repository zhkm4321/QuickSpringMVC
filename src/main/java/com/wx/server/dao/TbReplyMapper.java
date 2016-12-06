package com.wx.server.dao;

import com.wx.server.entity.TbReply;
import com.wx.server.entity.TbReplyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbReplyMapper {
    long countByExample(TbReplyExample example);

    int deleteByExample(TbReplyExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbReply record);

    int insertSelective(TbReply record);

    List<TbReply> selectByExample(TbReplyExample example);

    TbReply selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbReply record, @Param("example") TbReplyExample example);

    int updateByExample(@Param("record") TbReply record, @Param("example") TbReplyExample example);

    int updateByPrimaryKeySelective(TbReply record);

    int updateByPrimaryKey(TbReply record);
}