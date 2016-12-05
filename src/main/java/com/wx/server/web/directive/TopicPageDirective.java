package com.wx.server.web.directive;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.wx.server.service.TopicService;
import com.wx.server.vo.page.Pagination;
import com.wx.server.web.directive.DirectiveUtils.InvokeType;

import freemarker.core.Environment;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/**
 * 专题分页标签
 */
public class TopicPageDirective implements TemplateDirectiveModel {
  /**
   * 模板名称
   */
  public static final String TPL_NAME = "topic_page";

  /**
   * 帖子栏目ID。
   */
  public static final String PARAM_CATEGORY_ID = "categoryId";

  /**
   * 是否只查询单个用户的
   */
  public static final String PARAM_USER_ID = "userId";

  /**
   * 是否有效
   */
  private static final String PARAM_VALID = "valid";

  @SuppressWarnings({ "rawtypes", "unchecked" })
  public void execute(Environment env, Map params, TemplateModel[] loopVars, TemplateDirectiveBody body)
      throws TemplateException, IOException {
    Pagination page = topicService.getPageForTag(getCategoryId(params), getUserId(params), getValid(params),
        DirectiveUtils.getPageNo(params), DirectiveUtils.getPageSize(params));

    Map<String, TemplateModel> paramWrap = new HashMap<String, TemplateModel>(params);
    paramWrap.put(DirectiveUtils.OUT_LIST, DirectiveUtils.getBeansWrapper().wrap(page.getList()));
    Map<String, TemplateModel> origMap = DirectiveUtils.addParamsToVariable(env, paramWrap);
    InvokeType type = DirectiveUtils.getInvokeType(params);
    if (InvokeType.body == type) {
      body.render(env.getOut());
    }
    else {
      throw new RuntimeException("invoke type not handled: " + type);
    }
    DirectiveUtils.removeParamsFromVariable(env, paramWrap, origMap);
  }

  private Integer getCategoryId(Map<String, TemplateModel> params) throws TemplateException {
    return DirectiveUtils.getInt(PARAM_CATEGORY_ID, params);
  }

  private Integer getUserId(Map<String, TemplateModel> params) throws TemplateException {
    return DirectiveUtils.getInt(PARAM_USER_ID, params);
  }

  private Integer getValid(Map<String, TemplateModel> params) throws TemplateException {
    return DirectiveUtils.getInt(PARAM_VALID, params);
  }

  @Autowired
  private TopicService topicService;
}
