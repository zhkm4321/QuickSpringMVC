package com.wx.server.web.directive;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.wx.server.service.CarModelsService;
import com.wx.server.web.directive.DirectiveUtils.InvokeType;

import freemarker.core.Environment;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/**
 * 汽车型号标签
 * 
 * @author zhenghang
 * @version 创建时间：2016年12月15日 下午3:25:38
 */
public class CarBrandDirective implements TemplateDirectiveModel {
  /**
   * 模板名称
   */
  public static final String TPL_NAME = "car_brand";

  @SuppressWarnings({ "rawtypes", "unchecked" })
  public void execute(Environment env, Map params, TemplateModel[] loopVars, TemplateDirectiveBody body)
      throws TemplateException, IOException {
    Map<String, List<String>> brandList = modelsSvc.listBrand();
    Map<String, TemplateModel> paramWrap = new HashMap<String, TemplateModel>(params);
    paramWrap.put(DirectiveUtils.OUT_LIST, DirectiveUtils.getBeansWrapper().wrap(brandList));
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

  @Autowired
  private CarModelsService modelsSvc;
}