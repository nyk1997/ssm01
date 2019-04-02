
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>易买网 - 首页</title>
<link type="text/css" rel="stylesheet" href="<%=path%>/static/css/style.css" />
<script type="text/javascript" src="<%=path%>/static/js/function.js"></script>
	<script type="text/javascript" src="<%=path%>/static/js/jquery-3.1.0.js"></script>
	<script type="text/javascript" src="<%=path%>/static/js/index.js"></script>
<%--
	<script type="text/javascript" src="<%=path%>/static/js/product_view.js"></script>--%>

	<script type="text/javascript">
	/*$(document).ready(function () {
*/        var count = $("#count").val();


        function reduce() {
            if (count > 1) {
                count = count - 1;
                $("#count").val(count)
            }
        }

       function  plus() {
alert("111");
            if (count < goods_number) {
                count = count + 1;
                $("#count").val(count)
            }
        }


        $("#count").blur(function () {
            count = $(this).val();
            if (count > good_number) {
                alert("库存不足,请重新选择")
                self.location.href = "/ssm01/goods/selectGoodsById?goods_id=" + goods_id;
            }
            if (count == 0) {
                alert("数量最低为1")
                self.location.href = "/ssm01/goods/selectGoodsById?goods_id=" + goods_id;
            }
            $("#count").val(count)
        });


        //添加购物车
        function tjshopCar() {
            $.ajax({
                url: "/ssm01/car/tjshopCar",
                data: {
                    "car_count": car_count,
                    "car_goodsid": car_goodsid
                },
                type: "post",
                dataType: "text",
                success: function (data) {
                    if (data == "login") {
                        self.location.href = "../../jsp/login.jsp";
                    } else {
                        alert(data)
                    }
                },
                error: function () {
                    alert("添加购物车失败，请重试！")
                }
            });
      }
   /*   });*/

	</script>
</head>
<body>
<%@ include file="index_top.jsp"  %>
<div id="position" class="wrap">
	您现在的位置：<a href="ProductServlet">易买网</a> &gt; <a href="<%=path%>/jsp/product-list.jsp">图书音像</a> &gt; 图书
</div>
<div id="main" class="wrap">
	<div class="lefter">
		<%@ include file="index_product_sort.jsp" %>
	</div>
	<div id="product" class="main">
		<h1>商品名称</h1>
		<div class="infos">
			<div class="thumb"><img style="width: 100px; height: 100px;" src="<%=path%>/${requestScope.goods.goods_img}"/></div>
			<div class="buy">
				<p>商城价：<span class="price">${requestScope.goods.goods_price}</span></p>
				<p>库　存：${requestScope.goods.goods_number}</p>
				<div class="count1">
					购买数量:
					<input id="reduce" type="button" class="reduce" value="-" onClick="reduce()">
					<input id="count" type="text" class="count" value="1" style="width: 20px">
					<input id="plus" type="button" class="plus" value="+"  onClick="plus()">
				</div>
				<div class="button">
					<input id="buynow" name="buynow" type="button" value="立即购买" />
					<input id="tjshopCar" name="tjshopCar" type="button" value="购物车" onClick="tjshopCar()" />
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="introduce">
			<h2><strong>商品详情</strong></h2>
			<div class="text">
				商品名字：${requestScope.goods.goods_name}<br />
				商品描述：${requestScope.goods.goods_info}<br />
				商品价格：${requestScope.goods.goods_price}<br />
				商品库存：${requestScope.goods.goods_number}<br />
			</div>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy; 2016 上海海文 All Rights Reserved.
</div>
</body>
</html>

