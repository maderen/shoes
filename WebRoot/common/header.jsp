<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>

<link rel="stylesheet" type="text/css" href="css/default.css" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<link rel="stylesheet" type="text/css" href="css/content.css" />
<link rel="stylesheet" type="text/css" href="css/bottom.css" />
</head>
<body>
<jsp:useBean id="fitPeople" class="store.dao.jdbc.fitPeopleDaoJDBCImp" scope="session"></jsp:useBean>
<div class="title">
<div class="titlesearch">
		<form id="searchform" action="select" method="post">
			
		 		 <%
		           request.setCharacterEncoding("UTF-8");
    		    	String content = request.getParameter("content");
    		    	content=(content!=null?content:"");
    		    	System.out.println(content);
    		    %>
			<input name="content" type="text" value="<%=content%>" >
			<input name="submit" type="submit" value=>
			 
		</form>

		&nbsp;&nbsp;&nbsp;&nbsp;
<!--		购物车图标-->
	<a href="deal"><img src="images/Shopping Cart.png" width="30" height="30" alt=""/></a> </div>
<div class="Toptitle">
  <div class="ToptitleR">
  <form action="UserExitServlet">
		<ul>
			<li><a href="selectorder.jsp">订单跟踪</a></li>
			
			<li><a href="register.jsp">注册</a> </li>
			<%String usname = (String)session.getAttribute("ip");
			%>
			<li id="loginma" ><a href="login.jsp">登录</a></li>
			<li id="loginmade" >欢迎你，<%=(String)session.getAttribute("ip") %>顾客！</li><!--visible   hidden-->
			<li><a href="UserExitServlet">退出系统 </a></li>
		</ul>
		</form>
	</div>
<img src="images/logo.png" width="63" height="80" alt="" style="margin-left:100px"/>
</div>

<jsp:include page="fitPeople.jsp"></jsp:include>

<div class="FreeRETURNS">
<div class="FreeRETURNSIMG">
</div>
<a href="#">FREE SHIPPING AND FREE RETURNS</a> 
</div>
	</div>
	
	<script type="text/javascript">
var usname="<%=(String)session.getAttribute("ip")%>";
//alert(usname);
if(usname!=="null"){
document.getElementById("loginma").style.display="none"; 
document.getElementById("loginmade").style.display="inline";
//alert(document.getElementById("login2").value);document.getElementById("id").setAttribute("style","top:20px;left:20px;color:red;");
//document.getElementById('login2').setAttribute("style","visibility:hidden;");;
//alert("1");
}else{ 
document.getElementById("loginma").style.display="inline"; 
document.getElementById("loginmade").style.display="none";
//alert("2");
}
//alert(usname);
</script>
</body></html>