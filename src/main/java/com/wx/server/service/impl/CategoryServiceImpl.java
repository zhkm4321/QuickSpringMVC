package com.wx.server.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wx.server.dao.TbCategoryMapper;
import com.wx.server.dao.statistic.VCategoryTopicCountMapper;
import com.wx.server.entity.TbCategory;
import com.wx.server.entity.TbCategoryExample;
import com.wx.server.entity.statistic.VCategoryTopicCount;
import com.wx.server.service.CategoryService;
import com.wx.server.service.abs.AbstractCommonService;
import com.wx.server.vo.CategoryVo;

@Service
public class CategoryServiceImpl extends AbstractCommonService<TbCategory> implements CategoryService {

  public CategoryServiceImpl() {
    super(TbCategory.class);
  }

  @Autowired
  private TbCategoryMapper categoryMapper;

  @Autowired
  private VCategoryTopicCountMapper catgCountMapper;

  @Override
  public List<TbCategory> getCategoryList(Integer status) {
    TbCategoryExample selectExample = new TbCategoryExample();
    selectExample.setOrderByClause("sort asc");
    // 判断参数是否有效
    if (null != status) {
      TbCategoryExample.Criteria criteria = selectExample.createCriteria();
      criteria.andStatusEqualTo(status);
    }
    List<TbCategory> list = categoryMapper.selectByExample(selectExample);
    return list;
  }

  @Override
  public List<CategoryVo> getCategoryTree(Integer status) {
    List<TbCategory> list = getCategoryList(status);

    List<VCategoryTopicCount> countList = catgCountMapper.selectCategoryTopicCount();
    Map<Integer, Integer> countMap = new HashMap<Integer, Integer>();
    for (Iterator<VCategoryTopicCount> it = countList.iterator(); it.hasNext();) {
      VCategoryTopicCount vcount = (VCategoryTopicCount) it.next();
      countMap.put(vcount.getCategoryId(), vcount.getCount());
    }

    CategoryVo root = new CategoryVo(0);
    return getSubCateg(root, list, countMap);
  }

  /**
   * 
   * @param vo 根节点
   * @param list 分类列表
   * @param countMap 分类ID与帖子数量映射关系
   * @return
   */
  private List<CategoryVo> getSubCateg(CategoryVo vo, List<TbCategory> list, Map<Integer, Integer> countMap) {
    List<CategoryVo> voList = new ArrayList<CategoryVo>();
    CategoryVo temp = null;
    for (Iterator<TbCategory> it = list.iterator(); it.hasNext();) {
      TbCategory categ = (TbCategory) it.next();
      if (vo.getId().equals(categ.getPid())) {
        temp = category2Vo(categ, countMap);
        temp.setSubList(getSubCateg(temp, list, countMap));
        voList.add(temp);
      }
    }
    return voList;

  }

  @Override
  public CategoryVo category2Vo(TbCategory category, Map<Integer, Integer> countMap) {
    CategoryVo vo = new CategoryVo();
    vo.setId(category.getId());
    vo.setPid(category.getPid());
    vo.setCtgName(category.getCtgName());
    vo.setCtgImg(category.getCtgImg());
    vo.setSort(category.getSort());
    vo.setStatus(category.getStatus());
    if (null != countMap && countMap.containsKey(vo.getId())) {
      vo.setCount(countMap.get(vo.getId()));
    }
    return vo;
  }
}
