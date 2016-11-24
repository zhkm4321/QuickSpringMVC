package com.wx.server.dao;

import com.wx.server.entity.TbAddress;
import com.wx.server.entity.TbAddressExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbAddressMapper {
    int deleteByExample(TbAddressExample example);

    int deleteByPrimaryKey(Integer addrId);

    int insert(TbAddress record);

    int insertSelective(TbAddress record);

    List<TbAddress> selectByExample(TbAddressExample example);

    TbAddress selectByPrimaryKey(Integer addrId);

    int updateByExampleSelective(@Param("record") TbAddress record, @Param("example") TbAddressExample example);

    int updateByExample(@Param("record") TbAddress record, @Param("example") TbAddressExample example);

    int updateByPrimaryKeySelective(TbAddress record);

    int updateByPrimaryKey(TbAddress record);
}