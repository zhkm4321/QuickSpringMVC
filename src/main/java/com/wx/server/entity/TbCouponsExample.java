package com.wx.server.entity;

import com.wx.server.vo.page.Page;
import java.util.ArrayList;
import java.util.List;

public class TbCouponsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    protected Page page;

    public TbCouponsExample() {
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

        public Criteria andCpsNameIsNull() {
            addCriterion("cps_name is null");
            return (Criteria) this;
        }

        public Criteria andCpsNameIsNotNull() {
            addCriterion("cps_name is not null");
            return (Criteria) this;
        }

        public Criteria andCpsNameEqualTo(String value) {
            addCriterion("cps_name =", value, "cpsName");
            return (Criteria) this;
        }

        public Criteria andCpsNameNotEqualTo(String value) {
            addCriterion("cps_name <>", value, "cpsName");
            return (Criteria) this;
        }

        public Criteria andCpsNameGreaterThan(String value) {
            addCriterion("cps_name >", value, "cpsName");
            return (Criteria) this;
        }

        public Criteria andCpsNameGreaterThanOrEqualTo(String value) {
            addCriterion("cps_name >=", value, "cpsName");
            return (Criteria) this;
        }

        public Criteria andCpsNameLessThan(String value) {
            addCriterion("cps_name <", value, "cpsName");
            return (Criteria) this;
        }

        public Criteria andCpsNameLessThanOrEqualTo(String value) {
            addCriterion("cps_name <=", value, "cpsName");
            return (Criteria) this;
        }

        public Criteria andCpsNameLike(String value) {
            addCriterion("cps_name like", value, "cpsName");
            return (Criteria) this;
        }

        public Criteria andCpsNameNotLike(String value) {
            addCriterion("cps_name not like", value, "cpsName");
            return (Criteria) this;
        }

        public Criteria andCpsNameIn(List<String> values) {
            addCriterion("cps_name in", values, "cpsName");
            return (Criteria) this;
        }

        public Criteria andCpsNameNotIn(List<String> values) {
            addCriterion("cps_name not in", values, "cpsName");
            return (Criteria) this;
        }

        public Criteria andCpsNameBetween(String value1, String value2) {
            addCriterion("cps_name between", value1, value2, "cpsName");
            return (Criteria) this;
        }

        public Criteria andCpsNameNotBetween(String value1, String value2) {
            addCriterion("cps_name not between", value1, value2, "cpsName");
            return (Criteria) this;
        }

        public Criteria andCpsCodeIsNull() {
            addCriterion("cps_code is null");
            return (Criteria) this;
        }

        public Criteria andCpsCodeIsNotNull() {
            addCriterion("cps_code is not null");
            return (Criteria) this;
        }

        public Criteria andCpsCodeEqualTo(String value) {
            addCriterion("cps_code =", value, "cpsCode");
            return (Criteria) this;
        }

        public Criteria andCpsCodeNotEqualTo(String value) {
            addCriterion("cps_code <>", value, "cpsCode");
            return (Criteria) this;
        }

        public Criteria andCpsCodeGreaterThan(String value) {
            addCriterion("cps_code >", value, "cpsCode");
            return (Criteria) this;
        }

        public Criteria andCpsCodeGreaterThanOrEqualTo(String value) {
            addCriterion("cps_code >=", value, "cpsCode");
            return (Criteria) this;
        }

        public Criteria andCpsCodeLessThan(String value) {
            addCriterion("cps_code <", value, "cpsCode");
            return (Criteria) this;
        }

        public Criteria andCpsCodeLessThanOrEqualTo(String value) {
            addCriterion("cps_code <=", value, "cpsCode");
            return (Criteria) this;
        }

        public Criteria andCpsCodeLike(String value) {
            addCriterion("cps_code like", value, "cpsCode");
            return (Criteria) this;
        }

        public Criteria andCpsCodeNotLike(String value) {
            addCriterion("cps_code not like", value, "cpsCode");
            return (Criteria) this;
        }

        public Criteria andCpsCodeIn(List<String> values) {
            addCriterion("cps_code in", values, "cpsCode");
            return (Criteria) this;
        }

        public Criteria andCpsCodeNotIn(List<String> values) {
            addCriterion("cps_code not in", values, "cpsCode");
            return (Criteria) this;
        }

        public Criteria andCpsCodeBetween(String value1, String value2) {
            addCriterion("cps_code between", value1, value2, "cpsCode");
            return (Criteria) this;
        }

        public Criteria andCpsCodeNotBetween(String value1, String value2) {
            addCriterion("cps_code not between", value1, value2, "cpsCode");
            return (Criteria) this;
        }

        public Criteria andCpsPriceIsNull() {
            addCriterion("cps_price is null");
            return (Criteria) this;
        }

        public Criteria andCpsPriceIsNotNull() {
            addCriterion("cps_price is not null");
            return (Criteria) this;
        }

        public Criteria andCpsPriceEqualTo(Float value) {
            addCriterion("cps_price =", value, "cpsPrice");
            return (Criteria) this;
        }

        public Criteria andCpsPriceNotEqualTo(Float value) {
            addCriterion("cps_price <>", value, "cpsPrice");
            return (Criteria) this;
        }

        public Criteria andCpsPriceGreaterThan(Float value) {
            addCriterion("cps_price >", value, "cpsPrice");
            return (Criteria) this;
        }

        public Criteria andCpsPriceGreaterThanOrEqualTo(Float value) {
            addCriterion("cps_price >=", value, "cpsPrice");
            return (Criteria) this;
        }

        public Criteria andCpsPriceLessThan(Float value) {
            addCriterion("cps_price <", value, "cpsPrice");
            return (Criteria) this;
        }

        public Criteria andCpsPriceLessThanOrEqualTo(Float value) {
            addCriterion("cps_price <=", value, "cpsPrice");
            return (Criteria) this;
        }

        public Criteria andCpsPriceIn(List<Float> values) {
            addCriterion("cps_price in", values, "cpsPrice");
            return (Criteria) this;
        }

        public Criteria andCpsPriceNotIn(List<Float> values) {
            addCriterion("cps_price not in", values, "cpsPrice");
            return (Criteria) this;
        }

        public Criteria andCpsPriceBetween(Float value1, Float value2) {
            addCriterion("cps_price between", value1, value2, "cpsPrice");
            return (Criteria) this;
        }

        public Criteria andCpsPriceNotBetween(Float value1, Float value2) {
            addCriterion("cps_price not between", value1, value2, "cpsPrice");
            return (Criteria) this;
        }

        public Criteria andCpsTimeIsNull() {
            addCriterion("cps_time is null");
            return (Criteria) this;
        }

        public Criteria andCpsTimeIsNotNull() {
            addCriterion("cps_time is not null");
            return (Criteria) this;
        }

        public Criteria andCpsTimeEqualTo(String value) {
            addCriterion("cps_time =", value, "cpsTime");
            return (Criteria) this;
        }

        public Criteria andCpsTimeNotEqualTo(String value) {
            addCriterion("cps_time <>", value, "cpsTime");
            return (Criteria) this;
        }

        public Criteria andCpsTimeGreaterThan(String value) {
            addCriterion("cps_time >", value, "cpsTime");
            return (Criteria) this;
        }

        public Criteria andCpsTimeGreaterThanOrEqualTo(String value) {
            addCriterion("cps_time >=", value, "cpsTime");
            return (Criteria) this;
        }

        public Criteria andCpsTimeLessThan(String value) {
            addCriterion("cps_time <", value, "cpsTime");
            return (Criteria) this;
        }

        public Criteria andCpsTimeLessThanOrEqualTo(String value) {
            addCriterion("cps_time <=", value, "cpsTime");
            return (Criteria) this;
        }

        public Criteria andCpsTimeLike(String value) {
            addCriterion("cps_time like", value, "cpsTime");
            return (Criteria) this;
        }

        public Criteria andCpsTimeNotLike(String value) {
            addCriterion("cps_time not like", value, "cpsTime");
            return (Criteria) this;
        }

        public Criteria andCpsTimeIn(List<String> values) {
            addCriterion("cps_time in", values, "cpsTime");
            return (Criteria) this;
        }

        public Criteria andCpsTimeNotIn(List<String> values) {
            addCriterion("cps_time not in", values, "cpsTime");
            return (Criteria) this;
        }

        public Criteria andCpsTimeBetween(String value1, String value2) {
            addCriterion("cps_time between", value1, value2, "cpsTime");
            return (Criteria) this;
        }

        public Criteria andCpsTimeNotBetween(String value1, String value2) {
            addCriterion("cps_time not between", value1, value2, "cpsTime");
            return (Criteria) this;
        }

        public Criteria andCpsLevelIsNull() {
            addCriterion("cps_level is null");
            return (Criteria) this;
        }

        public Criteria andCpsLevelIsNotNull() {
            addCriterion("cps_level is not null");
            return (Criteria) this;
        }

        public Criteria andCpsLevelEqualTo(Integer value) {
            addCriterion("cps_level =", value, "cpsLevel");
            return (Criteria) this;
        }

        public Criteria andCpsLevelNotEqualTo(Integer value) {
            addCriterion("cps_level <>", value, "cpsLevel");
            return (Criteria) this;
        }

        public Criteria andCpsLevelGreaterThan(Integer value) {
            addCriterion("cps_level >", value, "cpsLevel");
            return (Criteria) this;
        }

        public Criteria andCpsLevelGreaterThanOrEqualTo(Integer value) {
            addCriterion("cps_level >=", value, "cpsLevel");
            return (Criteria) this;
        }

        public Criteria andCpsLevelLessThan(Integer value) {
            addCriterion("cps_level <", value, "cpsLevel");
            return (Criteria) this;
        }

        public Criteria andCpsLevelLessThanOrEqualTo(Integer value) {
            addCriterion("cps_level <=", value, "cpsLevel");
            return (Criteria) this;
        }

        public Criteria andCpsLevelIn(List<Integer> values) {
            addCriterion("cps_level in", values, "cpsLevel");
            return (Criteria) this;
        }

        public Criteria andCpsLevelNotIn(List<Integer> values) {
            addCriterion("cps_level not in", values, "cpsLevel");
            return (Criteria) this;
        }

        public Criteria andCpsLevelBetween(Integer value1, Integer value2) {
            addCriterion("cps_level between", value1, value2, "cpsLevel");
            return (Criteria) this;
        }

        public Criteria andCpsLevelNotBetween(Integer value1, Integer value2) {
            addCriterion("cps_level not between", value1, value2, "cpsLevel");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(String value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(String value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(String value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(String value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(String value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(String value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLike(String value) {
            addCriterion("user_id like", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotLike(String value) {
            addCriterion("user_id not like", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<String> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<String> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(String value1, String value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(String value1, String value2) {
            addCriterion("user_id not between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("status is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("status is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(Integer value) {
            addCriterion("status =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(Integer value) {
            addCriterion("status <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(Integer value) {
            addCriterion("status >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("status >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(Integer value) {
            addCriterion("status <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(Integer value) {
            addCriterion("status <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<Integer> values) {
            addCriterion("status in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<Integer> values) {
            addCriterion("status not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(Integer value1, Integer value2) {
            addCriterion("status between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("status not between", value1, value2, "status");
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