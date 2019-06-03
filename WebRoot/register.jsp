<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link href="css/register.css" rel="stylesheet" type="text/css">
  </head>
  
  <body>
	<div id="loginform">
		<div id="management">
			<div id="connect"><img src="images/BY9951_01_standard.jpg" width="170px" height="200px" alt="" /></div>
		</div>
		<div id="mainlogin" >
			<div id="or">to</div>
			<h1>在此进行用户注册</h1>
			<form action="register" method="post">
				<input type="text" placeholder="用户姓名" id="username" name="username" value="" > 
				<input type="password" placeholder="密码" id="password" name="password" value="" >
				<input type="text" placeholder="电话" id="tel" name="tel" value="" >
				<input type="text" placeholder="地址" id="address" name="address" value="" >
				<input type="text" placeholder="用户姓名" id="isplus" name="isplus" value="" >
				<button type="submit">
					<h class="fa fa-arrow-right"> <img src="images/arrow.png"
						width="15" alt="" /></h>
				</button>
			</form>
			<div id="note">
				
			</div>
		</div>
	</div>
</body>
</html>
