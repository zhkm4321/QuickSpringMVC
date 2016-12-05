package com.wx.server.dao;

import com.wx.server.entity.TbGoods;
import com.wx.server.entity.TbGoodsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbGoodsMapper {
    int deleteByExample(TbGoodsExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbGoods record);

    int insertSelective(TbGoods record);

    List<TbGoods> selectByExampleWithBLOBs(TbGoodsExample example);

    List<TbGoods> selectByExample(TbGoodsExample example);

    TbGoods selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbGoods record, @Param("example") TbGoodsExample example);

    int updateByExampleWithBLOBs(@Param("record") TbGoods record, @Param("example") TbGoodsExample example);

    int updateByExample(@Param("record") TbGoods record, @Param("example") TbGoodsExample example);

    int updateByPrimaryKeySelective(TbGoods record);

    int updateByPrimaryKeyWithBLOBs(TbGoods record);

    int updateByPrimaryKey(TbGoods record);
}