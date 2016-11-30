# quick-smvcm
快速开发框架
集成了以下组件
+ Spring 4.2.4.RELEASE
+ SpringMVC
+ MyBatis 3.3.0
+ Mybatis Generator 1.3.2
+ Ehcache
+ logback 1.1.3
+ Druid 1.0.23
+ Shiro 1.2.4
+ freemarker 2.3.23

>记住密码一周时间设置位置
>```xml
><bean id="rememberMeCookie" class="org.apache.shiro.web.servlet.SimpleCookie">
>	<constructor-arg value="rememberMe" />
>	<property name="httpOnly" value="true" />
>	<property name="maxAge" value="604800" /><!-- 60*60*24*7天 -->
></bean>
>```

>会话管理器5分钟用户不操作session自动失效
>```xml
><bean id="sessionManager"
>	class="org.apache.shiro.web.session.mgt.DefaultWebSessionManager">
>	<!-- session的失效时长，单位毫秒	5*60*1000=300000 5分钟-->
>	<property name="globalSessionTimeout" value="300000" />
>	<!-- 删除失效的session -->
>	<property name="deleteInvalidSessions" value="true" />
></bean>
>```