package com.wx.server.entity;

import com.wx.server.vo.page.Page;
import java.util.ArrayList;
import java.util.List;

public class TbAddressExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    protected Page page;

    public TbAddressExample() {
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

        public Criteria andAddrIdIsNull() {
            addCriterion("addr_id is null");
            return (Criteria) this;
        }

        public Criteria andAddrIdIsNotNull() {
            addCriterion("addr_id is not null");
            return (Criteria) this;
        }

        public Criteria andAddrIdEqualTo(Integer value) {
            addCriterion("addr_id =", value, "addrId");
            return (Criteria) this;
        }

        public Criteria andAddrIdNotEqualTo(Integer value) {
            addCriterion("addr_id <>", value, "addrId");
            return (Criteria) this;
        }

        public Criteria andAddrIdGreaterThan(Integer value) {
            addCriterion("addr_id >", value, "addrId");
            return (Criteria) this;
        }

        public Criteria andAddrIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("addr_id >=", value, "addrId");
            return (Criteria) this;
        }

        public Criteria andAddrIdLessThan(Integer value) {
            addCriterion("addr_id <", value, "addrId");
            return (Criteria) this;
        }

        public Criteria andAddrIdLessThanOrEqualTo(Integer value) {
            addCriterion("addr_id <=", value, "addrId");
            return (Criteria) this;
        }

        public Criteria andAddrIdIn(List<Integer> values) {
            addCriterion("addr_id in", values, "addrId");
            return (Criteria) this;
        }

        public Criteria andAddrIdNotIn(List<Integer> values) {
            addCriterion("addr_id not in", values, "addrId");
            return (Criteria) this;
        }

        public Criteria andAddrIdBetween(Integer value1, Integer value2) {
            addCriterion("addr_id between", value1, value2, "addrId");
            return (Criteria) this;
        }

        public Criteria andAddrIdNotBetween(Integer value1, Integer value2) {
            addCriterion("addr_id not between", value1, value2, "addrId");
            return (Criteria) this;
        }

        public Criteria andAddrUserIsNull() {
            addCriterion("addr_user is null");
            return (Criteria) this;
        }

        public Criteria andAddrUserIsNotNull() {
            addCriterion("addr_user is not null");
            return (Criteria) this;
        }

        public Criteria andAddrUserEqualTo(String value) {
            addCriterion("addr_user =", value, "addrUser");
            return (Criteria) this;
        }

        public Criteria andAddrUserNotEqualTo(String value) {
            addCriterion("addr_user <>", value, "addrUser");
            return (Criteria) this;
        }

        public Criteria andAddrUserGreaterThan(String value) {
            addCriterion("addr_user >", value, "addrUser");
            return (Criteria) this;
        }

        public Criteria andAddrUserGreaterThanOrEqualTo(String value) {
            addCriterion("addr_user >=", value, "addrUser");
            return (Criteria) this;
        }

        public Criteria andAddrUserLessThan(String value) {
            addCriterion("addr_user <", value, "addrUser");
            return (Criteria) this;
        }

        public Criteria andAddrUserLessThanOrEqualTo(String value) {
            addCriterion("addr_user <=", value, "addrUser");
            return (Criteria) this;
        }

        public Criteria andAddrUserLike(String value) {
            addCriterion("addr_user like", value, "addrUser");
            return (Criteria) this;
        }

        public Criteria andAddrUserNotLike(String value) {
            addCriterion("addr_user not like", value, "addrUser");
            return (Criteria) this;
        }

        public Criteria andAddrUserIn(List<String> values) {
            addCriterion("addr_user in", values, "addrUser");
            return (Criteria) this;
        }

        public Criteria andAddrUserNotIn(List<String> values) {
            addCriterion("addr_user not in", values, "addrUser");
            return (Criteria) this;
        }

        public Criteria andAddrUserBetween(String value1, String value2) {
            addCriterion("addr_user between", value1, value2, "addrUser");
            return (Criteria) this;
        }

        public Criteria andAddrUserNotBetween(String value1, String value2) {
            addCriterion("addr_user not between", value1, value2, "addrUser");
            return (Criteria) this;
        }

        public Criteria andAddrNameIsNull() {
            addCriterion("addr_name is null");
            return (Criteria) this;
        }

        public Criteria andAddrNameIsNotNull() {
            addCriterion("addr_name is not null");
            return (Criteria) this;
        }

        public Criteria andAddrNameEqualTo(String value) {
            addCriterion("addr_name =", value, "addrName");
            return (Criteria) this;
        }

        public Criteria andAddrNameNotEqualTo(String value) {
            addCriterion("addr_name <>", value, "addrName");
            return (Criteria) this;
        }

        public Criteria andAddrNameGreaterThan(String value) {
            addCriterion("addr_name >", value, "addrName");
            return (Criteria) this;
        }

        public Criteria andAddrNameGreaterThanOrEqualTo(String value) {
            addCriterion("addr_name >=", value, "addrName");
            return (Criteria) this;
        }

        public Criteria andAddrNameLessThan(String value) {
            addCriterion("addr_name <", value, "addrName");
            return (Criteria) this;
        }

        public Criteria andAddrNameLessThanOrEqualTo(String value) {
            addCriterion("addr_name <=", value, "addrName");
            return (Criteria) this;
        }

        public Criteria andAddrNameLike(String value) {
            addCriterion("addr_name like", value, "addrName");
            return (Criteria) this;
        }

        public Criteria andAddrNameNotLike(String value) {
            addCriterion("addr_name not like", value, "addrName");
            return (Criteria) this;
        }

        public Criteria andAddrNameIn(List<String> values) {
            addCriterion("addr_name in", values, "addrName");
            return (Criteria) this;
        }

        public Criteria andAddrNameNotIn(List<String> values) {
            addCriterion("addr_name not in", values, "addrName");
            return (Criteria) this;
        }

        public Criteria andAddrNameBetween(String value1, String value2) {
            addCriterion("addr_name between", value1, value2, "addrName");
            return (Criteria) this;
        }

        public Criteria andAddrNameNotBetween(String value1, String value2) {
            addCriterion("addr_name not between", value1, value2, "addrName");
            return (Criteria) this;
        }

        public Criteria andAddrTelIsNull() {
            addCriterion("addr_tel is null");
            return (Criteria) this;
        }

        public Criteria andAddrTelIsNotNull() {
            addCriterion("addr_tel is not null");
            return (Criteria) this;
        }

        public Criteria andAddrTelEqualTo(String value) {
            addCriterion("addr_tel =", value, "addrTel");
            return (Criteria) this;
        }

        public Criteria andAddrTelNotEqualTo(String value) {
            addCriterion("addr_tel <>", value, "addrTel");
            return (Criteria) this;
        }

        public Criteria andAddrTelGreaterThan(String value) {
            addCriterion("addr_tel >", value, "addrTel");
            return (Criteria) this;
        }

        public Criteria andAddrTelGreaterThanOrEqualTo(String value) {
            addCriterion("addr_tel >=", value, "addrTel");
            return (Criteria) this;
        }

        public Criteria andAddrTelLessThan(String value) {
            addCriterion("addr_tel <", value, "addrTel");
            return (Criteria) this;
        }

        public Criteria andAddrTelLessThanOrEqualTo(String value) {
            addCriterion("addr_tel <=", value, "addrTel");
            return (Criteria) this;
        }

        public Criteria andAddrTelLike(String value) {
            addCriterion("addr_tel like", value, "addrTel");
            return (Criteria) this;
        }

        public Criteria andAddrTelNotLike(String value) {
            addCriterion("addr_tel not like", value, "addrTel");
            return (Criteria) this;
        }

        public Criteria andAddrTelIn(List<String> values) {
            addCriterion("addr_tel in", values, "addrTel");
            return (Criteria) this;
        }

        public Criteria andAddrTelNotIn(List<String> values) {
            addCriterion("addr_tel not in", values, "addrTel");
            return (Criteria) this;
        }

        public Criteria andAddrTelBetween(String value1, String value2) {
            addCriterion("addr_tel between", value1, value2, "addrTel");
            return (Criteria) this;
        }

        public Criteria andAddrTelNotBetween(String value1, String value2) {
            addCriterion("addr_tel not between", value1, value2, "addrTel");
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

        public Criteria andSortIsNull() {
            addCriterion("sort is null");
            return (Criteria) this;
        }

        public Criteria andSortIsNotNull() {
            addCriterion("sort is not null");
            return (Criteria) this;
        }

        public Criteria andSortEqualTo(String value) {
            addCriterion("sort =", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortNotEqualTo(String value) {
            addCriterion("sort <>", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortGreaterThan(String value) {
            addCriterion("sort >", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortGreaterThanOrEqualTo(String value) {
            addCriterion("sort >=", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortLessThan(String value) {
            addCriterion("sort <", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortLessThanOrEqualTo(String value) {
            addCriterion("sort <=", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortLike(String value) {
            addCriterion("sort like", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortNotLike(String value) {
            addCriterion("sort not like", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortIn(List<String> values) {
            addCriterion("sort in", values, "sort");
            return (Criteria) this;
        }

        public Criteria andSortNotIn(List<String> values) {
            addCriterion("sort not in", values, "sort");
            return (Criteria) this;
        }

        public Criteria andSortBetween(String value1, String value2) {
            addCriterion("sort between", value1, value2, "sort");
            return (Criteria) this;
        }

        public Criteria andSortNotBetween(String value1, String value2) {
            addCriterion("sort not between", value1, value2, "sort");
            return (Criteria) this;
        }

        public Criteria andCityIsNull() {
            addCriterion("city is null");
            return (Criteria) this;
        }

        public Criteria andCityIsNotNull() {
            addCriterion("city is not null");
            return (Criteria) this;
        }

        public Criteria andCityEqualTo(String value) {
            addCriterion("city =", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityNotEqualTo(String value) {
            addCriterion("city <>", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityGreaterThan(String value) {
            addCriterion("city >", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityGreaterThanOrEqualTo(String value) {
            addCriterion("city >=", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityLessThan(String value) {
            addCriterion("city <", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityLessThanOrEqualTo(String value) {
            addCriterion("city <=", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityLike(String value) {
            addCriterion("city like", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityNotLike(String value) {
            addCriterion("city not like", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityIn(List<String> values) {
            addCriterion("city in", values, "city");
            return (Criteria) this;
        }

        public Criteria andCityNotIn(List<String> values) {
            addCriterion("city not in", values, "city");
            return (Criteria) this;
        }

        public Criteria andCityBetween(String value1, String value2) {
            addCriterion("city between", value1, value2, "city");
            return (Criteria) this;
        }

        public Criteria andCityNotBetween(String value1, String value2) {
            addCriterion("city not between", value1, value2, "city");
            return (Criteria) this;
        }

        public Criteria andProvinceIsNull() {
            addCriterion("province is null");
            return (Criteria) this;
        }

        public Criteria andProvinceIsNotNull() {
            addCriterion("province is not null");
            return (Criteria) this;
        }

        public Criteria andProvinceEqualTo(String value) {
            addCriterion("province =", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceNotEqualTo(String value) {
            addCriterion("province <>", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceGreaterThan(String value) {
            addCriterion("province >", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceGreaterThanOrEqualTo(String value) {
            addCriterion("province >=", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceLessThan(String value) {
            addCriterion("province <", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceLessThanOrEqualTo(String value) {
            addCriterion("province <=", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceLike(String value) {
            addCriterion("province like", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceNotLike(String value) {
            addCriterion("province not like", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceIn(List<String> values) {
            addCriterion("province in", values, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceNotIn(List<String> values) {
            addCriterion("province not in", values, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceBetween(String value1, String value2) {
            addCriterion("province between", value1, value2, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceNotBetween(String value1, String value2) {
            addCriterion("province not between", value1, value2, "province");
            return (Criteria) this;
        }

        public Criteria andAreaIsNull() {
            addCriterion("area is null");
            return (Criteria) this;
        }

        public Criteria andAreaIsNotNull() {
            addCriterion("area is not null");
            return (Criteria) this;
        }

        public Criteria andAreaEqualTo(String value) {
            addCriterion("area =", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaNotEqualTo(String value) {
            addCriterion("area <>", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaGreaterThan(String value) {
            addCriterion("area >", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaGreaterThanOrEqualTo(String value) {
            addCriterion("area >=", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaLessThan(String value) {
            addCriterion("area <", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaLessThanOrEqualTo(String value) {
            addCriterion("area <=", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaLike(String value) {
            addCriterion("area like", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaNotLike(String value) {
            addCriterion("area not like", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaIn(List<String> values) {
            addCriterion("area in", values, "area");
            return (Criteria) this;
        }

        public Criteria andAreaNotIn(List<String> values) {
            addCriterion("area not in", values, "area");
            return (Criteria) this;
        }

        public Criteria andAreaBetween(String value1, String value2) {
            addCriterion("area between", value1, value2, "area");
            return (Criteria) this;
        }

        public Criteria andAreaNotBetween(String value1, String value2) {
            addCriterion("area not between", value1, value2, "area");
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