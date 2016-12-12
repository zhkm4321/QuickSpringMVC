package com.wx.server.utils;

import java.io.IOException;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLContextBuilder;
import org.apache.http.conn.ssl.TrustStrategy;
import org.apache.http.conn.ssl.X509HostnameVerifier;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StreamUtils;

import com.alibaba.fastjson.JSON;

public abstract class HttpClientUtils {

  private static Logger logger = LoggerFactory.getLogger(HttpClientUtils.class);

  private static PoolingHttpClientConnectionManager connMgr;

  private static RequestConfig requestConfig;

  private static final int MAX_TIMEOUT = 7000;

  public static String postJsonEntity(String url, Object object) {

    CloseableHttpClient httpClient = HttpClients.createDefault();
    HttpPost post = new HttpPost(url);

    post.addHeader(HTTP.CONTENT_TYPE, "application/json");

    String json = JSON.toJSONString(object);

    try {
      StringEntity stringEntity = new StringEntity(json, "UTF-8");
      post.setEntity(stringEntity);
      CloseableHttpResponse response = httpClient.execute(post);
      String result = EntityUtils.toString(response.getEntity());
      return result;
    }
    catch (IOException e) {
      e.printStackTrace();
    }

    return null;

  }

  /**
   * 发送HTTP_GET请求
   * 
   * @see 该方法会自动关闭连接,释放资源
   * @param requestURL 请求地址(含参数)
   * @param decodeCharset 解码字符集,解析响应数据时用之,其为null时默认采用UTF-8解码
   * @return 远程主机响应正文
   */
  public static String sendGetRequest(String reqURL, String decodeCharset) {
    long responseLength = 0; // 响应长度
    String responseContent = null; // 响应内容
    HttpClient httpClient = new DefaultHttpClient(); // 创建默认的httpClient实例
    HttpGet httpGet = new HttpGet(reqURL); // 创建org.apache.http.client.methods.HttpGet
    try {
      HttpResponse response = httpClient.execute(httpGet); // 执行GET请求
      HttpEntity entity = response.getEntity(); // 获取响应实体
      if (null != entity) {
        responseLength = entity.getContentLength();
        responseContent = EntityUtils.toString(entity, decodeCharset == null ? "UTF-8" : decodeCharset);
        EntityUtils.consume(entity); // Consume response content
      }
      System.out.println("请求地址: " + httpGet.getURI());
      System.out.println("响应状态: " + response.getStatusLine());
      System.out.println("响应长度: " + responseLength);
      System.out.println("响应内容: " + responseContent);
    }
    catch (ClientProtocolException e) {
      logger.debug("该异常通常是协议错误导致,比如构造HttpGet对象时传入的协议不对(将'http'写成'htp')或者服务器端返回的内容不符合HTTP协议要求等,堆栈信息如下", e);
    }
    catch (ParseException e) {
      logger.debug(e.getMessage(), e);
    }
    catch (IOException e) {
      logger.debug("该异常通常是网络原因引起的,如HTTP服务器未启动等,堆栈信息如下", e);
    }
    finally {
      httpClient.getConnectionManager().shutdown(); // 关闭连接,释放资源
    }
    return responseContent;
  }

  /**
   * 发送 SSL GET 请求（HTTPS）
   * 
   * @param apiUrl
   * @return
   */
  public static String sendGetSSL(String apiUrl) {
    CloseableHttpClient client = HttpClients.custom().setSSLSocketFactory(createSSLConnSocketFactory()).build();
    HttpGet get = new HttpGet(apiUrl);
    String content = null;
    try {
      CloseableHttpResponse response = client.execute(get);
      HttpEntity entity = response.getEntity();
      content = StreamUtils.copyToString(entity.getContent(), Charset.forName("UTF-8"));
    }
    catch (UnsupportedOperationException e) {
      e.printStackTrace();
    }
    catch (IOException e) {
      e.printStackTrace();
    }
    return content;
  }

  /**
   * 发送HTTP_POST请求
   * 
   * @see 该方法会自动关闭连接,释放资源
   * @see 该方法会自动对<code>params</code>中的[中文][|][
   *      ]等特殊字符进行<code>URLEncoder.encode(string,encodeCharset)</code>
   * @param reqURL 请求地址
   * @param params 请求参数
   * @param encodeCharset 编码字符集,编码请求数据时用之,其为null时默认采用UTF-8解码
   * @param decodeCharset 解码字符集,解析响应数据时用之,其为null时默认采用UTF-8解码
   * @return 远程主机响应正文
   */
  public static String sendPostRequest(String reqURL, Map<String, String> params, String encodeCharset,
      String decodeCharset) {
    String responseContent = null;
    HttpClient httpClient = new DefaultHttpClient();

    HttpPost httpPost = new HttpPost(reqURL);
    List<NameValuePair> formParams = new ArrayList<NameValuePair>(); // 创建参数队列
    for (Map.Entry<String, String> entry : params.entrySet()) {
      formParams.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));
    }
    try {
      httpPost.setEntity(new UrlEncodedFormEntity(formParams, encodeCharset == null ? "UTF-8" : encodeCharset));

      HttpResponse response = httpClient.execute(httpPost);
      HttpEntity entity = response.getEntity();
      if (null != entity) {
        responseContent = EntityUtils.toString(entity, decodeCharset == null ? "UTF-8" : decodeCharset);
        EntityUtils.consume(entity);
      }
    }
    catch (Exception e) {
      logger.debug("与[" + reqURL + "]通信过程中发生异常,堆栈信息如下", e);
    }
    finally {
      httpClient.getConnectionManager().shutdown();
    }
    return responseContent;
  }

  /**
   * 发送 SSL POST 请求（HTTPS），K-V形式
   * 
   * @param apiUrl API接口URL
   * @param params 参数map
   * @return
   * @throws Exception
   */
  public static String sendPostSSL(String apiUrl, Map<String, Object> params) throws Exception {
    CloseableHttpClient httpClient = HttpClients.custom().setSSLSocketFactory(createSSLConnSocketFactory())
        .setConnectionManager(connMgr).setDefaultRequestConfig(requestConfig).build();
    HttpPost httpPost = new HttpPost(apiUrl);
    CloseableHttpResponse response = null;
    String httpStr = null;

    try {
      httpPost.setConfig(requestConfig);
      List<NameValuePair> pairList = new ArrayList<NameValuePair>(params.size());
      for (Map.Entry<String, Object> entry : params.entrySet()) {
        NameValuePair pair = new BasicNameValuePair(entry.getKey(), entry.getValue().toString());
        pairList.add(pair);
      }
      httpPost.setEntity(new UrlEncodedFormEntity(pairList, Charset.forName("utf-8")));
      response = httpClient.execute(httpPost);
      int statusCode = response.getStatusLine().getStatusCode();
      if (statusCode != HttpStatus.SC_OK) {
        return null;
      }
      HttpEntity entity = response.getEntity();
      if (entity == null) {
        return null;
      }
      httpStr = EntityUtils.toString(entity, "utf-8");
    }
    catch (Exception e) {
      throw e;
    }
    finally {
      if (response != null) {
        try {
          EntityUtils.consume(response.getEntity());
        }
        catch (IOException e) {
          e.printStackTrace();
        }
      }
    }
    return httpStr;
  }

  /**
   * 发送 SSL POST 请求（HTTPS），JSON形式
   * 
   * @param apiUrl API接口URL
   * @param json JSON对象
   * @return
   * @throws Exception
   */
  public static String sendPostSSL(String apiUrl, String jsonStr) throws Exception {
    CloseableHttpClient httpClient = HttpClients.custom().setSSLSocketFactory(createSSLConnSocketFactory())
        .setConnectionManager(connMgr).setDefaultRequestConfig(requestConfig).build();
    HttpPost httpPost = new HttpPost(apiUrl);
    CloseableHttpResponse response = null;
    String httpStr = null;

    try {
      httpPost.setConfig(requestConfig);
      StringEntity stringEntity = new StringEntity(jsonStr, "UTF-8");// 解决中文乱码问题
      stringEntity.setContentEncoding("UTF-8");
      stringEntity.setContentType("application/json");
      httpPost.setEntity(stringEntity);
      response = httpClient.execute(httpPost);
      int statusCode = response.getStatusLine().getStatusCode();
      if (statusCode != HttpStatus.SC_OK) {
        return null;
      }
      HttpEntity entity = response.getEntity();
      if (entity == null) {
        return null;
      }
      httpStr = EntityUtils.toString(entity, "utf-8");
    }
    catch (Exception e) {
      throw e;
    }
    finally {
      if (response != null) {
        try {
          EntityUtils.consume(response.getEntity());
        }
        catch (IOException e) {
          e.printStackTrace();
        }
      }
    }
    return httpStr;
  }

  /**
   * 创建SSL安全连接
   *
   * @return
   */
  private static SSLConnectionSocketFactory createSSLConnSocketFactory() {
    SSLConnectionSocketFactory sslsf = null;
    try {
      SSLContext sslContext = new SSLContextBuilder().loadTrustMaterial(null, new TrustStrategy() {

        public boolean isTrusted(X509Certificate[] chain, String authType) throws CertificateException {
          return true;
        }
      }).build();
      sslsf = new SSLConnectionSocketFactory(sslContext, new X509HostnameVerifier() {

        @Override
        public boolean verify(String arg0, SSLSession arg1) {
          return true;
        }

        @Override
        public void verify(String host, SSLSocket ssl) throws IOException {
        }

        @Override
        public void verify(String host, X509Certificate cert) throws SSLException {
        }

        @Override
        public void verify(String host, String[] cns, String[] subjectAlts) throws SSLException {
        }
      });
    }
    catch (GeneralSecurityException e) {
      e.printStackTrace();
    }
    return sslsf;
  }

}
