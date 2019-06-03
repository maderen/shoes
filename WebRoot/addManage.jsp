<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>增加管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		.button{
		color:#fff;
		height:30px;
		width:80px;
		background:gray;
		border-color:22211A;
		border-width:0px;
	    }
	</style>
  </head>
  
  <body>
  	<form action="addShoes" method="post">
  	<center><h2>添加商品</h2></center>
 
  	<hr width="500px" size="5" color="black">
  	<br>
  
    <table border="0" align="center" width="500px">
    	
    	<tr>
    		<td align="center">颜色：</td>
    		<td ><input type="text" name="color" /></td>
    	</tr>
    	<tr>
    		<td align="center">备注：</td>
    		<td ><input type="text" name="bz" /></td>
    	</tr>
    	<tr>
    		<td align="center">图片：</td>
    		<td ><input type="file" name="picture" /></td>
    	</tr>
    	<tr>
    		<td align="center">型号：</td>
    		<td ><input type="text" name="size" /></td>
    	</tr>
    	<tr>
    		<td align="center">类型：</td>
    		<td ><input type="text" name="type" /></td>
    	</tr>
    	<tr>
    		<td align="center">价格：</td>
    		<td ><input type="text" name="price" /></td>
    	</tr>
    	<tr>
    		<td align="center">适合人群：</td>
    		<td ><input type="text" name="fitPeople" /></td>
    	</tr>
    </table>
    <p><br>
    <center><span style="color: white;"><input type="submit" value="添加" class="button" /></span></center>
    </form>
  </body>
</html>
