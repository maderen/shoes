<%@ page language="java" import="java.util.*"  import="store.domain.Shoes" pageEncoding="UTF-8"%>
<%@ page import="store.dao.ShoesDao"  import="store.dao.jdbc.ShoesDaoJDBCImp"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'preview-data.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/content.css" />
	<style>
	.productList
	{
	width: 800px;
	}
	.productintroduce h3
	{
	
	 transition:all 0.5s;
     -moz-transition:all 0.5s; /* Firefox 4 */
     -webkit-transition:all 0.5s; /* Safari and Chrome */
     -o-transition:all 0.5s; /* Opera */
     visibility: hidden;
	 opacity: 0;
	}
	.productintroduce:hover h3
	{
	 visibility: visible;
	 opacity: 1;
	}
	</style>
  </head>
  
  <body>
  
  <jsp:useBean id="shoesDao" class="store.dao.jdbc.ShoesDaoJDBCImp" scope="session"></jsp:useBean>
   
   <div class="productList">
   <ul>
			
			<%
				
				List<Shoes> str = shoesDao.findShoes();
				for(Shoes s:str){

			%>
			<li>
			  <a href="details.jsp?shoeId=<%=s.getId()%>"><img src="images/list/<%=s.getPricture() %>.jpg" width="100%" alt=""/></a> 
				<div class="productintroduce">
					1种颜色<%=s.getColor() %>
					<hr class="productintroducehr">
					<h><%=s.getDiscrib()%></h>
					<h4>¥<%=s.getPrice() %></h4>
					<form action="DeleteS" method="post">
					
					<h3><a href="DeleteS?shId=<%=s.getId()%>" onclick="return confirm('确认删除！')">删除</a> </h3>
					
					</form>
				</div>
			</li>
			  	<%
							}
			  	%>
			 </ul>
			 </div>
  </body>
</html>
