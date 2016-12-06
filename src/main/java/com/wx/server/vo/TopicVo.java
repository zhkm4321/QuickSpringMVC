package com.wx.server.vo;

import com.wx.server.entity.TbCategory;
import com.wx.server.entity.TbTopic;
import com.wx.server.entity.TbUser;

public class TopicVo extends TbTopic {
  /**
   * 
   */
  private static final long serialVersionUID = -3765974001677355013L;

  private TbUser user;

  private TbCategory category;

  private TbUser lastReply;

  public TbUser getUser() {
    return user;
  }

  public void setUser(TbUser user) {
    this.user = user;
  }

  public TbCategory getCategory() {
    return category;
  }

  public void setCategory(TbCategory category) {
    this.category = category;
  }

  public TbUser getLastReply() {
    return lastReply;
  }

  public void setLastReply(TbUser lastReply) {
    this.lastReply = lastReply;
  }

}
