package com.wx.server.entity;

import java.io.Serializable;

public class TbCategory implements Serializable {
    private Integer id;

    private Integer pid;

    private String ctgName;

    private String ctgImg;

    private Integer status;

    private Integer sort;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
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