<%@ page language="java" import="java.util.*"   pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<title>主页</title>
	<link rel="stylesheet" type="text/css" href="css/default.css" />
	<link rel="stylesheet" type="text/css" href="css/component.css" />
	<link rel="stylesheet" type="text/css" href="css/mainpage.css" />
	<link rel="stylesheet" type="text/css" href="css/bottom.css" />
	<style>
        html, body {
            margin: 0;
            padding: 0;
        }
        #banner {
            width: 100%;
            height: 500px;
            max-height: 500px;
            position: relative;
/*            margin-top: 6%;*/
            background: #475272;
            overflow: hidden;
        }
        .pelm {
            position: absolute;
        }
        #warpbg {
            top:0px;
            left:0px;
        }
        
        
        #nmd0000 {
            top: 30%;
           	right: 20%;
        }
		#nmdtext {
			
			font-family: "erica-one";
			color: white;
			font-size: 1.5em;
            top: 40%;
           	left: 40%;
			line-height: 5px;
        }
		#nmdtext h1
		{
			font-size: 3em;
			font-family: "erica-one";
			font-weight: bolder;
		}
		.title
		{
			position: relative;
		}
		.bottom
		{
			overflow: hidden;
			margin-top: 10%;
		}
		.bottominfo
		{
			float: left;
			margin-top: 0%;
		}
    </style>
</head>
<body>

<jsp:include page="common/header.jsp"></jsp:include>

	<div class="NMD">
	<article class="jq22-container">
		<div id="banner">
		    <img id="warpbg" class="pelm left top" src="images/nmd_0001.png" height="900px">
			<div id="nmdtext" class="pelm left top" ><h1>NMD_</h1><h>Past_Empowers_Future</h></div>
		  
		    <img id="nmd0000" class="pelm left top" src="images/nmd_0000.png" height="430px">
		    
		   
		</div></article>
		</div>
	<div class="mainpage">
	<a href="#nmd">
	<div class="down"><div id="triangle-facing-right"></div></div>
	</a>
	<div class="recommend"  id="nmd" >
	<div class="recommendtitle">
		<h1>NMD</h1>
	</div>
	<div class="recommendtext">
	<h>Original takes new forms. NMD merges the best of the archives with Boost and Primeknit technology to create the future of urban exploration.</h>
	</div>
		</div>
		<div class="nmdgif"><img src="images/recommend/nmd.gif" width="750" height="200" alt=""/></div>
		
		<div class="viewall"><div class="viewallcolor"></div>
	    <a href="#">查看全部 &nbsp; &gt;</a></div>
<!--	商品推荐-->
	<div class="recommend">
	<div class="recommendtitle">
		<h1><span style="font-weight: 100;">ZX</span> FLUX</h1>
	</div>
	<div class="recommendtext">
	<h>Simple and modern, the ZX Flux is a descendant of the iconic ZX 8000 running shoe. These men's shoes have a one-piece mesh upper with welded TPU 3-Stripes.</h>
	</div>
	
		</div>
		<div class="Carousel">
		<div class="focus">
		    <div class="focusbox">         
		        <div class="focusimg">
		        <ul class="fimglist clearfix">
		            <li><a href="#"><img src="images/recommend/thumb/zx_0001.png" title=""></a></li>
		            <li><a href="#"><img src="images/recommend/thumb/zx_0002.png" title=""></a></li>
		            <li><a href="#"><img src="images/recommend/thumb/zx_0003.png" title=""></a></li>
		            <li><a href="#"><img src="images/recommend/thumb/zx_0004.png" title=""></a></li>
		            <li><a href="#"><img src="images/recommend/thumb/zx_0005.png" title=""></a></li>
		            <li><a href="#"><img src="images/recommend/thumb/zx_0006.png" title=""></a></li>
		            <li><a href="#"><img src="images/recommend/thumb/zx_0007.png" title=""></a></li>
		        </ul>
		        </div> 
		        </div>
		       
		      
		       </div>
	
		  <div class="focustool">
		        <ul class="ftoollist clearfix"><!--通过控制该ul的left值来实现列表的左右移动，增量为931px-->
		            <li class="on"><a href="#/"><div class="listcolor"></div><img src="images/recommend/thumb/thumbnail_001.png"></a></li><!--当前项时为该li添加class: on-->
		            <li><a href="#"><div class="listcolor"></div><img src="images/recommend/thumb/thumbnail_002.png"></a></li>
		            <li><a href="#"><div class="listcolor"></div><img src="images/recommend/thumb/thumbnail_003.png"></a></li>
		            <li><a href="#"><div class="listcolor"></div><img src="images/recommend/thumb/thumbnail_004.png"></a></li>
		            <li><a href="#"><div class="listcolor"></div><img src="images/recommend/thumb/thumbnail_005.png"></a></li>
		            <li><a href="#"><div class="listcolor"></div><img src="images/recommend/thumb/thumbnail_006.png"></a></li>
		            <li><a href="#"><div class="listcolor"></div><img src="images/recommend/thumb/thumbnail_007.png"></a></li>
		        </ul>
		        </div>
		        </div>
		<div class="viewall"><div class="viewallcolor"></div>
	    <a href="originals.jsp" target="blank">查看全部 &nbsp; &gt;</a></div>
 		<div class="lifestyle1">
	    <div class="lifestyle1video">
	    <video width="100%" autoplay loop  muted>
   		<source src="video/lifestyle1.mp4" type="video/mp4">
   		</video>
	</div>
		</div>
 		<div class="lifestyleimg1">
	   <div class="animation1">
       				<div class="yellow"></div>
       				<div class="green"></div>
	       			<img class="shoes" width="501px" height="335px" alt="" style="" src="images/recommend/ls1_still_0000.png">
			 	    <div class="blue"></div>
			 	    <div class="black"></div>
			 	    <div class="red"></div>
			 	    
<!--			 <img id="blue" width="501" height="335" alt="" style="" src="images/recommend/blue.png">-->
	    </div>
	    </div>
	    
	    <div class="lifestyleimg2">
	    <div class="animation2">
       				<div class="color2"></div>
       				<div class="color4"></div>
	       			<img class="shoes" width="378" height="566" alt="" style="" src="images/recommend/ls2_still_0000.png">
			 	    <div class="color1"></div>
			 	    <div class="color3"></div>
			 	    <div class="color5"></div>
			 </div>
	    
	    </div>
  		
  		
  		
  		<div class="zxsocial">
  			<div class="recommendtitle">
				<h1><span style="font-weight: 100;">ZX</span>&nbsp;SOCIAL</h1>
	</div>
	<div class="recommendtext"><h>Follow our Instagram account to get the latest</h></div>
  		</div>
	  	<div class="zxsocialimg">
   			<div class="zxsocialimgL">
		  <img src="images/recommend/zxsocial/01.gif" width="100%" alt=""/> 
		  <img src="images/recommend/zxsocial/04.jpg" width="100%" alt=""/> 
		  </div>
		<div class="zxsocialimgM">
          <img src="images/recommend/zxsocial/02.jpg" width="100%" alt=""/>
          <img src="images/recommend/zxsocial/05.jpg" width="100%" alt=""/> 
          </div>
		<div class="zxsocialimgR">
		  <img src="images/recommend/zxsocial/03.jpg" width="100%" alt=""/>
		  <img src="images/recommend/zxsocial/06.gif" width="100%" alt=""/>
		  </div>
	</div>
	<div class="share"><img src="images/share.png" width="40%" alt=""/>
		<div class="sharecolor"></div>
	</div>
	</div>
	
<div class="bottom">
	<div class="blacksign">
		现在登录adidas即可享受<span style="color:#92d39f;">15%优惠</span>
	</div>
	<div class="info">
		<ul>
			<li><h3>产品</h3></li>
			<li><a href="#">鞋类</a></li>
			<li><a href="#">服装</a></li>
			<li><a href="#">配件</a></li>
			<br>
			<li><a href="#">新品上市</a></li>
			<li><a href="#">折扣专区</a></li>
			<br>
			<li><a href="#">miadidas定制</a></li>
			<br>
			<li><a href="#">运动表现</a></li>
			<li><a href="#">Originals</a></li>
			<li><a href="#">adidas neo</a></li>
			<br>
			<li><a href="#">短袖上衣</a></li>
			<li><a href="#">长袖上衣</a></li>
			<li><a href="#">运动内衣</a></li>
			<li><a href="#">紧身裤</a></li>
			<li><a href="#">下装</a></li>
			<li><a href="#">茄克/外套</a></li>
		</ul>
		<ul>
			<li><h3>运动</h3></li>
			<li><a href="#">足球鞋</a></li>
			<li><a href="#">跑步鞋</a></li>
			<li><a href="#">篮球鞋</a></li>
			<li><a href="#">Climachill</a></li>
			<li><a href="#">D Rose</a></li>
			<li><a href="#">Ultra boost</a></li>
			<li><a href="#">PUREBOOST ZG</a></li>
			<br>
			<li><a href="#">足球</a></li>
			<li><a href="#">篮球</a></li>
			<li><a href="#">跑步</a></li>
			<li><a href="#">训练</a></li>
			<li><a href="#">运动型格</a></li>
			<li><a href="#">网球</a></li>
			<li><a href="#">户外</a></li>
		</ul>
		<ul>
			<li><h3>产品系列</h3></li>
			<li><a href="#">adidas by Stella McCartney</a></li>
			<li><a href="#">adidas StellaSport装</a></li>
			<li><a href="#">Yeezy</a></li>
			<li><a href="#">NMD</a></li>
			<br>
			<li><a href="#">adilette</a></li>
			<li><a href="#">Stan Smith</a></li>
			<li><a href="#">Superstar</a></li>
			<li><a href="#">ZX Flux</a></li>
			<li><a href="#">ZX Family</a></li>
			<li><a href="#">Tubular</a></li>
			<li><a href="#">Gazelle</a></li>
			<li><a href="#">EQT</a></li>
			</ul>
		<ul>
			<li><h3>公司信息</h3></li>
			<li><a href="#">关于我们</a></li>
			<li><a href="#">企业社会责任</a></li>
			<br>
			<li><h4>购物指南</h4></li>
			<li><a href="#">Confirmed app</a></li>
			<li><a href="#">客户服务</a></li>
			<li><a href="#">限时达</a></li>
			</ul>
	</div>
	<div class="bottominfo">
	 © 2017 adidas America Inc.
		</div>
</div>
	<script src="js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/cbpHorizontalMenu.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-2.1.1.min.js"><\/script>')</script>
	<script src="js/jquery.parallaxmouse.min.js"></script>

	<script>
		
	    $(function() {
	cbpHorizontalMenu.init();
});
	    $(window).parallaxmouse({
	        invert: true,
	        range: 100,
	        elms: [
	            {el: $('#warpbg'), rate: 0.1},
	            {el: $('#nmdtext'), rate: 0.45},
	           	{el: $('#nmd0000'), rate: 0.3},
	            
	        ]
	    });
		jQuery(document).ready(function($){
			$(".guidelist li").hover(
				function () {
					$(this).attr("class", "mouseon");
				  },
				  function () {
					$(this).attr("class", "mouseout");
				  }
			);
			$(".ftoollist li").mouseover(function(){
				$(this).siblings().removeClass("on");
				$(this).addClass("on");
				var preNumber=$(this).prevAll().size();
				$(".fimglist li").removeClass("onpre");
				$(".fimglist li:nth-child("+preNumber+")").addClass("onpre");
				var margin = 990;
				margin = margin *preNumber; 
				margin = margin * -1;
				$(".fimglist").stop().animate({marginLeft: margin + "px"}, {duration: 500});
			});
		});
		</script>
</body>
</html>