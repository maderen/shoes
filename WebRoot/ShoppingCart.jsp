<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="store.domain.ShoppingCart"  import="store.dao.jdbc.ShoppingCartDaoImp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<title>菜单导航</title>

<link rel="stylesheet" type="text/css" href="css/default.css" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<link rel="stylesheet" type="text/css" href="css/ShoppingCart.css"/>
<link rel="stylesheet" type="text/css" href="css/content.css"/>
</head>
<body>
<jsp:useBean id="shoppingCartDao" class="store.dao.jdbc.ShoppingCartDaoImp" scope="session"></jsp:useBean>
<jsp:include page="common/header.jsp"></jsp:include>

<!--	购物车总页面-->
	
	<div class="ShoppingCart">
<!--	左侧商品列表-->
		<div class="ShoppingCartList">
			<div class="ShoppingCartText">您的购物袋<a href="originals.jsp">继续购物</a></div>
<!--			购物袋格式-->
			<%
				int count=0;
				float sum=0;
				String id="";
				List<ShoppingCart> sh = shoppingCartDao.ShowShoesById();
				for(ShoppingCart s:sh){
					count++;
					sum=sum+s.getPrice();
					id=id+s.getId()+",";

			%>
<div class="item">

			<div class="itemimg"><img src="images/list/<%=s.getPricture() %>.jpg" width="120" height="120" alt=""/></div>
				<div class="itemtext"><h><%=s.getBz() %></h><div class="itemhref">
					<form action="delete" method="post"><a href="delete?scId=<%=s.getId()%>" onclick="return confirm('确认删除！')">删除</a></form>
</div></div>
		<div class="Price">¥<%=s.getPrice() %></div>	
			<div class="selectdiv">
	<dl class="select">
		<dt>型号</dt>
		<dd>
			<ul>
				<li><a href="#">38</a></li>
				<li><a href="#">39</a></li>
				<li><a href="#">40</a></li>
				<li><a href="#">41</a></li>
				<li><a href="#">42</a></li>
				<li><a href="#">43</a></li>
			</ul>
		</dd>
	</dl>
	</div>
		
</div>
<%
				}
%>

			
			<div class="Settlementbutton"><h> <!-- 物品件数-->共<%=count %>件</h><div class="Arrow"> &#62;</div></div>
    <br><br>
	    <img src="images/ShoppingCart/service.jpg" width="630" height="45" alt=""/> 
	    <hr>
	    </div>
<!--	右侧结算	-->
		<div class="Settlement">
		<div class="Settlementbutton" style="margin-top: 2%; margin-left: -0.5%;width: 250px;;">
		<h><a href="order?id=<%=id %>">结算</a></h>
		<div class="Arrow"> &#62;</div>
		</div>
			<h3>订单摘要：<span style="font-size: 0.8em;font-weight: 500;">共<%=count %>件</span></h3>
		
		<div class="Total"><h>商品总额</h><span>¥<%=sum %></span></div> 
			<!--只是摆设--><div class="Total"><h>优惠额度</h><span>¥0.00</span></div> 
		  <div class="Total" style="height: 60px; line-height: 60px;"><h>商品总额</h><span style="line-height: 24px;"><h3>¥<%=sum %></h3></span></div>
	  </div>
	</div>
	
	<div class="info">
	<h>©2017 adidas</h>
	</div>
<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/cbpHorizontalMenu.min.js"></script>
<script type="text/javascript">
	
$(function() {
	cbpHorizontalMenu.init();
});
$(function(){
	$(".select").each(function(){
		var s=$(this);
		var z=parseInt(s.css("z-index"));
		var dt=$(this).children("dt");
		var dd=$(this).children("dd");
		var _show=function(){dd.slideDown(200);dt.addClass("cur");s.css("z-index",z+1);};   //展开效果
		var _hide=function(){dd.slideUp(200);dt.removeClass("cur");s.css("z-index",z);};    //关闭效果
		dt.click(function(){dd.is(":hidden")?_show():_hide();});
		dd.find("a").click(function(){dt.html($(this).html());_hide();});     //选择效果（如需要传值，可自定义参数，在此处返回对应的“value”值 ）
		$("body").click(function(i){ !$(i.target).parents(".select").first().is(s) ? _hide():"";});
	})
})
</script>


</body>
</html>

