package com.wx.server.entity;

import com.wx.server.vo.page.Page;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class TbServiceExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    protected Page page;

    public TbServiceExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    public void setPage(Page page) {
        this.page=page;
    }

    public Page getPage() {
        return page;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andCaretoryIdIsNull() {
            addCriterion("caretory_id is null");
            return (Criteria) this;
        }

        public Criteria andCaretoryIdIsNotNull() {
            addCriterion("caretory_id is not null");
            return (Criteria) this;
        }

        public Criteria andCaretoryIdEqualTo(Integer value) {
            addCriterion("caretory_id =", value, "caretoryId");
            return (Criteria) this;
        }

        public Criteria andCaretoryIdNotEqualTo(Integer value) {
            addCriterion("caretory_id <>", value, "caretoryId");
            return (Criteria) this;
        }

        public Criteria andCaretoryIdGreaterThan(Integer value) {
            addCriterion("caretory_id >", value, "caretoryId");
            return (Criteria) this;
        }

        public Criteria andCaretoryIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("caretory_id >=", value, "caretoryId");
            return (Criteria) this;
        }

        public Criteria andCaretoryIdLessThan(Integer value) {
            addCriterion("caretory_id <", value, "caretoryId");
            return (Criteria) this;
        }

        public Criteria andCaretoryIdLessThanOrEqualTo(Integer value) {
            addCriterion("caretory_id <=", value, "caretoryId");
            return (Criteria) this;
        }

        public Criteria andCaretoryIdIn(List<Integer> values) {
            addCriterion("caretory_id in", values, "caretoryId");
            return (Criteria) this;
        }

        public Criteria andCaretoryIdNotIn(List<Integer> values) {
            addCriterion("caretory_id not in", values, "caretoryId");
            return (Criteria) this;
        }

        public Criteria andCaretoryIdBetween(Integer value1, Integer value2) {
            addCriterion("caretory_id between", value1, value2, "caretoryId");
            return (Criteria) this;
        }

        public Criteria andCaretoryIdNotBetween(Integer value1, Integer value2) {
            addCriterion("caretory_id not between", value1, value2, "caretoryId");
            return (Criteria) this;
        }

        public Criteria andServiceNameIsNull() {
            addCriterion("service_name is null");
            return (Criteria) this;
        }

        public Criteria andServiceNameIsNotNull() {
            addCriterion("service_name is not null");
            return (Criteria) this;
        }

        public Criteria andServiceNameEqualTo(String value) {
            addCriterion("service_name =", value, "serviceName");
            return (Criteria) this;
        }

        public Criteria andServiceNameNotEqualTo(String value) {
            addCriterion("service_name <>", value, "serviceName");
            return (Criteria) this;
        }

        public Criteria andServiceNameGreaterThan(String value) {
            addCriterion("service_name >", value, "serviceName");
            return (Criteria) this;
        }

        public Criteria andServiceNameGreaterThanOrEqualTo(String value) {
            addCriterion("service_name >=", value, "serviceName");
            return (Criteria) this;
        }

        public Criteria andServiceNameLessThan(String value) {
            addCriterion("service_name <", value, "serviceName");
            return (Criteria) this;
        }

        public Criteria andServiceNameLessThanOrEqualTo(String value) {
            addCriterion("service_name <=", value, "serviceName");
            return (Criteria) this;
        }

        public Criteria andServiceNameLike(String value) {
            addCriterion("service_name like", value, "serviceName");
            return (Criteria) this;
        }

        public Criteria andServiceNameNotLike(String value) {
            addCriterion("service_name not like", value, "serviceName");
            return (Criteria) this;
        }

        public Criteria andServiceNameIn(List<String> values) {
            addCriterion("service_name in", values, "serviceName");
            return (Criteria) this;
        }

        public Criteria andServiceNameNotIn(List<String> values) {
            addCriterion("service_name not in", values, "serviceName");
            return (Criteria) this;
        }

        public Criteria andServiceNameBetween(String value1, String value2) {
            addCriterion("service_name between", value1, value2, "serviceName");
            return (Criteria) this;
        }

        public Criteria andServiceNameNotBetween(String value1, String value2) {
            addCriterion("service_name not between", value1, value2, "serviceName");
            return (Criteria) this;
        }

        public Criteria andServiceDescIsNull() {
            addCriterion("service_desc is null");
            return (Criteria) this;
        }

        public Criteria andServiceDescIsNotNull() {
            addCriterion("service_desc is not null");
            return (Criteria) this;
        }

        public Criteria andServiceDescEqualTo(String value) {
            addCriterion("service_desc =", value, "serviceDesc");
            return (Criteria) this;
        }

        public Criteria andServiceDescNotEqualTo(String value) {
            addCriterion("service_desc <>", value, "serviceDesc");
            return (Criteria) this;
        }

        public Criteria andServiceDescGreaterThan(String value) {
            addCriterion("service_desc >", value, "serviceDesc");
            return (Criteria) this;
        }

        public Criteria andServiceDescGreaterThanOrEqualTo(String value) {
            addCriterion("service_desc >=", value, "serviceDesc");
            return (Criteria) this;
        }

        public Criteria andServiceDescLessThan(String value) {
            addCriterion("service_desc <", value, "serviceDesc");
            return (Criteria) this;
        }

        public Criteria andServiceDescLessThanOrEqualTo(String value) {
            addCriterion("service_desc <=", value, "serviceDesc");
            return (Criteria) this;
        }

        public Criteria andServiceDescLike(String value) {
            addCriterion("service_desc like", value, "serviceDesc");
            return (Criteria) this;
        }

        public Criteria andServiceDescNotLike(String value) {
            addCriterion("service_desc not like", value, "serviceDesc");
            return (Criteria) this;
        }

        public Criteria andServiceDescIn(List<String> values) {
            addCriterion("service_desc in", values, "serviceDesc");
            return (Criteria) this;
        }

        public Criteria andServiceDescNotIn(List<String> values) {
            addCriterion("service_desc not in", values, "serviceDesc");
            return (Criteria) this;
        }

        public Criteria andServiceDescBetween(String value1, String value2) {
            addCriterion("service_desc between", value1, value2, "serviceDesc");
            return (Criteria) this;
        }

        public Criteria andServiceDescNotBetween(String value1, String value2) {
            addCriterion("service_desc not between", value1, value2, "serviceDesc");
            return (Criteria) this;
        }

        public Criteria andPriceIsNull() {
            addCriterion("price is null");
            return (Criteria) this;
        }

        public Criteria andPriceIsNotNull() {
            addCriterion("price is not null");
            return (Criteria) this;
        }

        public Criteria andPriceEqualTo(BigDecimal value) {
            addCriterion("price =", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotEqualTo(BigDecimal value) {
            addCriterion("price <>", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThan(BigDecimal value) {
            addCriterion("price >", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("price >=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThan(BigDecimal value) {
            addCriterion("price <", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThanOrEqualTo(BigDecimal value) {
            addCriterion("price <=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceIn(List<BigDecimal> values) {
            addCriterion("price in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotIn(List<BigDecimal> values) {
            addCriterion("price not in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("price between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("price not between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andCommisionIsNull() {
            addCriterion("commision is null");
            return (Criteria) this;
        }

        public Criteria andCommisionIsNotNull() {
            addCriterion("commision is not null");
            return (Criteria) this;
        }

        public Criteria andCommisionEqualTo(BigDecimal value) {
            addCriterion("commision =", value, "commision");
            return (Criteria) this;
        }

        public Criteria andCommisionNotEqualTo(BigDecimal value) {
            addCriterion("commision <>", value, "commision");
            return (Criteria) this;
        }

        public Criteria andCommisionGreaterThan(BigDecimal value) {
            addCriterion("commision >", value, "commision");
            return (Criteria) this;
        }

        public Criteria andCommisionGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("commision >=", value, "commision");
            return (Criteria) this;
        }

        public Criteria andCommisionLessThan(BigDecimal value) {
            addCriterion("commision <", value, "commision");
            return (Criteria) this;
        }

        public Criteria andCommisionLessThanOrEqualTo(BigDecimal value) {
            addCriterion("commision <=", value, "commision");
            return (Criteria) this;
        }

        public Criteria andCommisionIn(List<BigDecimal> values) {
            addCriterion("commision in", values, "commision");
            return (Criteria) this;
        }

        public Criteria andCommisionNotIn(List<BigDecimal> values) {
            addCriterion("commision not in", values, "commision");
            return (Criteria) this;
        }

        public Criteria andCommisionBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("commision between", value1, value2, "commision");
            return (Criteria) this;
        }

        public Criteria andCommisionNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("commision not between", value1, value2, "commision");
            return (Criteria) this;
        }

        public Criteria andBenefitPriceIsNull() {
            addCriterion("benefit_price is null");
            return (Criteria) this;
        }

        public Criteria andBenefitPriceIsNotNull() {
            addCriterion("benefit_price is not null");
            return (Criteria) this;
        }

        public Criteria andBenefitPriceEqualTo(BigDecimal value) {
            addCriterion("benefit_price =", value, "benefitPrice");
            return (Criteria) this;
        }

        public Criteria andBenefitPriceNotEqualTo(BigDecimal value) {
            addCriterion("benefit_price <>", value, "benefitPrice");
            return (Criteria) this;
        }

        public Criteria andBenefitPriceGreaterThan(BigDecimal value) {
            addCriterion("benefit_price >", value, "benefitPrice");
            return (Criteria) this;
        }

        public Criteria andBenefitPriceGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("benefit_price >=", value, "benefitPrice");
            return (Criteria) this;
        }

        public Criteria andBenefitPriceLessThan(BigDecimal value) {
            addCriterion("benefit_price <", value, "benefitPrice");
            return (Criteria) this;
        }

        public Criteria andBenefitPriceLessThanOrEqualTo(BigDecimal value) {
            addCriterion("benefit_price <=", value, "benefitPrice");
            return (Criteria) this;
        }

        public Criteria andBenefitPriceIn(List<BigDecimal> values) {
            addCriterion("benefit_price in", values, "benefitPrice");
            return (Criteria) this;
        }

        public Criteria andBenefitPriceNotIn(List<BigDecimal> values) {
            addCriterion("benefit_price not in", values, "benefitPrice");
            return (Criteria) this;
        }

        public Criteria andBenefitPriceBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("benefit_price between", value1, value2, "benefitPrice");
            return (Criteria) this;
        }

        public Criteria andBenefitPriceNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("benefit_price not between", value1, value2, "benefitPrice");
            return (Criteria) this;
        }

        public Criteria andOrderIsNull() {
            addCriterion("order is null");
            return (Criteria) this;
        }

        public Criteria andOrderIsNotNull() {
            addCriterion("order is not null");
            return (Criteria) this;
        }

        public Criteria andOrderEqualTo(Integer value) {
            addCriterion("order =", value, "order");
            return (Criteria) this;
        }

        public Criteria andOrderNotEqualTo(Integer value) {
            addCriterion("order <>", value, "order");
            return (Criteria) this;
        }

        public Criteria andOrderGreaterThan(Integer value) {
            addCriterion("order >", value, "order");
            return (Criteria) this;
        }

        public Criteria andOrderGreaterThanOrEqualTo(Integer value) {
            addCriterion("order >=", value, "order");
            return (Criteria) this;
        }

        public Criteria andOrderLessThan(Integer value) {
            addCriterion("order <", value, "order");
            return (Criteria) this;
        }

        public Criteria andOrderLessThanOrEqualTo(Integer value) {
            addCriterion("order <=", value, "order");
            return (Criteria) this;
        }

        public Criteria andOrderIn(List<Integer> values) {
            addCriterion("order in", values, "order");
            return (Criteria) this;
        }

        public Criteria andOrderNotIn(List<Integer> values) {
            addCriterion("order not in", values, "order");
            return (Criteria) this;
        }

        public Criteria andOrderBetween(Integer value1, Integer value2) {
            addCriterion("order between", value1, value2, "order");
            return (Criteria) this;
        }

        public Criteria andOrderNotBetween(Integer value1, Integer value2) {
            addCriterion("order not between", value1, value2, "order");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}