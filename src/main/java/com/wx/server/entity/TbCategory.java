package com.wx.server.entity;

public class TbCategory {
    private Integer ctgId;

    private String ctgName;

    private String ctgImg;

    private Integer status;

    private Integer sort;

    public Integer getCtgId() {
        return ctgId;
    }

    public void setCtgId(Integer ctgId) {
        this.ctgId = ctgId;
    }

    public String getCtgName() {
        return ctgName;
    }

    public void setCtgName(String ctgName) {
        this.ctgName = ctgName == null ? null : ctgName.trim();
    }

    public String getCtgImg() {
        return ctgImg;
    }

    public void setCtgImg(String ctgImg) {
        this.ctgImg = ctgImg == null ? null : ctgImg.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }
}