<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>购买详情</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
<style type="text/css">
.hr0{height:20px; width:500px;background-color:black;border-color: red;text-align: center;}
.l_gwbh{width: 40%;font-size: 20px;font-family: 微软雅黑;float:left;}
.r_gwbh{width: 60%;font-size: 20px;font-family:微软雅黑;float:left;}
.l_sph{width:40%;font-size: 20px;font-family: 微软雅黑;float: left;}
.r_sph{width:60%;font-size: 20px;font-family: 微软雅黑;float: left;}
.l_cm{width: 40%;font-size: 20px;font-family:微软雅黑;float: left;}
.r_cm{width: 60%;font-size: 20px;font-family: 微软雅黑;float: left;}
.l_sl{width:40%;font-size: 20px;font-family: 微软雅黑;float: left;}
.r_sl{width:60%;font-size: 20px;font-family: 微软雅黑;float: left;}
.l_jg{width:40%;font-size: 20px;font-family: 微软雅黑;float: left;}
.r_jg{width:60%;font-size: 20px;font-family: 微软雅黑;float: left;}
.l_splx{width:40%;font-size: 20px;font-family: 微软雅黑;float: left;}
.r_splx{width:60%;font-size: 20px;font-family: 微软雅黑;float: left;}
.l_hybh{width:40%;font-size: 20px;font-family: 微软雅黑;float: left;}
.r_hybh{width:60%;font-size: 20px;font-family: 微软雅黑;float: left;}
.button0{width: 500px;margin-top: 30px;margin-left:40%;text-align: center;}
.body0{width:500px;height: 20px;margin-top:20px;margin-left: 40%; text-align: center;}
</style>
</head>
  
  <body>
  <center>
  <jsp:useBean id="user1" scope="session" class="store.domain.OrderInfor"></jsp:useBean>

   <form action="orderinfor" method="post" >
   <hr class="hr0">
   <div class="body0">
   <span class="l_gwbh">订单编号:</span>
   <span class="r_gwbh"><jsp:getProperty name="user1" property="oid"/></span>
   </div>
    <div class="body0">
   <span class="l_hybh">会员编号:</span>
   <span class="r_hybh"><jsp:getProperty name="user1" property="sid"/></span>
   </div>
   <div class="body0">
   <span class="l_sph">商品号：</span><%--自动生成编号再插入数据库中 --%>
   <span class="r_sph"><jsp:getProperty name="user1" property="gid"/></span>
   </div>
   <div class="body0">
   <span class="l_sl">创建时间：</span><%--购物车添加的商品的创建时间 --%>
   <span class="r_sl"><jsp:getProperty name="user1" property="createtime"/></span>
   </div>
   <div class="body0">
   <span class="l_jg">支付时间：</span>
   <span class="r_jg"><jsp:getProperty name="user1" property="paytime"/></span>
   </div>
   <div class="body0">
   <span class="l_splx">发货时间:</span>
   <span class="r_splx"><jsp:getProperty name="user1" property="deliverytime"/></span>
   </div>

   <div class="button0">
   <input style="width: 100px; height: 30px;color:white;background:black;" type="submit" value="确定" />
   <input style="width: 100px ;height: 30px;color:white;background:black" type="button" value="取消"/>
   <%--实现用户的交互界面，即如果用户觉得自己的订单结构并没有什么错误则用户可以选择点击“确定”按钮，假如用户觉得自己的订单结构有问题的话则需要点击“取消”按钮返回购物车界面 --%>
   </div>
   </form>
   </center>
  </body>
</html>
