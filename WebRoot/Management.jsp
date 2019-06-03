<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Management.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
	html,body
	{
		margin: 0px;
		height: 100%;
		overflow-x:hidden;
	}
	.Leftmost
	{
		margin: 0;
		width: 17.5%;
		height: 100%;
		background-color: #1f1f1f;
		text-align: center;
		position: fixed;
	}
	.Leftmost-Upper
	{
		margin-top: 40%;
		height: 200px;
		border: solid 0px #fff ;
	}
	.Leftmost-Middle
	{
		height: 200px;
		border: solid 0px #fff ;
		margin-top: 10%;
	}
	.Login a,.showreel a,.about a,.contact a
	{
		font-size: 0.9em;
		font-family: Agency FB;
		color: #b5b5b5;
		height: 24%;
		border: solid 0px #fff ;
		letter-spacing: 1px;
		line-height: 45px;
		text-decoration:none;
	}
	.Login:hover a,.showreel:hover a,.about:hover a,.contact:hover a
	{
		color: white;
	}
	.Leftmost-Below
	{
		height: 50px;
		border: solid 0px #fff ;
		margin-top: 60%;
	}
	.rightmost
	{
		margin: 0;
		height:80%;
		width: 82.5%;
		height: 100%;
		background-color: #fff;
		text-align: center;
		float: right;
		
	}
	</style>
  </head>
  
  <body>
    <div class="Leftmost">
<div class="Leftmost-Upper"><img src="images/infinitely LOGO.png" width="200px" alt=""/></div>
<div class="Leftmost-Middle">

	<div class="Login"><a href="preview-data.jsp" target="content">PREVIEW</a></div><!-- 预览 -->
	<div class="showreel"><a href="img.jsp" target="content">SHOWREEL</a></div><!-- 展示台 -->
	<div class="about"><a href="#">ABOUT</a></div>
	<div class="contact"><a href="#">CONTACT</a></div>
	
</div>
<div class="Leftmost-Below"></div>
</div>
	<div class="rightmost">
	<iframe name="content" src="list.jsp" align="middle" id="iframepage"  width="100%" height="100%" frameborder="0"></iframe>
	</div>
  </body>
</html>
