package com.wx.server.entity;

import java.io.Serializable;

public class TbFreight implements Serializable {
    private Integer id;

    private Float fgtPrice;

    private Float freePrice;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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