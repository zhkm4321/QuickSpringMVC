package com.wx.server.shiro.token;

import org.apache.shiro.authc.HostAuthenticationToken;

@SuppressWarnings("serial")
public class UserIdToken implements HostAuthenticationToken {

  private Integer userId;

  private String host;

  public UserIdToken() {
  }

  public UserIdToken(Integer userId, String host) {
    super();
    this.userId = userId;
    this.host = host;
  }

  @Override
  public Object getPrincipal() {
    return userId;
  }

  @Override
  public Object getCredentials() {
    return userId;
  }

  @Override
  public String getHost() {
    return null;
  }

  public Integer getUserId() {
    return userId;
  }

  public void setUserId(Integer userId) {
    this.userId = userId;
  }

  public void setHost(String host) {
    this.host = host;
  }

  /**
   * Clears out (nulls) the username, password, rememberMe, and inetAddress. The
   * password bytes are explicitly set to <tt>0x00</tt> before nulling to
   * eliminate the possibility of memory access at a later time.
   */
  public void clear() {
    this.userId = null;
    this.host = null;
  }

  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append(getClass().getName());
    sb.append(" - ");
    sb.append(userId);
    if (host != null) {
      sb.append(" (").append(host).append(")");
    }
    return sb.toString();
  }

}
