<%@ page language="java" import="java.util.*"  import="store.domain.Shoes" pageEncoding="UTF-8"%>
<%@ page import="store.dao.ShoesDao"  import="store.dao.jdbc.ShoesDaoJDBCImp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 

<title>菜单导航</title>

<link rel="stylesheet" type="text/css" href="css/default.css" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<link rel="stylesheet" type="text/css" href="css/content.css" />
<link rel="stylesheet" type="text/css" href="css/bottom.css" />
<script type="text/javascript">
 var str="选中的值为:";
function a(){
//获取所有的input标签
      var input = document.getElementsByTagName("input");
     
      for (var i = 0; i < input.length; i++)
      {
        var obj = input[i];
        //判断是否是checkbox并且已经选中
        if (obj.type == "checkbox" && obj.checked) 
        {
          var code = obj.value;//获取checkbox的值
          str=str+code+",";
       }
      }
    document.getElementById("show").innerText=str;
    document.getElementById("ba").style.display="inline";
    //alert(str);
    //setTimeout(window.location.href="allservlet?str="+str,1000);
    }
    function b(){
    window.location.href="allservlet?str="+str;
    }
</script>
</head>

<body>
<jsp:useBean id="shoesDao" class="store.dao.jdbc.ShoesDaoJDBCImp" scope="session"></jsp:useBean>

<jsp:useBean id="fitPeople" class="store.dao.jdbc.fitPeopleDaoJDBCImp" scope="session"></jsp:useBean>


<div class="title">
<div class="titlesearch">
		<form id="searchform" action="select" method="post">
				<%
					request.setCharacterEncoding("UTF-8");
    		    	String content = request.getParameter("content");
    		    	content = (content!=null?content:"");
    		    %>
    		    	<input name="submit" type="submit" value=>
			<input name="content" type="text" value=<%=content %> >
	
		</form>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="ShoppingCart.jsp"><img src="images/Shopping Cart.png" width="30" height="30" alt=""/></a> 
	
<!--		购物车图标-->

	 </div>
<div class="Toptitle">
  <div class="ToptitleR">
		<ul>
			<li>在线客服</li>
			<li>订单跟踪</li>
			<li>登录</li>
		</ul>
	</div>
<img src="images/logo.png" width="63" height="80" alt=""/>
</div>

	<jsp:include page="common/fitPeople.jsp"></jsp:include>

<div class="FreeRETURNS">
<div class="FreeRETURNSIMG">
</div>
<a href="#">FREE SHIPPING AND FREE RETURNS</a> 
</div>
	</div>
	
	<jsp:include page="common/fitPeople.jsp"></jsp:include>
<!--	主要内容-->
<div class="content">
<!--顶端图片-->
<div class="Propaganda">
  <img src="images/NMD_2000x878_White.jpg" width="100%" height="" alt=""/> 
  </div>
<!--  商品-->
	<div class="goods">
<!--	商品顶部列表信息-->
	<div class="message">
<!--	在此获取分类 及商品数量-->

		<b>男子 • NMD</b>( 商品展示)
	</div>
<!--	筛选-->
		<div class="screen">
		<div><p id="show"></p></div>
		<div style="display: none"id="ba">
		    <input type="button" value="提交" onclick="b()">
		</div>
			<div class="subNavBox">
	<div class="subNav currentDd currentDt">产品主题</div>
	<ul class="navContent " style="display:block">
			<li>
				<div class="checkbox">
  					<input type="checkbox" value="男子" id="Apparel" name="1"/>
					<label for="Apparel"></label><h>男子</h>
  				</div></li>
			<li><div class="checkbox">
  					<input type="checkbox" value="女子" id="Shoes" name="1" />
					<label for="Shoes"></label><h>女子</h>
  				</div></li>
			<li><div class="checkbox">
  					<input type="checkbox" value="儿童" id="Accessories" name="1" />
					<label for="Accessories"></label><h>儿童</h>
  				</div>
  				</li>
  			
			
	</ul>
	<div class="subNav">运动类目</div>
	<ul class="navContent">
	       <li><div class="checkbox">
  					<input type="checkbox" value="Originals" id="Running2" name="Running2" />
					<label for="Running2"></label><h>Originals</h>
  				</div></li>
			<li><div class="checkbox">
  					<input type="checkbox" value="跑步" id="Running" name="Running" />
					<label for="Running"></label><h>跑步</h>
  				</div></li>
			<li><div class="checkbox">
  					<input type="checkbox" value="篮球" id="Basketball" name="Basketball" />
					<label for="Basketball"></label><h>篮球</h>
  				</div></li>
			<li><div class="checkbox">
  					<input type="checkbox" value="户外" id="Training" name="Training" />
					<label for="Training"></label><h>户外</h>
  				</div></li>
			<li><div class="checkbox">
  					<input type="checkbox" value="网球" id="Tennis" name="Tennis" />
					<label for="Tennis"></label><h>网球</h>
  				</div></li>
  				<li><div class="checkbox">
  					<input type="checkbox" value="拖鞋" id="Swim" name="Swim" />
					<label for="Swim"></label><h>拖鞋</h>
  				</div></li>
  				<li><div class="checkbox">
  					<input type="button" value="确认选择" id="Accessories2" name="1" onclick="a()"/>
  				</div>
  				</li>
	</ul>
	
</div>
		</div>
<!--	商品列表-->		
		<div class="product">
			<div class="productMassage">
<!--			下拉列表-->
				<div class="selectdiv">
	<dl class="select">
		<dt>选择排序方式</dt>
		<dd>
			<ul>
				<li><a href="selectc?method=storage&type=1">销量由高到低</a></li>
				<li><a href="selectc?method=storage&type=2">销量由低到高</a></li>
				<li><a href="selectc?method=price&type=3">价格由高到低</a></li>
				<li><a href="selectc?method=price&type=4">价格由低到高</a></li>
			</ul>
		</dd>
	</dl>
	</div>
			</div>
			<div class="productList">
			<ul>
			<%
			    int count=0;
			   String str=request.getParameter("str");
		
		String[] sourceStrArray = str.split(":");
        for (int i = 0; i < sourceStrArray.length; i++) {
            System.out.println(sourceStrArray[i]);
            String[] StrArray=sourceStrArray[1].split(",");
            for (int j = 0; j < StrArray.length; j++) {
                System.out.println(StrArray[j]);
                ShoesDao dao = new ShoesDaoJDBCImp();
    			List<Shoes> show = dao.findShoe(StrArray[1], StrArray[0]);
    	
				for(Shoes s:show){
					count++;

			%>
			
			<li>
			  <img src="images/list/<%=s.getPricture() %>.jpg" width="100%" alt=""/>
				<div class="productintroduce">
					1种颜色<%=s.getColor() %>
					<hr class="productintroducehr">
					<h><%=s.getDiscrib() %></h>
					<h4>¥<%=s.getPrice() %></h4>
					<h3><a href="#">添加至购物车</a></h3>
				</div>
			</li>
			  	<%
							}
									
            }
        }
			  	%>
			  	
			 </ul>
			<b>男子 • NMD</b>( 符合查询的有<b><%=count %></b> 件商品)
			</div>
				
		</div>
	</div>
  
  
</div>

<jsp:include page="common/footer.jsp"></jsp:include>

<script type="text/javascript" src="js/jquery-1.7.min.js"></script>
<script type="text/javascript" src="js/cbpHorizontalMenu.min.js"></script>
<script type="text/javascript">
	
$(function() {
	cbpHorizontalMenu.init();
});
$(function(checkbox){

		$(".subNav").click(function(){
			$(this).toggleClass("currentDd").siblings(".subNav").removeClass("currentDd")
			$(this).toggleClass("currentDt").siblings(".subNav").removeClass("currentDt")
			
			// 修改数字控制速度， slideUp(500)控制卷起速度.siblings(".navContent").slideUp(500)
			$(this).next(".navContent").slideToggle(500);
	})	
})	
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

