package test.controller;

import com.wx.server.utils.HttpClientUtils;

/**
 * ContentNegotiatingViewResolverPractice 根据路径后缀，选择不同视图
 * 
 * @author doctor
 *
 * @time 2015年1月7日 上午10:08:24
 */
public class ContentNegotiatingViewResolverTest {
  // @Test
  public void test() throws Throwable {

    String response = HttpClientUtils.sendGetRequest("http://localhost:8080/wxserver/index.json", "UTF-8");
    System.out.println(response);
    System.out.println("============================================");
    response = HttpClientUtils.sendGetRequest("http://localhost:8080/wxserver/index.html", "UTF-8");
    System.out.println(response);
    System.out.println("============================================");
    response = HttpClientUtils.sendGetRequest("http://localhost:8080/wxserver", "UTF-8");
    System.out.println(response);
    System.out.println("============================================");
  }
}