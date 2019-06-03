<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登陆界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link href="css/login.css" rel="stylesheet" type="text/css">
  </head>
  
  <body>
	<div id="loginform">
		<div id="management">
			<div id="connect">此处logo</div>
		</div>
		<div id="mainlogin" >
			<div id="or">to</div>
			<h1>在此进行用户登入</h1>
			<form action="login" method="post">
				<input type="text" placeholder="用户姓名" id="username" name="username" value="" > <input
					type="password" placeholder="密码" id="password" name="password" value="" >
				<button type="submit">
					<h class="fa fa-arrow-right"> <img src="images/arrow.png"
						width="15" alt="" /></h>
				</button>
			</form>
			<div id="note">
				<a href="register.jsp">注册</a>
			</div>
		</div>
	</div>
</body>
</html>
