package com.wx.server.entity;

public class TbCart {
    private Integer cartId;

    private Integer goodsId;

    private String goodsName;

    private String goodsImg;

    private String goodsSpe;

    private Float goodsPrice;

    private Integer goodsNum;

    private Float goodsTotal;

    private String userId;

    public Integer getCartId() {
        return cartId;
    }

    public void setCartId(Integer cartId) {
        this.cartId = cartId;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

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

    public String getGoodsSpe() {
        return goodsSpe;
    }

    public void setGoodsSpe(String goodsSpe) {
        this.goodsSpe = goodsSpe == null ? null : goodsSpe.trim();
    }

    public Float getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(Float goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public Integer getGoodsNum() {
        return goodsNum;
    }

    public void setGoodsNum(Integer goodsNum) {
        this.goodsNum = goodsNum;
    }

    public Float getGoodsTotal() {
        return goodsTotal;
    }

    public void setGoodsTotal(Float goodsTotal) {
        this.goodsTotal = goodsTotal;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }
}