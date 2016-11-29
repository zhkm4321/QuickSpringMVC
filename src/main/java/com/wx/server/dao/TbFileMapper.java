package com.wx.server.dao;

import com.wx.server.entity.TbFile;
import com.wx.server.entity.TbFileExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbFileMapper {
    int deleteByExample(TbFileExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbFile record);

    int insertSelective(TbFile record);

    List<TbFile> selectByExample(TbFileExample example);

    TbFile selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbFile record, @Param("example") TbFileExample example);

    int updateByExample(@Param("record") TbFile record, @Param("example") TbFileExample example);

    int updateByPrimaryKeySelective(TbFile record);

    int updateByPrimaryKey(TbFile record);
}