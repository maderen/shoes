<%@ page language="java" import="java.util.*"  import="store.domain.Shoes" pageEncoding="UTF-8"%>
<%@ page import="store.dao.ShoesDao"  import="store.dao.jdbc.ShoesDaoJDBCImp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<title>菜单导航</title>

<link rel="stylesheet" type="text/css" href="css/default.css"/>
<link rel="stylesheet" type="text/css" href="css/component.css"/>
<link rel="stylesheet" type="text/css" href="css/content.css"/>
<link rel="stylesheet" type="text/css" href="css/details.css"/>
<link rel="stylesheet" type="text/css" href="css/xzoom.css"/>
<link rel="stylesheet" type="text/css" href="css/bottom.css"/>

</head>
<body>
<jsp:useBean id="shoesDao" class="store.dao.jdbc.ShoesDaoJDBCImp" scope="session"></jsp:useBean>
<jsp:include page="common/header.jsp"></jsp:include>


<div class="detailspage">
 					
	<div class="detailspage-back"></div>
<!--商品预览放大-->
	<div class="detailspage-preview">
		<div class="large">
		 	<%
			 	String strID=request.getParameter("shoeId");
					
	          	int id=Integer.parseInt(strID);
	          	
				//List<Shoes> sh = shoesDao.findShoesById(id);
				List<Shoes> sh=shoesDao.findShoesById(id);
				for(Shoes s:sh){

			%>
			
		        <div class="xzoom-container">
		          <img class="xzoom" id="xzoomimg" src="images/gallery/preview/<%=s.getPricture()%>_01_standard.jpg" xoriginal="images/gallery/original/<%=s.getPricture()%>_01_standard.jpg" />
		      
		        </div> 
		        <div class="xzoom-thumbs">
		            <a href="images/gallery/original/<%=s.getPricture()%>_01_standard.jpg"><img class="xzoom-gallery" width="60" src="images/gallery/thumbs/<%=s.getPricture()%>_01_standard.jpg"  xpreview="images/gallery/preview/<%=s.getPricture()%>_01_standard.jpg" title="描述"></a>
		            <a href="images/gallery/original/<%=s.getPricture()%>_02_standard.jpg"><img class="xzoom-gallery" width="60" src="images/gallery/preview/<%=s.getPricture()%>_02_standard.jpg" title="描述"></a>
		            <a href="images/gallery/original/<%=s.getPricture()%>_03_standard.jpg"><img class="xzoom-gallery" width="60" src="images/gallery/preview/<%=s.getPricture()%>_03_standard.jpg" title="描述"></a> 
		            <a href="images/gallery/original/<%=s.getPricture()%>_04_standard.jpg"><img class="xzoom-gallery" width="60" src="images/gallery/preview/<%=s.getPricture()%>_04_standard.jpg" title="描述"></a>
		            <a href="images/gallery/original/<%=s.getPricture()%>_05_standard.jpg"><img class="xzoom-gallery" width="60" src="images/gallery/preview/<%=s.getPricture()%>_05_standard.jpg" title="描述"></a>  
	              <a href="images/gallery/original/<%=s.getPricture()%>_01_detail.jpg"><img class="xzoom-gallery" width="60" src="images/gallery/preview/<%=s.getPricture()%>_01_detail.jpg" title="描述"></a> 
	              <a href="images/gallery/<%=s.getPricture()%>_02_detail.jpg"><img class="xzoom-gallery" width="60" src="images/gallery/preview/<%=s.getPricture()%>_02_detail.jpg" title="描述"></a>
				</div>       
		      </div>
	</div>

	<div class="detailspage-text">
		<div class="detailspage-text-title1"><a href="#">评价我们</a></div>
		<div class="detailspage-text-title2"><%=s.getType() %></div>
		<div class="detailspage-text-title3"><%=s.getDiscrib()%></div>
		<h3>$<%=s.getPrice() %></h3>
<!--		颜色选择-->
		<div class="detailspage-text-Color"> 
		颜色选择/ <br>Running White Ftw (BA7208)<br>
		<img width="60" src="images/gallery/thumbs/<%=s.getPricture()%>_01_standard.jpg" >
		
		</div>
		
		<div class="detailspage-text-size">尺码选择<br>

		<dl class="select" style="margin-top: 5%;">
		<dt style="	z-index:1;">选择尺码</dt>
		<dd>
			<ul>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">6</a></li>
			</ul>
		</dd>
	</dl>
		</div>
		<div class="detailspage-text2">
		<div class="detailspage-text2-limited">限购5件</div>
		<div class="Addbutton"><a href="addcart?scId=<%=s.getId()%>&username=<%=(String)session.getAttribute("ip")%>&size=<%=s.getSize()%>">添加至购物车</a></div>
			
		</div>
		<%	
				}
		%>
</div>
  <div class="next-look">
	<div class="next-look-hr">
	<hr style="width: 400px;"><h>接下来看看 &gt;</h>
	</div>
	<h3 style="font-weight: 100;">猜你喜欢</h3>
	<div class="next-look-img1">
	<a href="#"><img src="images/BA7260_01_standard.jpg" width="100" alt=""/></a>
	<div class="next-look-text">Running White (BA7260)</div>
	</div>
	<div class="next-look-img1"><a href="#"><img src="images/BB2375_01_standard.jpg" width="100" alt=""/></a>
	<div class="next-look-text">Core Red (BB2375)</div></div>
	<div class="next-look-img1"><a href="#"><img src="images/BY9952_01_standard.jpg" width="100" alt=""/></a>
	<div class="next-look-text">Icey Pink (BY9952)</div></div>
	<hr>
  </div>
  <div class="detailed-information">
  	<h1 style="font-weight: 200;">NMD_CS1 PRIMEKNIT SHOES</h1>
	  <h3 style="font-family: 'bowlby-one'; font-weight: bolder;">KNIT SHOES WITH STRIPES IN EVERY DIRECTION.</h3>
  	<div class="detailed-information-1">
  	NMD footwear continues on its progressive spiral in fresh new combinations of urban style and running-inspired design. These shoes feature a Japanese-influenced allover two-tone stripe pattern that's divided into vertical, horizontal and diagonal segments. It's NMD's tribute to minimalism, complete with a heel pull that reads "The Brand with the 3-Stripes." An adidas Primeknit upper fits your foot flexibly, while midsole boost™ keeps energy coming.</div>
  	<div class="detailed-information-2">
  		<ul>
  			<li>adidas Primeknit upper wraps the foot in adaptive support and ultralight comfort</li>
  			<li>boost™ is our most responsive cushioning ever: The more energy you give, the more you get</li>
  			<li>Engineered sock-like upper</li>
  			<li>Printed article number on medial side; Molded EVA midsole plugs</li>
  			<li>Printed text on heel pull</li>
  			<li>Rubber outsole</li>
  			<li>Imported</li>
  		</ul>
  	</div>
  </div>
  <div class="SHARE-WEAR">
  		<h1 style="font-weight: 200;">NMD_CS1 PRIMEKNIT SHOES</h1>
	<div class="SHARE-WEAR-img">
  		<div class="SHARE-WEAR-img1"><img src="images/share/share shoes003.jpg" width="100%" alt=""/>
  		</div>
  		<div class="SHARE-WEAR-img2">
  			<div class="SHARE-WEAR-img2-left"><img src="images/share/share shoes001.jpg" width="100%" alt=""/></div>
  			<div class="SHARE-WEAR-img2-right"><img src="images/share/share shoes002.jpg" width="100%" alt=""/></div>
  			<div class="SHARE-WEAR-img2-left"><img src="images/share/share shoes004.jpg" width="100%" alt=""/></div>
  			<div class="SHARE-WEAR-img2-right"><img src="images/share/share shoes005.jpg" width="100%" alt=""/></div>
  		</div>
	</div>
  </div>
  
	</div>
	
<jsp:include page="common/footer.jsp"></jsp:include>
<script src="js/preview/modernizr.js"></script>
<script src="js/preview/jquery.js"></script>
<script type="text/javascript" src="js/preview/xzoom.min.js"></script>
<script type="text/javascript" src="js/preview/jquery.hammer.min.js"></script>  
<script type="text/javascript" src="js/preview/jquery.fancybox.js"></script>
<script type="text/javascript" src="js/preview/magnific-popup.js"></script>
<script src="js/preview/foundation.min.js"></script>
<script src="js/preview/setup.js"></script>     
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

