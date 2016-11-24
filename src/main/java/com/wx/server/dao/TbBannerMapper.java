package com.wx.server.dao;

import com.wx.server.entity.TbBanner;
import com.wx.server.entity.TbBannerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbBannerMapper {
    int deleteByExample(TbBannerExample example);

    int deleteByPrimaryKey(Integer banId);

    int insert(TbBanner record);

    int insertSelective(TbBanner record);

    List<TbBanner> selectByExample(TbBannerExample example);

    TbBanner selectByPrimaryKey(Integer banId);

    int updateByExampleSelective(@Param("record") TbBanner record, @Param("example") TbBannerExample example);

    int updateByExample(@Param("record") TbBanner record, @Param("example") TbBannerExample example);

    int updateByPrimaryKeySelective(TbBanner record);

    int updateByPrimaryKey(TbBanner record);
}