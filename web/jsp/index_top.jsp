<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	double num = Math.random();
%>

<div id="header" class="wrap">
	<div id="logo"><img src="<%=path%>/static/images/logo.gif" /></div>
	<div class="help">
		<a href="#" class="shopping">购物车</a>
		<!--登陆前显示的-->
		<c:if test="${sessionScope.user_username==null}">
			<a href="<%=path%>/jsp/login.jsp">登录</a>
			<a href="<%=path%>/jsp/register.jsp">注册</a>
		</c:if>
		<!--登陆后显示的-->
		<c:if test="${sessionScope.user_username!=null}">
			<a href="#">用户：${sessionScope.user_username}</a>
			<a id="logout" href="<%=path%>/jsp/login.jsp">注销</a>
		</c:if>




		<a href="#">留言</a>
	</div>
		
	<div class="navbar">
		<ul class="clearfix">
			<li><a href="#">首页</a></li>
			
			<li><a href="#">商品名称</a></li>
			
		</ul>
	</div>
	


</div>
<div id="childNav">
	<div class="wrap">
		<ul id="BigType" class="clearfix">
		
			<li class="first"><a>商品类型</a></li>
		
		</ul>
	</div>
	<!-- JiaThis Button BEGIN -->
<script type="text/javascript" src="http://v2.jiathis.com/code/jiathis_r.js?move=0" charset="utf-8"></script>
<!-- JiaThis Button END -->
</div>
