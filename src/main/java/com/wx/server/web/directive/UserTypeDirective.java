package com.wx.server.web.directive;

import java.io.IOException;
import java.util.Map;

import com.wx.server.conf.EnumUserType;

import freemarker.core.Environment;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/**
 * 用户类别标签，标签内部的元素类型满足时展示
 */
public class UserTypeDirective implements TemplateDirectiveModel {
  /**
   * 此TYPE必须和{@link EnumUserType}中name一致。
   */
  public static final String PARAM_TYPE = "type";

  public static final String PARAM_CODE = "code";

  @SuppressWarnings("unchecked")
  public void execute(Environment env, Map params, TemplateModel[] loopVars, TemplateDirectiveBody body)
      throws TemplateException, IOException {
    String typeName = DirectiveUtils.getString(PARAM_TYPE, params);
    Integer typeCode = DirectiveUtils.getInt(PARAM_CODE, params);
    EnumUserType type = EnumUserType.valueOf(typeName.toUpperCase());
    if (type.getCode() == typeCode) {
      body.render(env.getOut());
    }
  }
}
