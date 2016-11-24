package com.wx.server.entity;

public class TbCoupons {
    private Integer cpsId;

    private String cpsName;

    private String cpsCode;

    private Float cpsPrice;

    private String cpsTime;

    private Integer cpsLevel;

    private String userId;

    private Integer status;

    public Integer getCpsId() {
        return cpsId;
    }

    public void setCpsId(Integer cpsId) {
        this.cpsId = cpsId;
    }

    public String getCpsName() {
        return cpsName;
    }

    public void setCpsName(String cpsName) {
        this.cpsName = cpsName == null ? null : cpsName.trim();
    }

    public String getCpsCode() {
        return cpsCode;
    }

    public void setCpsCode(String cpsCode) {
        this.cpsCode = cpsCode == null ? null : cpsCode.trim();
    }

    public Float getCpsPrice() {
        return cpsPrice;
    }

    public void setCpsPrice(Float cpsPrice) {
        this.cpsPrice = cpsPrice;
    }

    public String getCpsTime() {
        return cpsTime;
    }

    public void setCpsTime(String cpsTime) {
        this.cpsTime = cpsTime == null ? null : cpsTime.trim();
    }

    public Integer getCpsLevel() {
        return cpsLevel;
    }

    public void setCpsLevel(Integer cpsLevel) {
        this.cpsLevel = cpsLevel;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}