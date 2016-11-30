package com.wx.server.entity;

import java.io.Serializable;

public class TbOrderWithBLOBs extends TbOrder implements Serializable {
    private String goodsName;

    private String goodsImg;

    private static final long serialVersionUID = 1L;

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName == null ? null : goodsName.trim();
    }

    public String getGoodsImg() {
        return goodsImg;
    }

    public void setGoodsImg(String goodsImg) {
        this.goodsImg = goodsImg == null ? null : goodsImg.trim();
    }
}