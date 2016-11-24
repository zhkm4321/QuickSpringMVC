package com.wx.server.entity;

public class TbFreight {
    private Integer fgtId;

    private Float fgtPrice;

    private Float freePrice;

    public Integer getFgtId() {
        return fgtId;
    }

    public void setFgtId(Integer fgtId) {
        this.fgtId = fgtId;
    }

    public Float getFgtPrice() {
        return fgtPrice;
    }

    public void setFgtPrice(Float fgtPrice) {
        this.fgtPrice = fgtPrice;
    }

    public Float getFreePrice() {
        return freePrice;
    }

    public void setFreePrice(Float freePrice) {
        this.freePrice = freePrice;
    }
}