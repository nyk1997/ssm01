<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>易买网 - 首页</title>
<link type="text/css" rel="stylesheet" href="<%=path%>/static/css/style.css" />
<script type="text/javascript" src="<%=path%>/static/js/function.js"></script>
</head>
<body>
<%@ include file="index_top.jsp"  %>
<div id="position" class="wrap">
	您现在的位置：<a href="ProductServlet">易买网</a> &gt; <a href="product-list.jsp">图书音像</a> &gt; 图书
</div>
<div id="main" class="wrap">
	<div class="lefter">
		<%@ include file="index_product_sort.jsp" %>
		<div class="spacer"></div>
		<div class="last-view">
			<h2>最近浏览</h2>
			<dl class="clearfix">
				
					<dt><img style="width: 54px; height: 54px;" src="<%=path%>/static/images/product/0.jpg" /></dt>
					<dd><a href="#">商品名称</a></dd>
					
					<dt><img style="width: 54px; height: 54px;" src="<%=path%>/static/images/product/0.jpg" /></dt>
					<dd><a href="#">商品名称</a></dd>
			</dl>
			<ul id="goods" class="product clearfix">

				<li>
					<dl>
						<dt><a href="/ssm01/jsp/product_view.jsp" target="_self"><img src="<%=path%>/static/images/product/0.jpg" /></a></dt>
						<dd class="title"><a href="#" target="_self">测试的商品</a></dd>
						<dd class="price">￥12.34</dd>
					</dl>
				</li>


			</ul>

		</div>
	</div>
	<div class="main">
		<div class="product-list">
			<h2>全部商品</h2>
			<div class="clear"></div>
			<ul class="product clearfix">
				
				<li>
					<dl>
						<dt><a href="#" target="_self"><img src="<%=path%>/static/images/product/0.jpg" /></a></dt>
						<dd class="title"><a href="#" target="_self">1号耳机</a></dd>
						<dd class="price">￥188</dd>
					</dl>
				</li>

				<li>
					<dl>
						<dt><a href="#" target="_self"><img src="<%=path%>/static/images/product/0.jpg" /></a></dt>
						<dd class="title"><a href="#" target="_self">2号耳机</a></dd>
						<dd class="price">￥99</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt><a href="#" target="_self"><img src="<%=path%>/static/images/product/0.jpg" /></a></dt>
						<dd class="title"><a href="#" target="_self">3号耳机</a></dd>
						<dd class="price">￥20</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt><a href="#" target="_self"><img src="<%=path%>/static/images/product/0.jpg" /></a></dt>
						<dd class="title"><a href="#" target="_self">4号耳机</a></dd>
						<dd class="price">￥10</dd>
					</dl>
				</li>
				
			</ul>
			<div class="clear"></div>
			<div class="pager">
				<ul class="clearfix">
					<li><a href="#">上一页</a></li>
						<li>2</li>
					
					
						<li><a href="#">3</a></li>
				
				
				<li><a href="#">下一页</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy; 2016 上海海文 All Rights Reserved. 京ICP证1000001号
</div>
</body>
</html>

