package com.wx.server.dao;

import com.wx.server.entity.TbCarModels;
import com.wx.server.entity.TbCarModelsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbCarModelsMapper {

  /**
   * This method was generated by MyBatis Generator. This method corresponds to the database table tb_car_models
   * @mbg.generated
   */
  long countByExample(TbCarModelsExample example);

  /**
   * This method was generated by MyBatis Generator. This method corresponds to the database table tb_car_models
   * @mbg.generated
   */
  int deleteByExample(TbCarModelsExample example);

  /**
   * This method was generated by MyBatis Generator. This method corresponds to the database table tb_car_models
   * @mbg.generated
   */
  int insert(TbCarModels record);

  /**
   * This method was generated by MyBatis Generator. This method corresponds to the database table tb_car_models
   * @mbg.generated
   */
  int insertSelective(TbCarModels record);

  /**
   * This method was generated by MyBatis Generator. This method corresponds to the database table tb_car_models
   * @mbg.generated
   */List<TbCarModels> selectByExample(TbCarModelsExample example);

  /**
   * This method was generated by MyBatis Generator. This method corresponds to the database table tb_car_models
   * @mbg.generated
   */int updateByExampleSelective(@Param("record") TbCarModels record,@Param("example") TbCarModelsExample example);

  /**
   * This method was generated by MyBatis Generator. This method corresponds to the database table tb_car_models
   * @mbg.generated
   */int updateByExample(@Param("record") TbCarModels record,@Param("example") TbCarModelsExample example);
}