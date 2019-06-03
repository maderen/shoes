<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ page language="java" import="store.domain.fitPeople"%>
<%@ page language="java" import="store.dao.fitPeopleDao"%>
<%@ page language="java" import="store.dao.jdbc.fitPeopleDaoJDBCImp"%>

<div class="container">
	<div class="main">
		<nav id="cbp-hrmenu" class="cbp-hrmenu">
			<ul>
			
<li><a href="#">男子</a>
				  <div class="cbp-hrsub">
						<div class="cbp-hrsub-inner"> 
							<div>
								<h4>最新活动</h4>
								<ul>
									<li><a href="#">新品上市</a></li>
									<li><a href="#">创造你的专属Adilette</a></li>
									<hr class="sorthr"><br>
									<li><a href="#">跑步| Alpha Bounce</a></li>
									<li><a href="#">足球| Duststorm</a></li>
									<li><a href="#">Originals SUMMER</a></li>
									<li><a href="#">篮球|Crazy explosive</a></li>
									<hr class="sorthr"><br>
									<li><a href="#"><b>全部男子商品</b></a></li>
								</ul>
							</div>
							<div>
								<h4>鞋类</h4>
								<ul>
									<li><a href="originals.jsp">Originals</a></li>
									<li><a href="#">adidas neo</a></li>
									<li><a href="#">足球</a></li>
									<li><a href="#">篮球</a></li>
									<li><a href="#">训练</a></li>
									<li><a href="#">跑步</a></li>
									<li><a href="#">户外</a></li>
									<li><a href="#">网球</a></li>
									<li><a href="#">miadidas个性定制</a></li>
									<hr class="sorthr"><br>
									<li><a href="#"><b>全部男子鞋</b></a></li>
								</ul>
							</div>
							<div>
								<h4>服饰类</h4>
								<ul>
									<li><a href="#">紧身裤</a></li>
									<li><a href="#">短袖上衣</a></li>
									<li><a href="#">长袖上衣</a></li>
									<li><a href="#">夹克/外套</a></li>
									<hr class="sorthr"><br>
									<li><a href="#"><b>全部男子服饰</b></a></li>
								</ul>
								<h4>附配件类</h4>
								<ul>
									<li><a href="#">袜子</a></li>
									<li><a href="#">其他配附件</a></li>
									<hr class="sorthr"><br>
									<li><a href="#"><b>全部男子配件</b></a></li>
									
								</ul>
							</div>
						</div><!-- /cbp-hrsub-inner -->
					</div><!-- /cbp-hrsub -->
				</li>
				<li><a href="#">女子</a>
				  <div class="cbp-hrsub">
						<div class="cbp-hrsub-inner">
							<div>
								<h4>最新活动</h4>
								<ul>
									<li><a href="#">新品上市</a></li>
									<li><a href="#">创造你的专属Adilette</a></li>
									<hr class="sorthr"><br>
									<li><a href="#">跑步| Alpha Bounce</a></li>
									<li><a href="#">Originals|SUMMER</a></li>
									<li><a href="#">adidas neo|生来好动</a></li>
									<hr class="sorthr"><br>
									<li><a href="#"><b>全部女子商品</b></a></li>
								</ul>
								</div>
								<div>
								<h4>鞋类</h4>
								<ul>
									<li><a href="#">Originals</a></li>
									<li><a href="#">adidas neo</a></li>
									<li><a href="#">训练</a></li>
									<li><a href="#">跑步</a></li>
									<li><a href="#">户外</a></li>
									<li><a href="#">网球</a></li>
									<li><a href="#">miadidas个性定制</a></li>
									<hr class="sorthr"><br>
									<li><a href="#"><b>全部女子鞋</b></a></li>
									</ul>
							</div>
							<div>
								<h4>服饰类</h4>
								<ul>
									<li><a href="#">紧身裤</a></li>
									<li><a href="#">运动胸衣</a></li>
									<li><a href="#">短袖上衣</a></li>
									<li><a href="#">长袖上衣</a></li>
									<li><a href="#">短裙/连衣裙</a></li>
									<hr class="sorthr"><br>
									<li><a href="#"><b>全部女子服饰</b></a></li>
								</ul>
							</div>
							<div>
								<h4>附配件类</h4>
								<ul>
									<li><a href="#">袜子</a></li>
									<li><a href="#">其他配附件</a></li>
									<hr class="sorthr"><br>
									<li><a href="#"><b>全部女子配件</b></a></li>
									
								</ul>
							</div>
							
						</div><!-- /cbp-hrsub-inner -->
					</div><!-- /cbp-hrsub -->
				</li>
				<li><a href="#">童装</a>
				  <div class="cbp-hrsub">
						<div class="cbp-hrsub-inner"> 
							<div>
								<h4>最新活动</h4>
								<ul>
									<li><a href="#">新品上市</a></li>
									<hr class="sorthr"><br>
									<li><a href="#">运动表现</a></li>
									<hr class="sorthr"><br>
									<li><a href="#">kids|夏日 动起来</a></li>
									<hr class="sorthr"><br>
								</ul>
 
							</div>
							<div>
								<h4>儿童</h4>
								<ul>
									<li><a href="#">男儿童:服装</a></li>
									<li><a href="#">女儿童:服装</a></li>
									<li><a href="#">男儿童:鞋类</a></li>
									<li><a href="#">女儿童:鞋类</a></li>
									<li><a href="#">男儿童:箱包/附配件</a></li>
									<li><a href="#">女儿童:箱包/附配件</a></li>
									<hr class="sorthr"><br>
									<li><a href="#"><b>全部儿童商品</b></a></li>
								</ul>
							</div>
							<div>
								<h4>婴幼儿</h4>
								<ul>
									<li><a href="#">男婴童:服装</a></li>
									<li><a href="#">女婴童:服装</a></li>
									<li><a href="#">男婴童:鞋类</a></li>
									<li><a href="#">女婴童:鞋类</a></li>
									<li><a href="#">男婴童:箱包/附配件</a></li>
									<li><a href="#">女婴童:箱包/附配件</a></li>
									<hr class="sorthr"><br>
									<li><a href="#"><b>全部婴幼儿商品</b></a></li>
								</ul>
							</div>
						</div><!-- /cbp-hrsub-inner -->
					</div><!-- /cbp-hrsub -->
				</li>
				
				<li>
					<a href="#">运动</a>
					<div class="cbp-hrsub">
						<div class="cbp-hrsub-inner"> 
							<div>
								<h4><img src="images/logo-black.png" width="20" height="25" alt=""/>&nbsp;&nbsp;足球</h4>
								<br>
								<ul>
									<li><a href="#"><img src="images/FB-May-172x80.jpg" width="172" height="80" alt=""/></a></li>
									
									<li><a href="#">足球鞋</a></li>
									<li><a href="#">足球服饰</a></li>
									<li><a href="#">附配件</a></li>
									<hr class="sorthr"><br>
									<li><a href="#">曼联</a></li>
									<li><a href="#">AC米兰</a></li>
									<li><a href="#">皇马</a></li>
									<li><a href="#">拜仁</a></li>
									<hr class="sorthr"><br>
									<li><a href="#">Duststorm</a></li>
									<hr class="sorthr"><br>
									<li><a href="#"><b>全部足球商品</b></a></li>
									</ul>
							</div>
							<div>
							
							  <h4><img src="images/logo-black.png" width="20" height="25" alt=""/>&nbsp;&nbsp;跑步</h4>
							  <br>
								<ul>
									<li><a href="#"><img src="images/alphabounce-June-172x80.jpg" width="172" height="80" alt=""/></a></li>
									<li><a href="#">跑步鞋</a></li>
									<li><a href="#">跑步服饰</a></li>
									<li><a href="#">附配件</a></li>
									<hr class="sorthr"><br>
									<li><a href="#">Alpha Bounce</a></li>
									<li><a href="#">跑尽可能</a></li>
									<hr class="sorthr"><br>
									<li><a href="#"><b>全部跑步商品</b></a></li>
								</ul>
							</div>
						  <div>
							<h4><img src="images/logo-black.png" width="20" height="25" alt=""/>&nbsp;&nbsp;篮球</h4>
							<br>
								<ul>
									<li><a href="#"><img src="images/Crazy-explosive-June-172x80.jpg" width="172" height="80" alt=""/></a></li>
									<li><a href="#">篮球鞋</a></li>
									<li><a href="#">篮球服饰</a></li>
									<li><a href="#">附配件</a></li>
									<hr class="sorthr"><br>
									<li><a href="#">Crazy explosive</a></li>
									<li><a href="#">一起称雄</a></li>
									<hr class="sorthr"><br>
									<li><a href="#"><b>全部篮球商品</b></a></li>
								</ul>
								<h4><img src="images/logo-black.png" width="20" height="25" alt=""/>&nbsp;&nbsp;训练</h4>
								<br>
							  <ul>
								  <li><a href="#"><img src="images/172-80-summer-attrack-mar.jpg" width="172" height="80" alt=""/></a></li>
								  <li><a href="#">训练鞋</a></li>
								  <li><a href="#">训练服饰</a></li>
								  <li><a href="#">附配件</a></li>
								  <hr class="sorthr"><br>
								  <li><a href="#">燃一夏</a></li>
								  <hr class="sorthr"><br>
								  <li><a href="#"><b>全部训练商品</b></a></li>
							  </ul>
							</div>
						</div><!-- /cbp-hrsub-inner -->
					</div><!-- /cbp-hrsub -->
				</li>
				<li>
					<a href="#">品牌</a>
					<div class="cbp-hrsub">
						<div class="cbp-hrsub-inner"> 
							<div>
							  <h4><img src="images/top-5-originals.png" width="172" height="30" alt=""/></h4>
								<ul>
								  <li><a href="#"><img src="images/summer-ori-170x80.jpg" width="172" height="80" alt=""/></a></li>
									<li><a href="#">鞋类</a></li>
									<li><a href="#">服装</a></li>
									<li><a href="#">箱包/附配件</a></li>
								  <hr class="sorthr"><br>
									<li><a href="#">SUMMER</a></li>
									<li><a href="#">Stan Smith</a></li>
									<hr class="sorthr"><br>
									<li><a href="#"><b>全部adidas Originals系列</b></a></li>
							  </ul>
						  </div>
								<div>
								<h4><img src="images/top-5-Neo.png" width="172" height="30" alt=""/></h4>
								<ul>
								  <li><a href="#"><img src="images/NEO-June-1-172x80.jpg" width="172" height="80" alt=""/></a></li>
									<li><a href="#">鞋类</a></li>
									<li><a href="#">服装</a></li>
									<li><a href="#">箱包/附配件</a></li>
									<hr class="sorthr"><br>
									<li><a href="#">生来好动</a></li>
									<li><a href="#">boyfriend style</a></li>
									<hr class="sorthr"><br>
									<li><a href="#"><b>全部adidas Oneo系列</b></a></li>
									
								</ul>
						  </div>
							
							
							<div>
								<h4><img src="images/top-5-StellaMcCartney.png" width="172" height="30" alt=""/></h4>
								<ul>
								  <li><a href="#"><img src="images/athletics-aprie-.jpg" width="172" height="80" alt=""/></a></li>
									<li><a href="#">男子</a></li>
									<li><a href="#">女子</a></li>
									<li><a href="#">男子Z.N.E.系列</a></li>
									<li><a href="#">女子Z.N.E.系列</a></li>
									<li><a href="#">新品上市</a></li>
									<hr class="sorthr"><br>
									<li><a href="#">燃一夏</a></li>
									<hr class="sorthr"><br>
									<li><a href="#"><b>全部adidas athletics系列</b></a></li>
									
								</ul>
							</div>
						</div><!-- /cbp-hrsub-inner -->
					</div><!-- /cbp-hrsub -->
				</li>
			</ul>
		</nav>
	</div>
</div>