package com.wx.server.entity;

import java.io.Serializable;
import java.util.Date;

public class TbTopic implements Serializable {
    private Integer id;

    private Integer categoryid;

    private String topicName;

    private String topicText;

    private Date createTime;

    private Date updateTime;

    private Integer userId;

    private Integer lastReplayUserId;

    private Date lastReplayTime;

    private Integer replyCount;

    private Integer clickCount;

    private Integer keepCount;

    private Integer valid;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(Integer categoryid) {
        this.categoryid = categoryid;
    }

    public String getTopicName() {
        return topicName;
    }

    public void setTopicName(String topicName) {
        this.topicName = topicName == null ? null : topicName.trim();
    }

    public String getTopicText() {
        return topicText;
    }

    public void setTopicText(String topicText) {
        this.topicText = topicText == null ? null : topicText.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getLastReplayUserId() {
        return lastReplayUserId;
    }

    public void setLastReplayUserId(Integer lastReplayUserId) {
        this.lastReplayUserId = lastReplayUserId;
    }

    public Date getLastReplayTime() {
        return lastReplayTime;
    }

    public void setLastReplayTime(Date lastReplayTime) {
        this.lastReplayTime = lastReplayTime;
    }

    public Integer getReplyCount() {
        return replyCount;
    }

    public void setReplyCount(Integer replyCount) {
        this.replyCount = replyCount;
    }

    public Integer getClickCount() {
        return clickCount;
    }

    public void setClickCount(Integer clickCount) {
        this.clickCount = clickCount;
    }

    public Integer getKeepCount() {
        return keepCount;
    }

    public void setKeepCount(Integer keepCount) {
        this.keepCount = keepCount;
    }

    public Integer getValid() {
        return valid;
    }

    public void setValid(Integer valid) {
        this.valid = valid;
    }
}