<%@page import="store.dao.OrderInforDao"%>
<%@ page language="java" import="java.util.*"  import="store.domain.OrderInfor" import="store.domain.Shoes" pageEncoding="UTF-8"%>
<%--@ page language="java" import="java.util.*"  import="store.domain.OrderInfor" pageEncoding="UTF-8"--%>
<%@ page import="store.dao.ShoesDao"  import="store.dao.jdbc.ShoesDaoJDBCImp"%>
<%@ page import="store.dao.OrderInforDao"  import="store.dao.jdbc.OrderInforJDBC"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>后台界面</title>
    <style>
        body{
            margin: 0;
        }
        .left{
            float: left;
        }
        .right{
            float: right;
        }
        .pg-header{
            height: 48px;
            background-color: gray;
            color: ;
            line-height: 48px;
        }
        .pg-header .logo{
            width: 200px;
            background-color: #204982;
            text-align: center;
        }
        .pg-header .icons{
            padding: 0 20px;
        }
        .pg-header .icons:hover{
            background-color: #204982;
        }
        .pg-header .user{
            margin-right: 60px;
            padding: 0 20px;
            color: white;
            height: 48px;
            position: relative;
        }
        .pg-header .user:hover{
            background-color: #204982;
        }
        .pg-header .user .a img{
            height: 40px;width: 40px;margin-top: 4px;border-radius: 50%;
        }
        .pg-header .user .b{
            z-index: 20;
            position: absolute;
            /*相对于用户div定位*/
            top: 48px;
            right: 0;
            background-color: white;
            color: black;
            width: 160px;
            display: none;
            font-size: 14px;
            line-height: 30px;
        }
        .pg-header .user .b a{
            padding: 5px;
            color: black;
            text-decoration: none;
        }
        .pg-header .user .b a:hover{
            background-color: #dddddd;
        }
        .pg-header .user:hover .b{
            display: block;
        }
        .pg-header .user .b a{
            display: block;
        }
        .pg-content .menu{
            position: absolute;
            top:48px;
            left: 0;
            bottom: 0;
            width: 200px;
            background-color:green; ;
        }

        .pg-content .content{
            position: absolute;
            top: 48px;
            right: 0;
            bottom: 0;
            left: 200px;
            overflow: auto;
            z-index: 9;
        }
        /* 设置消息样式，数字外边加个圆圈 */
        .info {
            border-radius: 50%;
            line-height: 1px;
            background-color: red;
            padding: 10px 7px;
            font-size: 12px;
            display: inline-block;
        }
    </style>
</head>
<jsp:useBean id="shoesDao" class="store.dao.jdbc.ShoesDaoJDBCImp" scope="session"></jsp:useBean>
<jsp:useBean id="OrderInforDao" class="store.dao.jdbc.OrderInforJDBC" scope="session"></jsp:useBean>
<body>
	<script type="text/javascript">
		function a() {
			document.getElementById("add").style.display = "inline";
			document.getElementById("update").style.display = "none";
			document.getElementById("order").style.display = "none";
		}
		function b() {
			document.getElementById("add").style.display = "none";
			document.getElementById("update").style.display = "inline";
			document.getElementById("order").style.display = "none";
		}
		function c() {
			document.getElementById("add").style.display = "none";
			document.getElementById("update").style.display = "none";
			document.getElementById("order").style.display = "inline";
		}
	</script>
	<div class="pg-header">
        <div class="logo left" align="center">
                                                     功能模块
        </div>
             <h1 align="center">后台管理界面</h1>
    </div>
	<div class="pg-content">
		<div class="menu left" align="center">
			<p>
				<button style="background: green;border:0px;font-size:20px;" onclick="a()">添加商品</button>
			</p>
			<p><button style="background: green;border:0px;font-size:20px;" onclick="b()">更改商品</button></p>
			<p><button style="background: green;border:0px;font-size:20px;" onclick="c()">更改订单</button></p>
		</div>
		<div class="content left">
			<div id="add" style="display: none;">
				<form action="addShoes" method="post">
					<center>
						<h2>添加商品</h2>
					</center>

					<hr width="500px" size="5" color="black">
					<br>

					<table border="0" align="center" width="500px">

						<tr>
							<td align="center">颜色：</td>
							<td><input type="text" name="color" /></td>
						</tr>
						<tr>
							<td align="center">备注：</td>
							<td><input type="text" name="bz" /></td>
						</tr>
						<tr>
							<td align="center">图片：</td>
							<td><input type="file" name="picture" /></td>
						</tr>
						<tr>
							<td align="center">商品编号：</td>
							<td><input type="text" name="goodsid" /></td>
						</tr>
						<tr>
							<td align="center">类型：</td>
							<td><input type="text" name="type" /></td>
						</tr>
						<tr>
							<td align="center">价格：</td>
							<td><input type="text" name="price" /></td>
						</tr>
						<tr>
							<td align="center">适合人群：</td>
							<td><input type="text" name="fitPeople" /></td>
						</tr>
						<tr>
							<td align="center">数量:</td>
							<td><input type="text" name="discount" /></td>
						</tr>
						<tr>
							<td align="center">大小：</td>
							<td><input type="text" name="size" /></td>
						</tr>
						<tr>
							<td align="center">适应年龄：</td>
							<td><input type="text" name="storage" /></td>
						</tr>
						<tr>
							<td align="center">商品名称：</td>
							<td><input type="text" name="goodsname" /></td>
						</tr>
						<tr>
							<td align="center"><input type="submit" value="添加"
								class="button" /></td>
							<td><input type="reset" value="取消" class="button" /></td>
						</tr>
					</table>
				</form>
			</div>
			<div id="update"style="display: none;">
			<table align="center" border="1" id="udtab">
			<tr>
			<td>商品编号</td>
			<td>价格</td>
			<td>颜色</td>
			<td>备注</td>
			<td>数量</td>
			<td>操作</td>
			<tr>
			<%
				int cout=0;
				List<Shoes> str = shoesDao.findShoes();
				for(Shoes s:str){
                     cout++;
			%>
			<tr>
			<td align="center"><%=s.getId() %></td>
			<td align="center">¥<%=s.getPrice() %></td>
			<td align="center"><%=s.getColor() %></td>
			<td align="center"><%=s.getDiscrib() %></td>
			<td align="center"><%=s.getDiscount()%></td>
			<td align="center" ><a href="admindelete?goodsid=<%=s.getId()%>">删除</a> <a href="update?goodsid=<%=s.getId()%>&price=<%=s.getPrice() %>&color=<%=s.getColor() %>&discrib=<%=s.getDiscrib() %>&discount=<%=s.getDiscount()%>">更新</a> </td>
			</tr>
			  	<%
							}
			  	%>
			</table>
			</div>
			
			<div id="order" style="display: none;">
			<table align="center" border="1">
			<tr>
			<td>订单编号</td>
			<td>创建日期</td>
			<td>支付时间</td>
			<td>发货时间</td>
			<td>购买者</td>
			<td>商品编号</td>
			<td>操作</td>
			<tr>
			<%
				
				List<OrderInfor> str2=OrderInforDao.finOrder();
				for(OrderInfor s:str2){

			%>
			<tr>
			<td align="center"><%=s.getOrderid()%></td>
			<td align="center">¥<%=s.getCreatetime() %></td>
			<td align="center"><%=s.getPaytime() %></td>
			<td align="center"><%=s.getDeliverytime() %></td>
			<td align="center"><%=s.getUsername()%></td>
			<td align="center"><%=s.getGoodsid()%></td>
			<td align="center"><a href="orderdelete?orderid=<%=s.getOrderid()%>">删除</a> <a href="orderupdate?orderid=<%=s.getOrderid()%>&Paytime=<%=s.getPaytime() %>&deliverytime=<%=s.getDeliverytime() %>">修改</a> </td>
			</tr>
			  	<%
							}
			  	%>
			</table>
			</div>
		</div>
	</div>
	<div class="pg-footer"></div>
	<script type="text/javascript">
		
	</script>
</body>
</html>