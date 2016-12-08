package com.wx.server.entity;

import java.io.Serializable;
import java.math.BigDecimal;

public class TbService implements Serializable {
    private Integer id;

    private Integer caretoryId;

    private String serviceName;

    private String serviceDesc;

    private BigDecimal price;

    private BigDecimal commision;

    private BigDecimal benefitPrice;

    private Integer order;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCaretoryId() {
        return caretoryId;
    }

    public void setCaretoryId(Integer caretoryId) {
        this.caretoryId = caretoryId;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName == null ? null : serviceName.trim();
    }

    public String getServiceDesc() {
        return serviceDesc;
    }

    public void setServiceDesc(String serviceDesc) {
        this.serviceDesc = serviceDesc == null ? null : serviceDesc.trim();
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getCommision() {
        return commision;
    }

    public void setCommision(BigDecimal commision) {
        this.commision = commision;
    }

    public BigDecimal getBenefitPrice() {
        return benefitPrice;
    }

    public void setBenefitPrice(BigDecimal benefitPrice) {
        this.benefitPrice = benefitPrice;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }
}