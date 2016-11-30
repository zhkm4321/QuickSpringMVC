package com.wx.server.entity;

import java.io.Serializable;

public class TbBanner implements Serializable {
    private Integer id;

    private String banImg;

    private String url;

    private Integer sort;

    private Integer type;

    private Integer status;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBanImg() {
        return banImg;
    }

    public void setBanImg(String banImg) {
        this.banImg = banImg == null ? null : banImg.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}