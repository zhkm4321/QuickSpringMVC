package com.wx.server.dao;

import com.wx.server.entity.TbCoupons;
import com.wx.server.entity.TbCouponsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbCouponsMapper {
    int deleteByExample(TbCouponsExample example);

    int deleteByPrimaryKey(Integer cpsId);

    int insert(TbCoupons record);

    int insertSelective(TbCoupons record);

    List<TbCoupons> selectByExample(TbCouponsExample example);

    TbCoupons selectByPrimaryKey(Integer cpsId);

    int updateByExampleSelective(@Param("record") TbCoupons record, @Param("example") TbCouponsExample example);

    int updateByExample(@Param("record") TbCoupons record, @Param("example") TbCouponsExample example);

    int updateByPrimaryKeySelective(TbCoupons record);

    int updateByPrimaryKey(TbCoupons record);
}