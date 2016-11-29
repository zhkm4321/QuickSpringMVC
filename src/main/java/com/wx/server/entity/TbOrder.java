package com.wx.server.entity;

public class TbOrder {
    private Integer orderId;

    private String goodsId;

    private String goodsSpe;

    private String goodsPrice;

    private String goodsNum;

    private Float goodsTotal;

    private Integer goodsTotalNum;

    private String addrName;

    private String receive;

    private Integer cpsId;

    private String cpsName;

    private Float cpsPrice;

    private Integer status;

    private String note;

    private String addTime;

    private String userId;

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId == null ? null : goodsId.trim();
    }

    public String getGoodsSpe() {
        return goodsSpe;
    }

    public void setGoodsSpe(String goodsSpe) {
        this.goodsSpe = goodsSpe == null ? null : goodsSpe.trim();
    }

    public String getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(String goodsPrice) {
        this.goodsPrice = goodsPrice == null ? null : goodsPrice.trim();
    }

    public String getGoodsNum() {
        return goodsNum;
    }

    public void setGoodsNum(String goodsNum) {
        this.goodsNum = goodsNum == null ? null : goodsNum.trim();
    }

    public Float getGoodsTotal() {
        return goodsTotal;
    }

    public void setGoodsTotal(Float goodsTotal) {
        this.goodsTotal = goodsTotal;
    }

    public Integer getGoodsTotalNum() {
        return goodsTotalNum;
    }

    public void setGoodsTotalNum(Integer goodsTotalNum) {
        this.goodsTotalNum = goodsTotalNum;
    }

    public String getAddrName() {
        return addrName;
    }

    public void setAddrName(String addrName) {
        this.addrName = addrName == null ? null : addrName.trim();
    }

    public String getReceive() {
        return receive;
    }

    public void setReceive(String receive) {
        this.receive = receive == null ? null : receive.trim();
    }

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

    public Float getCpsPrice() {
        return cpsPrice;
    }

    public void setCpsPrice(Float cpsPrice) {
        this.cpsPrice = cpsPrice;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }

    public String getAddTime() {
        return addTime;
    }

    public void setAddTime(String addTime) {
        this.addTime = addTime == null ? null : addTime.trim();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }
}