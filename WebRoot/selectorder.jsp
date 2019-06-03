<%@ page language="java" import="java.util.*"
	import="store.domain.OrderInfor" pageEncoding="UTF-8"%>
<%@ page import="store.dao.OrderInforDao"
	import="store.dao.jdbc.OrderInforJDBC"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<meta property="og:image" content="" id="safariImage">
<meta property="og:type" content="website">
<meta name="keywords" content="阿迪达斯官方商城">
<meta name="description" content="阿迪达斯官方商城">
<meta name="author" content="">
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
	name="viewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="msapplication-tap-highlight" content="no">
<meta name="renderer" content="webkit">
<meta name="MobileOptimized" content="320">
<meta http-equiv="Cache-Control" content="no-siteapp">
<meta content="telephone=no" name="format-detection">
<link rel="shortcut icon"
	href="https://img.adidas.com.cn/images/favicon.ico" type="image/x-icon">
<title>订单查询</title>
<script async="" src="https://img.adidas.com.cn/js/ga/analytics.js"></script>
<script type="text/javascript" async=""
	src=" https://js.ptengine.cn/7f28852c.js"></script>
<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-WJXN4P9"></script>
<script type="text/javascript">
	var base = "";
	var staticbase = "https://img.adidas.com.cn";
	var imgbase = "https://img.adidas.com.cn/resources/";
	var defaultImg = "";
	var profile = "";
	var environmentbase = "pro";
	var captchaId_register = "8af74c359ab74053aa465a6f7bb9ccb8";
</script>
<link rel="stylesheet" type="text/css" media="screen"
	href="https://img.adidas.com.cn/??libs/spice/css/spice.css,libs/spice/css/spice.icon.css?20190527185926134">
<!--[if lt IE 9]>
		<link rel="stylesheet" href="https://img.adidas.com.cn/libs/spice/css/spice.ie8.css" />
	<![endif]-->
<!--[if lte IE 7]>
		<link rel="stylesheet" href="https://img.adidas.com.cn/libs/spice/css/spice.ie7.css" />
	<![endif]-->
<link rel="stylesheet" type="text/css" media="screen"
	href="https://img.adidas.com.cn/??libs/spice/js/cloudzoom/css/cloudzoom.css,libs/spice/js/tinyscrollbar/css/tinyscrollbar.css,libs/spice/js/datetime/css/datetime.css,libs/slider/jquery-ui.css,libs/swiper/css/swiper.min.css,css/common.css?20190527185926134">
<link rel="apple-touch-icon"
	href="https://img.adidas.com.cn/images/apple-touch-icon.png">
<link rel="shortcut icon" type="image/png"
	href="https://img.adidas.com.cn/images/apple-touch-icon.png">
<script type="text/javascript">
	(function() {
		var ua = navigator.userAgent;
		if (!ua.match(/(iPhone|iPad|iPod|Macintosh)/))
			return;
		Array.prototype._reverse = Array.prototype.reverse;
		Array.prototype.reverse = function reverse() {
			this.length = this.length;
			return Array.prototype._reverse.call(this);
		}
		var nonenum = {
			enumerable : false
		};
		Object.defineProperties(Array.prototype, {
			_reverse : nonenum,
			reverse : nonenum,
		});
	})();
</script>
<script type="text/javascript"
	src="https://img.adidas.com.cn/??libs/jquery/jquery.js,libs/iscroll/iscroll.js,libs/handlebars/handlebars-v4.0.5.js,libs/spice/js/jquery.spice.js?20190527185926134"></script>
<script type="text/javascript"
	src="https://img.adidas.com.cn/??libs/spice/js/jquery.spice.tools.js,libs/spice/js/checkBox/jquery.checkBox.js,libs/spice/js/lazyLoad/jquery.lazyLoad.js,libs/velocity/velocity.js,libs/spice/js/kvScroll/jquery.kvScroll.js,libs/spice/js/dropdown/jquery.dropdown.js,libs/spice/js/cloudzoom/jquery.cloudzoom.js,libs/spice/js/tinyscrollbar/jquery.tinyscrollbar.js,libs/spice/js/placeholder/jquery.placeholder.js,libs/spice/js/calculateNum/jquery.calculateNum.js,libs/spice/js/citySelect/json/area.zh.js,libs/spice/js/citySelect/jquery.citySelect.js,libs/spice/js/ymdSelect/jquery.ymdSelect.js,libs/spice/js/starRank/jquery.starRank.js,libs/spice/js/messageLimit/jquery.messageLimit.js,libs/slider/jquery-ui.js,libs/swiper/js/swiper.min.js,js/loxia2/jquery.loxiacore-2.js,js/common/common.js,js/common/commonUtil.js,js/common/cookie.js,js/jquery/jquery.cookie.js,js/common/handlerbars-common.js,js/common/header.js,js/common/jweixin-1.3.2.js,js/common/footer.js,js/ptmind/ptmind.js?20190527185926134"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="https://img.adidas.com.cn/??libs/respond/respond.min.js,libs/html5shiv/html5shiv.min.js?20190527185926134"></script>
<![endif]-->
<!--[if lte IE 7]>
		<script type="text/javascript" src="https://img.adidas.com.cn/libs/spice/js/jquery.spice.ie7.js"></script>
	<![endif]-->
<script language="javascript"
	src="https://care60.live800.com/live800/chatClient/monitor.js?companyID=80001164&amp;configID=637&amp;codeType=custom"
	charset="UTF-8"></script>
<script type="text/javascript">
	(function($) {
		loxia.init({
			debug : false,
			region : "zh_CN"
		});
		$.spice.init({
			throttleTime : 100,
			debounceTime : 300
		});
		var res_miniprogram = cart_num.utils.getCookie("miniapp_cookies");
		if (res_miniprogram == null || res_miniprogram == "false") {
			wx.miniProgram.getEnv(function(res) {
				var res_miniprogram = res.miniprogram;
				cart_num.utils.setCookie("miniapp_cookies", res_miniprogram,
						24 * 60 * 60);
			})
		}
	})(jQuery);
</script>
<script type="text/javascript">
	window.dataLayer = window.dataLayer || [];
	dataLayer.push({
		'userId' : ''
	});
</script>
<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start' : new Date().getTime(),
			event : 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
				+ l
				: '';
		j.async = true;
		j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'dataLayer', 'GTM-WJXN4P9');
</script>
<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script',
			'https://img.adidas.com.cn/js/ga/analytics.js', 'ga');
	ga('create', 'UA-27771328-2', 'adidas.com.cn');
	ga('send', 'pageview');
</script>
</head>

<body class="events-spice-standard style-spice-standard">
<jsp:useBean id="orderDao" class="store.dao.jdbc.OrderInforJDBC" scope="session"></jsp:useBean>

	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WJXN4P9"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<div id="wrapper" class="">
		<script type="text/javascript"
			src="https://img.adidas.com.cn/??js/common/mail-subscription.js,js/common/personalize-utils.js,js/message/message_login_zh_CN.js,js/common/personInfo-common.js,js/shoppingcart/mini-shopping-cart.js?20190527185926134"></script>
		<div class="header-fixed">
			<div class="top-nav none-sm">
				<div class="header-top float-clearfix">
					<div class="header-top-container">
						<ul>
							<li class=""><a href="/orderGuest?locale=zh_CN">订单追踪<i
									class="icon-new icon-order-tracking"></i></a></li>
							<li><a href="/help/helpUs?locale=zh_CN">帮助中心<i
									class="icon-new icon-help-center"></i></a></li>
							<li class="service"><a href="javascript:void(0);"
								onclick="doSomething();"> 在线客服<i
									class="icon icon-service icon-new "></i>
							</a></li>
							<li class="login-box" id="loginBoxDiv"><a
								href="/member/login?locale=zh_CN"> 登录 <i
									class="icon-new icon-login"></i>
							</a></li>
							<li class="logged-box"><a href="/myAccount?locale=zh_CN">
									<span id="showNickName"></span><i class="icon-new icon-login"></i>
									<input id="dataLayerUserId" type="hidden" value="">
							</a>
								
						</ul>
					</div>
				</div>
				<div class="mail-subscription-content">
					<div>
						<div class="mail-subscription-main">
							<div class="callout-bars float-clearfix">
								<div class="callout-bar">
									<i class="icon icon-callout-1"></i> <span>订阅邮件以了解最新动态</span>
								</div>
								<div class="callout-bar">
									<i class="icon icon-callout-3"></i> <span>独家的优惠和推送</span>
								</div>
							</div>
							<div class="mail-subscription-form float-clearfix">
								<div class="form-group">
									<label class="control-label">电子邮箱<span class="star-red">*</span></label>
									<div class="form-input">
										<input placeholder="" type="text" id="mailSubscription"
											name="loginEmail">
										<div class="msg-block">
											<i class="icon msg-icon"></i> <span>邮箱格式错误，请重新输入</span>
										</div>
										<div class="form-input-text">仅供第一次注册</div>
									</div>
								</div>
								<div class="form-group form-group-choice">
									<label class="control-label">性别<span class="star-red">*</span></label>
									<div class="form-choice-btn float-clearfix gender" id="gender">
										<div class="form-choice-btn-radio is-active">
											<i class="icon icon-radio"></i><span>男子</span>
										</div>
										<div class="form-choice-btn-radio">
											<i class="icon icon-radio"></i><span>女子</span>
										</div>
										<div class="form-choice-btn-checked">
											<i class="icon icon-checked"></i><span>我已满18岁<span
												class="star-red">*</span></span> <br>
											<span id="Age"
												style="line-height:12px;color:#FF6D6D;font-size:12px;"
												hidden="none">请选择年龄</span>
										</div>
									</div>
								</div>
								<div class="form-group form-group-btn">
									<a
										class="btn btn-blue gl-cta gl-cta--primary gl-cta--center color-bright-blue"
										id="subscription">订阅<span
										class="gl-icon icon-arrow-right-long gl-cta__icon icon--size-l"></span></a>
								</div>
							</div>
							<div class="mail-subscription-statement">
								<span>注册阿迪达斯邮箱，特色的独家推送，最新的商品信息，最新活动的新闻以及其他资讯。详情参见我们的<a
									href="/private_policy?locale=zh_CN">隐私声明</a>。
								</span>
							</div>
						</div>
						<div class="mail-subscription-success-main">
							<h2>
								<i class="icon icon-success"></i>邮件订阅成功
							</h2>
							<p>您将收到订阅成功的确认邮件。</p>
						</div>
					</div>
				</div>
			</div>
			<header class="header">
			<div class="header-container float-clearfix">
				<nav class="nav-bar">
				<div class="header-left">
					<a class="m-menu events-m-menu none block-sm"> <span></span> <span></span>
						<span></span>
					</a>
					<h1 class="navbar-header inline-block">
						<a href="/index?locale=zh_CN"> <img
							src="https://img.adidas.com.cn/images/logo-new.png" title=""
							class="logo none-sm" alt=""> <img
							src="https://img.adidas.com.cn/images/logo.png" title=""
							class="logo none block-sm" alt="">
						</a>
					</h1>
					<div class="mob-menu-top events-menu-top none block-sm">
						<div class="menu-top-content">
							<i class="icon icon-login"></i>
							<div class="menu-top-login">
								<a href="/member/login?locale=zh_CN">登录 </a>
							</div>
							<div class="menu-top-my" style="display: none;">
								<a class="menu-top-my-name"></a> <span>|</span> <a
									href="/myAccount?locale=zh_CN">我的账户</a>
							</div>
						</div>
						<a class="m-menu events-m-menu"> <span></span> <span></span> <span></span>
						</a>
					</div>
					<div class="navbar-menu events-header-scroll inline-block">
						<div class="scroller-wrap">
							<div class="menu-box menu-box-pc none-sm">
								<div class="menu-box-bg"></div>
								<div class="menu-box-bg"></div>
								<ul class="nav nav-pills events-menus-nav float-clearfix">
									<li class="Extention"><a href="/men"> 男子<span
											class="menu-icon-box e-menu-icon-box"><i
												class="icon icon-arrow-down icon-a-font"></i></span>
									</a>
									</li>
									<li class="Extention"><a href="/women"> 女子<span
											class="menu-icon-box e-menu-icon-box"><i
												class="icon icon-arrow-down icon-a-font"></i></span>
									</a>
									</li>
									<li class=""><a href="/kids"> 儿童<span
											class="menu-icon-box e-menu-icon-box"><i
												class="icon icon-arrow-down icon-a-font"></i></span>
									</a>
										<div class="sub-menu" style="">
											<ul class="sub-menu-ul float-clearfix">

												<li class=""><a class="sub-menu-title"
													href="javascript:;">精选推荐<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu">
														<li class=""><a class="" href="/kids_newarrivals">
																最新上市</a></li>
														<li class="iterm-line"><span>&nbsp;</span></li>
														<li class=""><a class=""
															href="/campaign/kids_childrensday"> 儿童节特辑</a></li>
														<li class=""><a class="" href="/kids_suit"> 套装系列</a>
														</li>
														<li class=""><a class=""
															href="/kids_family?sp=family" target="_blank"> 亲子系列</a></li>
														<li class=""><a class="" href="/kids_climacool">
																CLIMACOOL</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/kids_8_14years">大童（8-14岁）<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu">
														<li class="none block-sm"><a class=""
															href="/kids_8_14years"> 全部大童（8-14岁）产品</a></li>
														<li class="Extention"><a class=""
															href="/boys_shoes_8_14years"> 男大童：鞋类</a></li>
														<li class=""><a class=""
															href="/girls_shoes_8_14years"> 女大童：鞋类</a></li>
														<li class="iterm-line"><span>&nbsp;</span></li>
														<li class="Extention"><a class=""
															href="/boys_clothing_8_14years"> 男大童：服装</a></li>
														<li class=""><a class=""
															href="/girls_clothing_8_14years"> 女大童：服装</a></li>
														<li class="iterm-line"><span>&nbsp;</span></li>
														<li class="Extention"><a class=""
															href="/kids_accessories_8_14years"> 箱包附配件</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/kids_4_8years">小童（4-8岁）<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu">
														<li class="none block-sm"><a class=""
															href="/kids_4_8years"> 全部小童（4-8岁）产品</a></li>
														<li class="Extention"><a class=""
															href="/boys_shoes_4_8years"> 男小童：鞋类</a></li>
														<li class=""><a class="" href="/girls_shoes_4_8years">
																女小童：鞋类</a></li>
														<li class="iterm-line"><span>&nbsp;</span></li>
														<li class="Extention"><a class=""
															href="/boys_clothing_4_8years"> 男小童：服装</a></li>
														<li class=""><a class=""
															href="/girls_clothing_4_8years"> 女小童：服装</a></li>
														<li class="iterm-line"><span>&nbsp;</span></li>
														<li class="Extention"><a class=""
															href="/kids_accessories_4_8years"> 箱包附配件</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/kids_0_4years">婴幼儿（0-4岁）<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu">
														<li class="none block-sm"><a class=""
															href="/kids_0_4years"> 全部婴幼儿（0-4岁）产品</a></li>
														<li class="Extention"><a class=""
															href="/boys_shoes_0_4years"> 男婴童：鞋类</a></li>
														<li class=""><a class="" href="/girls_shoes_0_4years">
																女婴童：鞋类</a></li>
														<li class="iterm-line"><span>&nbsp;</span></li>
														<li class="Extention"><a class=""
															href="/boys_clothing_0_4years"> 男婴童：服装</a></li>
														<li class=""><a class=""
															href="/girls_clothing_0_4years"> 女婴童：服装</a></li>
														<li class="iterm-line"><span>&nbsp;</span></li>
														<li class="Extention"><a class=""
															href="/kids_accessories_0_4years"> 箱包附配件</a></li>
													</ul></li>
												<li class=" item-line-bottom"><a class="sub-menu-title"
													href="/kids_personalization"><i
														class="icon icon-personalise"></i> 个性印制产品<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span> </a>
													<ul class="three-menu">
														<li
															class="https://img.adidas.com.cn/resources/2018/3/15/15211227486009014.png"><a
															href="/kids_personalization"> <img
																src="https://img.adidas.com.cn/resources/2018/3/15/15211227486009014.png"><i
																class="icon https://img.adidas.com.cn/resources/2018/3/15/15211227486009014.png"></i>
														</a></li>
														<li class=""><a class=""
															href="/kids_shoes_personalization"> 个性印制儿童鞋</a></li>
														<li class=""><a class=""
															href="/kids_clothing_personalization"> 个性印制儿童服饰</a></li>
													</ul></li>
												<li class="menu-more"><a class="" href="/kids_all"><span>全部儿童产品</span></a>
													<a class="" href="/kids_8_14years"><span>全部大童（8-14岁）产品</span></a><a
													class="" href="/kids_4_8years"><span>全部小童（4-8岁）产品</span></a><a
													class="" href="/kids_0_4years"><span>全部婴幼儿（0-4岁）产品</span></a><a
													class="" href="/kids_personalization"><span>全部儿童个性印制产品</span></a></li>




											</ul>
										</div></li>
									<li class="nav-menu-delimiter"><span></span></li>
									<li class="nav-menu-sports"><a href="javascript:;"> 运动<span
											class="menu-icon-box e-menu-icon-box"><i
												class="icon icon-arrow-down icon-a-font"></i></span>
									</a>
										<div class="sub-menu" style="">
											<ul class="sub-menu-ul float-clearfix">
												<li class=""><a class="sub-menu-title" href="/running"><i
														class="icon icon-black-logo"></i> 跑步<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span> </a>
													<ul class="three-menu">
														<li
															class="https://img.adidas.com.cn/resources/2019kvbanner/Jan/running_170x80.jpg"><a
															href="/running"> <img
																src="https://img.adidas.com.cn/resources/2019kvbanner/Jan/running_170x80.jpg"><i
																class="icon https://img.adidas.com.cn/resources/2019kvbanner/Jan/running_170x80.jpg"></i>
														</a></li>
														<li class="none block-sm"><a class=""
															href="/running_all"> 全部跑步产品</a></li>
														<li class="Extention"><a class=""
															href="/running_shoes_segment"> 跑步鞋</a></li>
														<li class="Extention"><a class=""
															href="/running_clothing"> 跑步服饰</a></li>
														<li class=""><a class="" href="/running_accessories">
																运动装备</a></li>
														<li class="iterm-line"><span>&nbsp;</span></li>
														<li class="Extention"><a class=""
															href="/running_ultraboost"> UltraBOOST</a></li>
														<li class="Extention"><a class=""
															href="/running_pureboost"> PureBOOST</a></li>
														<li class="Extention"><a class=""
															href="/running_alphabounce"> Alpha Bounce</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/training_all"><i class="icon icon-black-logo"></i>
														训练<span class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span> </a>
													<ul class="three-menu">
														<li
															class="https://img.adidas.com.cn/resources/2019kvbanner/feb/wuji-170-80.jpg"><a
															href="/training_all"> <img
																src="https://img.adidas.com.cn/resources/2019kvbanner/feb/wuji-170-80.jpg"><i
																class="icon https://img.adidas.com.cn/resources/2019kvbanner/feb/wuji-170-80.jpg"></i>
														</a></li>
														<li class="none block-sm"><a class=""
															href="/training"> 全部训练产品</a></li>
														<li class="Extention"><a class=""
															href="/training_shoes"> 训练鞋</a></li>
														<li class="Extention"><a class=""
															href="/training_clothing"> 训练服饰</a></li>
														<li class=""><a class="" href="/training_accessories">
																运动装备</a></li>
														<li class="iterm-line"><span>&nbsp;</span></li>
														<li class="Extention"><a class=""
															href="/training_alphaskin_all"> Alphaskin</a></li>
														<li class=""><a class=""
															href="/training_bra&amp;tights?sp=Bras-Tights">
																运动胸衣Bra&amp;紧身裤</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title" href="/football"><i
														class="icon icon-black-logo"></i> 足球<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span> </a>
													<ul class="three-menu">
														<li
															class="https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-football-may.jpg"><a
															href="/football"> <img
																src="https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-football-may.jpg"><i
																class="icon https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-football-may.jpg"></i>
														</a></li>
														<li class="none block-sm"><a class=""
															href="/football_all"> 全部足球产品</a></li>
														<li class="Extention"><a class=""
															href="/football_shoes_segment"> 足球鞋</a></li>
														<li class="Extention"><a class=""
															href="/football_clothing"> 足球服饰</a></li>
														<li class=""><a class="" href="/football_accessories">
																运动装备</a></li>
														<li class="iterm-line"><span>&nbsp;</span></li>
														<li class=""><a class="" href="/football_predator">
																Predator</a></li>
														<li class="Extention"><a class="" href="/football_x">
																X</a></li>
														<li class="Extention"><a class=""
															href="/football_nemeziz"> NEMEZIZ</a></li>
														<li class=""><a class="" href="/football_copa">
																COPA</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/basketball"><i class="icon icon-black-logo"></i>
														篮球<span class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span> </a>
													<ul class="three-menu">
														<li
															class="https://img.adidas.com.cn/resources/2019kvbanner/mar/geekup-170-80.jpg"><a
															href="/basketball"> <img
																src="https://img.adidas.com.cn/resources/2019kvbanner/mar/geekup-170-80.jpg"><i
																class="icon https://img.adidas.com.cn/resources/2019kvbanner/mar/geekup-170-80.jpg"></i>
														</a></li>
														<li class="none block-sm"><a class=""
															href="/basketball_all"> 全部篮球产品</a></li>
														<li class="Extention"><a class=""
															href="/basketball_shoes"> 篮球鞋</a></li>
														<li class=""><a class="" href="/basketball_clothing">
																篮球服饰</a></li>
														<li class="iterm-line"><span>&nbsp;</span></li>
														<li class="Extention"><a class=""
															href="/basketball_jamesharden"> James Harden</a></li>
														<li class="Extention"><a class=""
															href="/basketball_derrickrose"> Derrick Rose</a></li>
														<li class="Extention"><a class=""
															href="/basketball_damianlillard"> Damian Lillard</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title" href="/terrex"><i
														class="icon icon-black-logo"></i> 户外<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span> </a>
													<ul class="three-menu">
														<li
															class="https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-terrex-may.jpg"><a
															href="/terrex"> <img
																src="https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-terrex-may.jpg"><i
																class="icon https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-terrex-may.jpg"></i>
														</a></li>
														<li class="none block-sm"><a class=""
															href="/outdoor_all"> 全部户外产品</a></li>
														<li class="Extention"><a class=""
															href="/outdoor_shoes"> 户外鞋</a></li>
														<li class="Extention"><a class=""
															href="/outdoor_clothing"> 户外服饰</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title link-style-no"
													href="javascript:;">其他运动<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu">
														<li class="Extention"><a class="" href="/tennis">
																网球</a></li>
														<li class="Extention"><a class="" href="/golf_all">
																高尔夫</a></li>
														<li class="Extention"><a class=""
															href="/swimming_all"> 游泳</a></li>
														<li class=""><a class="" href="/volleyball"> 排球</a></li>
													</ul></li>
												<li class="menu-more"><a class="" href="/running_all"><span>全部跑步产品</span></a>
													<a class="" href="/training_all"><span>全部训练产品</span></a><a
													class="" href="/football_all"><span>全部足球产品</span></a><a
													class="" href="/basketball_all"><span>全部篮球产品</span></a><a
													class="" href="/outdoor_all"><span>全部户外产品</span></a></li>




												<li class="more-btn"><a class="sub-menu-title"
													href="/more_sports">更多运动<i class="icon icon-more-down"></i><span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down"></i></span></a></li>
											</ul>
										</div></li>
									<li class="nav-menu-brand nav-menu-sports font-weight"><a
										href="javascript:;"> 品牌<span
											class="menu-icon-box e-menu-icon-box"><i
												class="icon icon-arrow-down icon-a-font"></i></span>
									</a>
										<div class="sub-menu" style="">
											<ul class="sub-menu-ul float-clearfix">
												<li class=""><a class="sub-menu-title"
													href="/originals"><span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span> <img
														src="https://img.adidas.com.cn/resources/2017/7/12/14998372019973088.png">
												</a>
													<ul class="three-menu">
														<li
															class="https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-summer.jpg"><a
															href="/originals"> <img
																src="https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-summer.jpg"><i
																class="icon https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-summer.jpg"></i>
														</a></li>
														<li class="none block-sm"><a class=""
															href="/originals_all"> 全部adidas Originals系列</a></li>
														<li class="Extention"><a class=""
															href="/originals_shoes"> 鞋类</a></li>
														<li class="Extention"><a class=""
															href="/originals_clothing"> 服装</a></li>
														<li class="Extention"><a class=""
															href="/originals_accessories"> 附配件</a></li>
														<li class=""><a class=""
															href="/originals_newarrivals"> 新品上市</a></li>
														<li class="iterm-line"><span>&nbsp;</span></li>
														<li class=""><a class=""
															href="/originals_nitejogger?sp=Originals-Nite%20Jogger">
																NITE JOGGER</a></li>
														<li class=""><a class=""
															href="/originals_continental"> CONTINENTAL</a></li>
														<li class=""><a class="" href="/originals_superstar">
																SUPERSTAR</a></li>
														<li class=""><a class="" href="/originals_stan_smith">
																STAN SMITH</a></li>
														<li class=""><a class="" href="/originals_nmd">
																NMD</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/athletics"><span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span> <img
														src="https://img.adidas.com.cn/resources/2017/7/12/1499837240607439.png">
												</a>
													<ul class="three-menu">
														<li
															class="https://img.adidas.com.cn/resources/2019kvbanner/feb/WND-170-80.jpg"><a
															href="/athletics"> <img
																src="https://img.adidas.com.cn/resources/2019kvbanner/feb/WND-170-80.jpg"><i
																class="icon https://img.adidas.com.cn/resources/2019kvbanner/feb/WND-170-80.jpg"></i>
														</a></li>
														<li class="none block-sm"><a class=""
															href="/athletics_all"> 全部adidas athletics系列</a></li>
														<li class=""><a class="" href="/men_athletics">
																男子服饰</a></li>
														<li class=""><a class="" href="/women_athletics">
																女子服饰</a></li>
														<li class=""><a class=""
															href="/athletics_newarrivals"> 新品上市</a></li>
														<li class="iterm-line"><span>&nbsp;</span></li>
														<li class="Extention"><a class=""
															href="/athletics_zne"> Z.N.E</a></li>
														<li class="Extention"><a class=""
															href="/athletics_wuji"> 武极</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/adidasneo"><span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span> <img
														src="https://img.adidas.com.cn/resources/2017/7/12/14998372927809792.png">
												</a>
													<ul class="three-menu">
														<li
															class="https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-neo-may-dailing.jpg"><a
															href="/adidasneo"> <img
																src="https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-neo-may-dailing.jpg"><i
																class="icon https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-neo-may-dailing.jpg"></i>
														</a></li>
														<li class="none block-sm"><a class=""
															href="/adidasneo_all"> 全部adidas neo系列</a></li>
														<li class="Extention"><a class=""
															href="/adidasneo_shoes"> 鞋类</a></li>
														<li class="Extention"><a class=""
															href="/adidasneo_clothing"> 服装</a></li>
														<li class="Extention"><a class=""
															href="/adidasneo_accessories"> 附配件</a></li>
														<li class=""><a class=""
															href="/adidasneo_newarrivals"> 新品上市</a></li>
														<li class="iterm-line"><span>&nbsp;</span></li>
														<li class=""><a class=""
															href="/campaign/adidasneo_may"> 生来好动</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title" href="/terrex"><span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span> <img
														src="https://img.adidas.com.cn/resources/2019kvbanner/feb/adidasTerrexsmall172x30.jpg">
												</a>
													<ul class="three-menu">
														<li
															class="https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-terrex-may.jpg"><a
															href="/terrex"> <img
																src="https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-terrex-may.jpg"><i
																class="icon https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-terrex-may.jpg"></i>
														</a></li>
														<li class=""><a class="" href="/terrex_shoes"> 鞋类</a>
														</li>
														<li class=""><a class="" href="/terrex_clothing">
																服装</a></li>
														<li class=""><a class="" href="/terrex_newarrivals">
																新品上市</a></li>
														<li class="iterm-line"><span>&nbsp;</span></li>
														<li class=""><a class=""
															href="/originals_whitemountaineering" target="_blank">
																TERREX x WHITE MOUNTAINEERING</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/adidas_by_stella_mccartney"><span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span> <img
														src="https://img.adidas.com.cn/resources/2018/7/1/SM.png">
												</a>
													<ul class="three-menu">
														<li
															class="https://img.adidas.com.cn/resources/2019kvbanner/Apr/asmc-170x80.jpg"><a
															href="/adidas_by_stella_mccartney"> <img
																src="https://img.adidas.com.cn/resources/2019kvbanner/Apr/asmc-170x80.jpg"><i
																class="icon https://img.adidas.com.cn/resources/2019kvbanner/Apr/asmc-170x80.jpg"></i>
														</a></li>
														<li class="none block-sm"><a class=""
															href="/adidas_bystellamccartney_all"> 全部adidas by
																Stella McCartney系列</a></li>
														<li class="Extention"><a class=""
															href="/adidas_bystellamccartney_shoes"> 鞋类</a></li>
														<li class="Extention"><a class=""
															href="/adidas_bystellamccartney_clothing"> 服饰</a></li>
														<li class="Extention"><a class=""
															href="/adidas_bystellamccartney_accessories"> 附配件</a></li>
														<li class=""><a class=""
															href="/adidas_bystellamccartney_newarrivals"> 新品上市</a></li>
														<li class="iterm-line"><span>&nbsp;</span></li>
													</ul></li>
												<li class="sub-menu-ul-new"><a class="sub-menu-title"
													href="/skateboarding"><span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span> <img
														src="https://img.adidas.com.cn/resources/2018kvbanner/skateheaderline.jpg">
												</a>
													<ul class="three-menu">
														<li
															class="https://img.adidas.com.cn/resources/2018kvbanner/170x80-skateboarding.jpg"><a
															href="/skateboarding"> <img
																src="https://img.adidas.com.cn/resources/2018kvbanner/170x80-skateboarding.jpg"><i
																class="icon https://img.adidas.com.cn/resources/2018kvbanner/170x80-skateboarding.jpg"></i>
														</a></li>
														<li class="none block-sm"><a class=""
															href="/skateboarding_all"> 全部skateboarding</a></li>
														<li class=""><a class=""
															href="/skateboarding_shoes?sp=Skateboarding"> 鞋类</a></li>
														<li class=""><a class=""
															href="/skateboarding_clothing?sp=Skateboarding"> 服饰</a></li>
														<li class=""><a class=""
															href="/skateboarding_newarrivals?sp=Skateboarding">
																新品上市</a></li>
														<li class="iterm-line"><span>&nbsp;</span></li>
													</ul></li>
												<li class="menu-more"><a class="" href="/originals_all"><span>全部adidas
															Originals系列</span></a> <a class="" href="/athletics_all"><span>全部adidas
															athletics系列</span></a><a class="" href="/adidasneo_all"><span>全部adidas
															neo系列</span></a><a class="" href="/terrex_all"><span>全部adidas
															terrex系列</span></a><a class="" href="/adidas_bystellamccartney_all"><span>全部adidas
															by Stella McCartney系列</span></a><a class=""
													href="/skateboarding_all?sp=Skateboarding"><span>全部skateboarding系列</span></a></li>





											</ul>
										</div></li>
									<li class=""><a href="/campaign/keyfranchise"> 精选系列</a></li>
								</ul>
								<ul class="mob-nav-iterm">
									<li><a href="/member/login?locale=zh_CN" id=""> <i
											class="icon icon-login"></i><span id="">登录 </span>
									</a></li>
									<li><a> <i class="icon icon-service icon-new"></i>400-999-5999
									</a></li>
									<li><a href="javascript:void(0);" onclick="doSomething();">
											<i class="icon icon-online-service"></i>在线客服
									</a></li>
									<li><a href="/help/helpUs?locale=zh_CN">帮助中心</a></li>
									<li class="mob-language" style="display:none"><a
										class="changeLocaleZhM is-active" href="javascript:void(0)">中文</a>
										<span></span> <a class="changeLocaleEnM "
										href="javascript:void(0)">English</a></li>
								</ul>
							</div>
							<div class="menu-box menu-box-mobile block-sm none">
								<ul class="nav nav-pills events-menus-nav float-clearfix">
									<li class="Extention"><a href="/men"> 男子<span
											class="menu-icon-box e-menu-icon-box"><i
												class="icon icon-arrow-down icon-a-font"></i></span>
									</a>
										<div class="sub-menu">
											<ul class="sub-menu-ul float-clearfix">
												<li class=""><a class="sub-menu-title" href="/men_all">
														男子全部产品</a></li>

												<li class=""><a class="sub-menu-title"
													href="/men_shoes"> 鞋类<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li class="none block-sm"><a class=""
															href="/men_shoes"> 全部男子鞋</a> <a class=""
															href="/men_originals_shoes"> Originals</a></li>
														<li class="Extention"><a class=""
															href="/men_running_shoes_segment"> 跑步</a> <a class=""
															href="/men_adidasneo_shoes"> adidas neo</a></li>
														<li class=""><a class="" href="/men_basketball_shoes">
																篮球</a> <a class="" href="/men_outdoor_shoes"> 户外</a></li>
														<li class="Extention"><a class=""
															href="/men_football_shoes_segment"> 足球</a> <a class=""
															href="/men_tennis_shoes"> 网球</a></li>
														<li class="Extention"><a class=""
															href="/men_slippers?sp=Slippers"> 拖鞋</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/men_clothing"> 服饰类<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li class="none block-sm"><a class=""
															href="/men_clothing"> 全部男子服饰</a> <a class=""
															href="/men_sweats_clothing"> 运动卫衣</a></li>
														<li class="Extention"><a class=""
															href="/men_jacketsandtracktops_clothing"> 茄克/外套</a> <a
															class="" href="/men_topsandTshirts_clothing"> 上衣/T恤</a></li>
														<li class="Extention"><a class=""
															href="/men_bottoms_clothing"> 运动下装</a> <a class=""
															href="/men_tights_clothing"> 紧身裤</a></li>
														<li class="Extention"><a class=""
															href="/men_swimwear_clothing"> 泳裤</a> <a class=""
															href="/men_jerseys_clothing"> 比赛服</a></li>
														<li class="Extention"><a class=""
															href="/men_down_jacket_clothing"> 棉服/羽绒服</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/men_accessories"> 附配件类<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li class="none block-sm"><a class=""
															href="/men_accessories"> 全部男子配件</a> <a class=""
															href="/men_bags"> 包</a></li>
														<li class="Extention"><a class="" href="/men_socks">
																袜子</a> <a class="" href="/men_hatsandglovesandscarves">
																帽子/手套/围巾</a></li>
														<li class=""><a class="" href="/men_balls"> 足球/篮球</a>
															<a class="" href="/men_sports_accessories"> 运动装备</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/men_personalization"> 个性印制产品<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li
															class="https://img.adidas.com.cn/resources/2018/3/15/15211227486009014.png">
															<a href="/men_personalization"> <img
																src="https://img.adidas.com.cn/resources/2018/3/15/15211227486009014.png">
																<i
																class="icon https://img.adidas.com.cn/resources/2018/3/15/15211227486009014.png"></i>
														</a>
														</li>
														<li class="Extention"><a class=""
															href="/men_football_personalization"> 足球个性印制产品</a> <a
															class="" href="/men_originals_personalization">
																Originals 个性印制产品</a></li>
														<li class=""><a class=""
															href="/men_adidasneo_personalization">
																adidasneo个性印制产品</a> <a class=""
															href="/football_Personalized"> 个性化印制球衣</a></li>
													</ul></li>
												<li class=" menu-more"><a class="" href="/men_all">
														<span>全部男子产品</span>
												</a> <a class="" href="/men_shoes"> <span>全部男子鞋</span></a><a
													class="" href="/men_clothing"> <span>全部男子服饰</span></a><a
													class="" href="/men_accessories"> <span>全部男子配件</span></a><a
													class="" href="/men_personalization"> <span>全部男子个性印制产品</span></a></li>




												<li class="latest-activities is-open"><a
													class="sub-menu-title" href="/campaign/keyfranchise">
														精选推荐<span class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu-new three-menu float-clearfix"
														style="display: block;">
														<li class="Extention"><a class=""
															href="/men_newarrivals"> 最新上市</a> <a class=""
															href="/item-subscribe"> 新品发售日历<span
																class="mod-newlabel mod-newlabel-three">NEW</span>
														</a></li>
														<li class="Extention"><a class=""
															href="/men_ss_statement"> 限量发售</a> <a class=""
															href="/men_top_sellers"> 本周热卖</a></li>
														<li class=""><a class=""
															href="/men_originals_summer?sp=Originals-SUMMER">
																Originals|SUMMER</a> <a class=""
															href="/men_originals_nitejogger?sp=Originals-Nite Jogger">
																Originals|NITE JOGGER</a></li>
														<li class=""><a class=""
															href="/men_adidasneo_liverestless"> adidas neo|生来好动</a></li>
													</ul></li>
											</ul>
										</div></li>
									<li class="Extention"><a href="/women"> 女子<span
											class="menu-icon-box e-menu-icon-box"><i
												class="icon icon-arrow-down icon-a-font"></i></span>
									</a>
										<div class="sub-menu">
											<ul class="sub-menu-ul float-clearfix">
												<li class=""><a class="sub-menu-title"
													href="/women_all" target="_blank"> 女子全部产品</a></li>

												<li class=""><a class="sub-menu-title"
													href="/women_shoes"> 鞋类<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li class="none block-sm"><a class=""
															href="/women_shoes"> 全部女子鞋</a> <a class=""
															href="/women_originals_shoes"> Originals</a></li>
														<li class="Extention"><a class=""
															href="/women_adidasneo_shoes"> adidas neo</a> <a class=""
															href="/women_running_shoes_segment"> 跑步</a></li>
														<li class="Extention"><a class=""
															href="/women_training_shoes"> 健身/训练</a> <a class=""
															href="/women_slippers?sp=Slippers"> 拖鞋</a></li>
														<li class="Extention"><a class=""
															href="/women_tennis_shoes"> 网球</a> <a class=""
															href="/women_outdoor_shoes"> 户外</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/women_clothing"> 服饰类<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li class="none block-sm"><a class=""
															href="/women_clothing"> 全部女子服饰</a> <a class=""
															href="/women_sweats_clothing"> 运动卫衣</a></li>
														<li class="Extention"><a class=""
															href="/women_jacketsandtracktops_clothing"> 茄克/外套</a> <a
															class="" href="/women_bras_clothing_segment"> 运动胸衣Bra</a>
														</li>
														<li class="Extention"><a class=""
															href="/women_topsandTshirts_clothing"> 上衣/T恤</a> <a
															class="" href="/women_bottoms_clothing"> 运动下装</a></li>
														<li class="Extention"><a class=""
															href="/women_tights_clothing"> 紧身裤</a> <a class=""
															href="/women_dresses_clothing"> 短裙/连衣裙</a></li>
														<li class="Extention"><a class=""
															href="/women_down_jacket_clothing"> 棉服/羽绒服</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/women_accessories"> 附配件类<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li class="none block-sm"><a class=""
															href="/women_accessories"> 全部女子配件</a> <a class=""
															href="/women_bags"> 包</a></li>
														<li class="Extention"><a class="" href="/women_socks">
																袜子</a> <a class="" href="/women_hatsandglovesandscarves">
																帽子/手套/围巾</a></li>
														<li class="Extention"><a class="" href="/women_balls">
																球类</a> <a class="" href="/women_sports_accessories">
																运动装备</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/women_personalization"> 个性印制产品<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li
															class="https://img.adidas.com.cn/resources/2018/3/15/15211227486009014.png">
															<a href="/women_personalization"> <img
																src="https://img.adidas.com.cn/resources/2018/3/15/15211227486009014.png">
																<i
																class="icon https://img.adidas.com.cn/resources/2018/3/15/15211227486009014.png"></i>
														</a>
														</li>
														<li class="Extention"><a class=""
															href="/women_originals_personalization"> Originals
																个性印制产品</a> <a class=""
															href="/women_adidasneo_personalization">
																adidasneo个性印制产品</a></li>
													</ul></li>
												<li class=" menu-more"><a class="" href="/women_all">
														<span>全部女子产品</span>
												</a> <a class="" href="/women_shoes"> <span>全部女子鞋</span></a><a
													class="" href="/women_clothing"> <span>全部女子服饰</span></a><a
													class="" href="/women_accessories"> <span>全部女子配件</span></a><a
													class="" href="/women_personalization"> <span>全部女子个性印制产品</span></a></li>




												<li class="latest-activities is-open"><a
													class="sub-menu-title" href="/campaign/keyfranchise">
														精选推荐<span class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu-new three-menu float-clearfix"
														style="display: block;">
														<li class="Extention"><a class=""
															href="/women_newarrivals"> 最新上市</a> <a class=""
															href="/item-subscribe"> 新品发售日历<span
																class="mod-newlabel mod-newlabel-three">NEW</span>
														</a></li>
														<li class="Extention"><a class=""
															href="/women_ss_statement"> 限量发售</a> <a class=""
															href="/women_top_sellers"> 本周热卖</a></li>
														<li class=""><a class=""
															href="/women_originals_summer?sp=Originals-SUMMER">
																Originals|SUMMER</a> <a class=""
															href="/women_originals_nitejogger?sp=Originals-Nite Jogger">
																Originals|NITE JOGGER</a></li>
														<li class=""><a class=""
															href="/women_adidasneo_liverestless"> adidas neo|生来好动</a>
														</li>
													</ul></li>
											</ul>
										</div></li>
									<li class=""><a href="/kids"> 儿童<span
											class="menu-icon-box e-menu-icon-box"><i
												class="icon icon-arrow-down icon-a-font"></i></span>
									</a>
										<div class="sub-menu">
											<ul class="sub-menu-ul float-clearfix">
												<li class=""><a class="sub-menu-title" href="/kids_all">
														婴童全部产品</a></li>

												<li class=""><a class="sub-menu-title"
													href="/kids_8_14years"> 大童（8-14岁）<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li class="none block-sm"><a class=""
															href="/kids_8_14years"> 全部大童（8-14岁）产品</a> <a class=""
															href="/boys_shoes_8_14years"> 男大童：鞋类</a></li>
														<li class=""><a class=""
															href="/girls_shoes_8_14years"> 女大童：鞋类</a> <a class=""
															href="/boys_clothing_8_14years"> 男大童：服装</a></li>
														<li class=""><a class=""
															href="/girls_clothing_8_14years"> 女大童：服装</a> <a class=""
															href="/kids_accessories_8_14years"> 箱包附配件</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/kids_4_8years"> 小童（4-8岁）<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li class="none block-sm"><a class=""
															href="/kids_4_8years"> 全部小童（4-8岁）产品</a> <a class=""
															href="/boys_shoes_4_8years"> 男小童：鞋类</a></li>
														<li class=""><a class="" href="/girls_shoes_4_8years">
																女小童：鞋类</a> <a class="" href="/boys_clothing_4_8years">
																男小童：服装</a></li>
														<li class=""><a class=""
															href="/girls_clothing_4_8years"> 女小童：服装</a> <a class=""
															href="/kids_accessories_4_8years"> 箱包附配件</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/kids_0_4years"> 婴幼儿（0-4岁）<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li class="none block-sm"><a class=""
															href="/kids_0_4years"> 全部婴幼儿（0-4岁）产品</a> <a class=""
															href="/boys_shoes_0_4years"> 男婴童：鞋类</a></li>
														<li class=""><a class="" href="/girls_shoes_0_4years">
																女婴童：鞋类</a> <a class="" href="/boys_clothing_0_4years">
																男婴童：服装</a></li>
														<li class=""><a class=""
															href="/girls_clothing_0_4years"> 女婴童：服装</a> <a class=""
															href="/kids_accessories_0_4years"> 箱包附配件</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/kids_personalization"> 个性印制产品<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li
															class="https://img.adidas.com.cn/resources/2018/3/15/15211227486009014.png">
															<a href="/kids_personalization"> <img
																src="https://img.adidas.com.cn/resources/2018/3/15/15211227486009014.png">
																<i
																class="icon https://img.adidas.com.cn/resources/2018/3/15/15211227486009014.png"></i>
														</a>
														</li>
														<li class=""><a class=""
															href="/kids_shoes_personalization"> 个性印制儿童鞋</a> <a
															class="" href="/kids_clothing_personalization">
																个性印制儿童服饰</a></li>
													</ul></li>
												<li class=" menu-more"><a class="" href="/kids_all">
														<span>全部儿童产品</span>
												</a> <a class="" href="/kids_8_14years"> <span>全部大童（8-14岁）产品</span></a><a
													class="" href="/kids_4_8years"> <span>全部小童（4-8岁）产品</span></a><a
													class="" href="/kids_0_4years"> <span>全部婴幼儿（0-4岁）产品</span></a><a
													class="" href="/kids_personalization"> <span>全部儿童个性印制产品</span></a></li>




												<li class="latest-activities is-open"><a
													class="sub-menu-title" href="javascript:;"> 精选推荐<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu-new three-menu float-clearfix"
														style="display: block;">
														<li class=""><a class="" href="/kids_newarrivals">
																最新上市</a> <a class="" href="/campaign/kids_childrensday">
																儿童节特辑</a></li>
														<li class=""><a class="" href="/kids_suit"> 套装系列</a>
															<a class="" href="/kids_family?sp=family" target="_blank">
																亲子系列</a></li>
														<li class=""><a class="" href="/kids_climacool">
																CLIMACOOL</a></li>
													</ul></li>
											</ul>
										</div></li>
									<li class="nav-menu-delimiter"><span></span></li>
									<li class="nav-menu-sports"><a href="javascript:;"> 运动<span
											class="menu-icon-box e-menu-icon-box"><i
												class="icon icon-arrow-down icon-a-font"></i></span>
									</a>
										<div class="sub-menu">
											<ul class="sub-menu-ul float-clearfix">
												<li class=""><a class="sub-menu-title" href="/running">
														<i class="icon icon-black-logo"></i> 跑步<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li
															class="https://img.adidas.com.cn/resources/2019kvbanner/Jan/running_170x80.jpg">
															<a href="/running"> <img
																src="https://img.adidas.com.cn/resources/2019kvbanner/Jan/running_170x80.jpg">
																<i
																class="icon https://img.adidas.com.cn/resources/2019kvbanner/Jan/running_170x80.jpg"></i>
														</a>
														</li>
														<li class="none block-sm"><a class=""
															href="/running_all"> 全部跑步产品</a> <a class=""
															href="/running_shoes_segment"> 跑步鞋</a></li>
														<li class="Extention"><a class=""
															href="/running_clothing"> 跑步服饰</a> <a class=""
															href="/running_accessories"> 运动装备</a></li>
														<li class="Extention"><a class=""
															href="/running_ultraboost"> UltraBOOST</a> <a class=""
															href="/running_pureboost"> PureBOOST</a></li>
														<li class="Extention"><a class=""
															href="/running_alphabounce"> Alpha Bounce</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/training_all"> <i class="icon icon-black-logo"></i>
														训练<span class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li
															class="https://img.adidas.com.cn/resources/2019kvbanner/feb/wuji-170-80.jpg">
															<a href="/training_all"> <img
																src="https://img.adidas.com.cn/resources/2019kvbanner/feb/wuji-170-80.jpg">
																<i
																class="icon https://img.adidas.com.cn/resources/2019kvbanner/feb/wuji-170-80.jpg"></i>
														</a>
														</li>
														<li class="none block-sm"><a class=""
															href="/training"> 全部训练产品</a> <a class=""
															href="/training_shoes"> 训练鞋</a></li>
														<li class="Extention"><a class=""
															href="/training_clothing"> 训练服饰</a> <a class=""
															href="/training_accessories"> 运动装备</a></li>
														<li class="Extention"><a class=""
															href="/training_alphaskin_all"> Alphaskin</a> <a class=""
															href="/training_bra&amp;tights?sp=Bras-Tights">
																运动胸衣Bra&amp;紧身裤</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title" href="/football">
														<i class="icon icon-black-logo"></i> 足球<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li
															class="https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-football-may.jpg">
															<a href="/football"> <img
																src="https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-football-may.jpg">
																<i
																class="icon https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-football-may.jpg"></i>
														</a>
														</li>
														<li class="none block-sm"><a class=""
															href="/football_all"> 全部足球产品</a> <a class=""
															href="/football_shoes_segment"> 足球鞋</a></li>
														<li class="Extention"><a class=""
															href="/football_clothing"> 足球服饰</a> <a class=""
															href="/football_accessories"> 运动装备</a></li>
														<li class=""><a class="" href="/football_predator">
																Predator</a> <a class="" href="/football_x"> X</a></li>
														<li class="Extention"><a class=""
															href="/football_nemeziz"> NEMEZIZ</a> <a class=""
															href="/football_copa"> COPA</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/basketball"> <i class="icon icon-black-logo"></i>
														篮球<span class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li
															class="https://img.adidas.com.cn/resources/2019kvbanner/mar/geekup-170-80.jpg">
															<a href="/basketball"> <img
																src="https://img.adidas.com.cn/resources/2019kvbanner/mar/geekup-170-80.jpg">
																<i
																class="icon https://img.adidas.com.cn/resources/2019kvbanner/mar/geekup-170-80.jpg"></i>
														</a>
														</li>
														<li class="none block-sm"><a class=""
															href="/basketball_all"> 全部篮球产品</a> <a class=""
															href="/basketball_shoes"> 篮球鞋</a></li>
														<li class=""><a class="" href="/basketball_clothing">
																篮球服饰</a> <a class="" href="/basketball_jamesharden">
																James Harden</a></li>
														<li class="Extention"><a class=""
															href="/basketball_derrickrose"> Derrick Rose</a> <a
															class="" href="/basketball_damianlillard"> Damian
																Lillard</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title" href="/terrex">
														<i class="icon icon-black-logo"></i> 户外<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li
															class="https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-terrex-may.jpg">
															<a href="/terrex"> <img
																src="https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-terrex-may.jpg">
																<i
																class="icon https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-terrex-may.jpg"></i>
														</a>
														</li>
														<li class="none block-sm"><a class=""
															href="/outdoor_all"> 全部户外产品</a> <a class=""
															href="/outdoor_shoes"> 户外鞋</a></li>
														<li class="Extention"><a class=""
															href="/outdoor_clothing"> 户外服饰</a></li>
													</ul></li>
												<li class=" block"><a class="sub-menu-title"
													href="javascript:;"> 其他运动<span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li class="Extention"><a class="" href="/tennis">
																网球</a> <a class="" href="/golf_all"> 高尔夫</a></li>
														<li class="Extention"><a class=""
															href="/swimming_all"> 游泳</a> <a class=""
															href="/volleyball"> 排球</a></li>
													</ul></li>
												<li class=" menu-more"><a class="" href="/running_all">
														<span>全部跑步产品</span>
												</a> <a class="" href="/training_all"> <span>全部训练产品</span></a><a
													class="" href="/football_all"> <span>全部足球产品</span></a><a
													class="" href="/basketball_all"> <span>全部篮球产品</span></a><a
													class="" href="/outdoor_all"> <span>全部户外产品</span></a></li>




												<li class=" more-btn none-sm"><a class="sub-menu-title"
													href="/more_sports"> 更多运动<i class="icon icon-more-down"></i>
														<span class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down"></i></span>
												</a></li>
											</ul>
										</div></li>
									<li class="nav-menu-brand nav-menu-sports font-weight"><a
										href="javascript:;"> 品牌<span
											class="menu-icon-box e-menu-icon-box"><i
												class="icon icon-arrow-down icon-a-font"></i></span>
									</a>
										<div class="sub-menu">
											<ul class="sub-menu-ul float-clearfix">
												<li class=""><a class="sub-menu-title"
													href="/originals"> <span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span> originals
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li
															class="https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-summer.jpg">
															<a href="/originals"> <img
																src="https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-summer.jpg">
																<i
																class="icon https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-summer.jpg"></i>
														</a>
														</li>
														<li class="none block-sm"><a class=""
															href="/originals_all"> 全部adidas Originals系列</a> <a
															class="" href="/originals_shoes"> 鞋类</a></li>
														<li class="Extention"><a class=""
															href="/originals_clothing"> 服装</a> <a class=""
															href="/originals_accessories"> 附配件</a></li>
														<li class=""><a class=""
															href="/originals_newarrivals"> 新品上市</a> <a class=""
															href="/originals_nitejogger?sp=Originals-Nite%20Jogger">
																NITE JOGGER</a></li>
														<li class=""><a class=""
															href="/originals_continental"> CONTINENTAL</a> <a
															class="" href="/originals_superstar"> SUPERSTAR</a></li>
														<li class=""><a class="" href="/originals_stan_smith">
																STAN SMITH</a> <a class="" href="/originals_nmd"> NMD</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/athletics"> <span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span> ADIDAS
														ATHLETICS
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li
															class="https://img.adidas.com.cn/resources/2019kvbanner/feb/WND-170-80.jpg">
															<a href="/athletics"> <img
																src="https://img.adidas.com.cn/resources/2019kvbanner/feb/WND-170-80.jpg">
																<i
																class="icon https://img.adidas.com.cn/resources/2019kvbanner/feb/WND-170-80.jpg"></i>
														</a>
														</li>
														<li class="none block-sm"><a class=""
															href="/athletics_all"> 全部adidas athletics系列</a> <a
															class="" href="/men_athletics"> 男子服饰</a></li>
														<li class=""><a class="" href="/women_athletics">
																女子服饰</a> <a class="" href="/athletics_newarrivals"> 新品上市</a>
														</li>
														<li class="Extention"><a class=""
															href="/athletics_zne"> Z.N.E</a> <a class=""
															href="/athletics_wuji"> 武极</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/adidasneo"> <span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span> adidas neo
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li
															class="https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-neo-may-dailing.jpg">
															<a href="/adidasneo"> <img
																src="https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-neo-may-dailing.jpg">
																<i
																class="icon https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-neo-may-dailing.jpg"></i>
														</a>
														</li>
														<li class="none block-sm"><a class=""
															href="/adidasneo_all"> 全部adidas neo系列</a> <a class=""
															href="/adidasneo_shoes"> 鞋类</a></li>
														<li class="Extention"><a class=""
															href="/adidasneo_clothing"> 服装</a> <a class=""
															href="/adidasneo_accessories"> 附配件</a></li>
														<li class=""><a class=""
															href="/adidasneo_newarrivals"> 新品上市</a> <a class=""
															href="/campaign/adidasneo_may"> 生来好动</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title" href="/terrex">
														<span class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span> TERREX
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li
															class="https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-terrex-may.jpg">
															<a href="/terrex"> <img
																src="https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-terrex-may.jpg">
																<i
																class="icon https://img.adidas.com.cn/resources/2019kvbanner/may/170-80-terrex-may.jpg"></i>
														</a>
														</li>
														<li class=""><a class="" href="/terrex_shoes"> 鞋类</a>
															<a class="" href="/terrex_clothing"> 服装</a></li>
														<li class=""><a class="" href="/terrex_newarrivals">
																新品上市</a> <a class="" href="/originals_whitemountaineering"
															target="_blank"> TERREX x WHITE MOUNTAINEERING</a></li>
													</ul></li>
												<li class=""><a class="sub-menu-title"
													href="/adidas_by_stella_mccartney"> <span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span> adidas by
														Stella McCartney
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li
															class="https://img.adidas.com.cn/resources/2019kvbanner/Apr/asmc-170x80.jpg">
															<a href="/adidas_by_stella_mccartney"> <img
																src="https://img.adidas.com.cn/resources/2019kvbanner/Apr/asmc-170x80.jpg">
																<i
																class="icon https://img.adidas.com.cn/resources/2019kvbanner/Apr/asmc-170x80.jpg"></i>
														</a>
														</li>
														<li class="none block-sm"><a class=""
															href="/adidas_bystellamccartney_all"> 全部adidas by
																Stella McCartney系列</a> <a class=""
															href="/adidas_bystellamccartney_shoes"> 鞋类</a></li>
														<li class="Extention"><a class=""
															href="/adidas_bystellamccartney_clothing"> 服饰</a> <a
															class="" href="/adidas_bystellamccartney_accessories">
																附配件</a></li>
														<li class=""><a class=""
															href="/adidas_bystellamccartney_newarrivals"> 新品上市</a></li>
													</ul></li>
												<li class="sub-menu-ul-new"><a class="sub-menu-title"
													href="/skateboarding"> <span
														class="menu-icon-box e-menu-icon-box"><i
															class="icon icon-arrow-down icon-a-font"></i></span>
														Skateboarding
												</a>
													<ul class="three-menu-new three-menu float-clearfix">
														<li
															class="https://img.adidas.com.cn/resources/2018kvbanner/170x80-skateboarding.jpg">
															<a href="/skateboarding"> <img
																src="https://img.adidas.com.cn/resources/2018kvbanner/170x80-skateboarding.jpg">
																<i
																class="icon https://img.adidas.com.cn/resources/2018kvbanner/170x80-skateboarding.jpg"></i>
														</a>
														</li>
														<li class="none block-sm"><a class=""
															href="/skateboarding_all"> 全部skateboarding</a> <a
															class="" href="/skateboarding_shoes?sp=Skateboarding">
																鞋类</a></li>
														<li class=""><a class=""
															href="/skateboarding_clothing?sp=Skateboarding"> 服饰</a> <a
															class=""
															href="/skateboarding_newarrivals?sp=Skateboarding">
																新品上市</a></li>
													</ul></li>
												<li class=" menu-more"><a class=""
													href="/originals_all"> <span>全部adidas
															Originals系列</span></a> <a class="" href="/athletics_all"> <span>全部adidas
															athletics系列</span></a><a class="" href="/adidasneo_all"> <span>全部adidas
															neo系列</span></a><a class="" href="/terrex_all"> <span>全部adidas
															terrex系列</span></a><a class="" href="/adidas_bystellamccartney_all">
														<span>全部adidas by Stella McCartney系列</span>
												</a><a class="" href="/skateboarding_all?sp=Skateboarding">
														<span>全部skateboarding系列</span>
												</a></li>





											</ul>
										</div></li>
									<li class=""><a href="/campaign/keyfranchise"> 精选系列</a></li>
								</ul>
								<ul class="mob-nav-iterm">
									<li><a href="tel:400-999-5999"> <i
											class="icon-new icon-phone"></i>400-999-5999
									</a></li>
									<li><a href="javascript:void(0);" onclick="doSomething();">
											<i class="icon icon-online-service"></i>在线客服
									</a></li>
									<li><a href="/help/helpUs?locale=zh_CN">帮助中心</a></li>
									<li class="mob-language" style="display:none"><a
										class="changeLocaleZhM is-active" href="javascript:void(0)">中文</a>
										<span></span> <a class="changeLocaleEnM "
										href="javascript:void(0)">English</a></li>
								</ul>
							</div>
						</div>
						<div class="header-mask e-header-mask none block-sm"></div>
					</div>
					<div class="navbar-menu-background events-header-scroll-background">
					</div>
				</div>
				<ul class="header-right">
					<li class="header-search" id="myBtn"><a
						class="m-search none block-sm"> <i class="icon icon-search-m"></i>
					</a>
						<div class="form-search">
							<form id="keysearch" action="/search" method="GET">
								<input type="text" value="" autocomplete="off" id="keyword"
									placeholder="Clima"> <input type="hidden" id="keywords"
									name="keyword"> <a> <i
									class="icon icon-search icon-a-font"></i>
								</a> <a class="search-clear eventssearch-clear"> <i
									class="icon icon-search-clear"></i>
								</a>
							</form>
						</div>
						<div class="search-box">
							<div class="search-before-content float-clearfix"></div>
							<div class="search-after-content"></div>
						</div></li>
					<li class="header-cart"><a href="/shoppingcart?locale=zh_CN"
						value="0"> <i class="icon-new icon-cart"></i> <span
							id="icon-item-count">0</span>
					</a>
						<div class="minicart-box none-sm" id="for-template"></div></li>
				</ul>
				</nav>
			</div>
			</header>
		</div>
		<script id="mini-shopping-cart-template" type="text/template">
	
</script>
		<link rel="stylesheet" type="text/css" media="screen"
			href="https://img.adidas.com.cn/css/guest-order.css?20190527185926134">
		<script type="text/javascript"
			src="https://img.adidas.com.cn/??js/message/message_myaccount_zh_CN.js,js/myaccount/myaccount-guestorders.js?20190527185926134"></script>
		<section class="container"> <article
			class="article article-breadcrumb none-sm">
		<div class="breadcrumb">
			<ul class="list-inline">
				<li><a onclick="history.back(-1)"><i
						class="icon icon-round-lightgray-lefts"></i>返回</a></li>
				<li class="divider">丨</li>
				<li><a href="/index?locale=zh_CN">首页</a></li>
				<li class="divider">/</li>
				<li><a href="#">订单追踪</a></li>
			</ul>
		</div>
		</article> <article class="article titl none block-sm">
		<div>
			<p>订单追踪</p>
		</div>
		</article> <article class="article article-reset-password order-number">
		<form action="selectOrderServlet" method="post">
		<div class="order-content float-clearfix">
			<div class="order-left">
				<div class="login-box">
					<p class="one-side-email">请输入您的订单编号和用户名</p>
					<p class="look">如果您是adiCLUB会员请登录后在我的账户订单详情页面查看</p>
					<div class="login-detial">
						<div class="gl-form-item guest-order-num">
							<input class="gl-input__field gl-input__field-order" type="text"
								id="checkGuestOrder" name="orderid"> <label
								class="gl-input__label"> <span>订单编号</span>
							</label>
							<div class="msg-block">
								<i class="icon msg-icon"></i> <span>您输入的订单编号不存在</span>
							</div>
						</div>
						<div class="gl-form-item guest-order-num">
							<input class="gl-input__field gl-input__field-order" type="text"
								id="guestMobilePhone" name="shoppid"> <label
								class="gl-input__label"> <span>用户名</span>
							</label>
							<div class="msg-block">
								<i class="icon msg-icon"></i> <span>用户名错误</span>
							</div>
						</div>
						<div class="login-btn float-clearfix">
					
						<input class="gl-cta gl-cta--primary btn btn-blue gl-cta--center" 
						id="checkGuestCodeBtn"
						type="submit" value="查询订单" >
						</div>
					</div>
				</div>
			</div>
		</div>
		</form>
		
		<div class="order-content float-clearfix">
		<ul>
			<%
				
		    	String orderid = (String)session.getAttribute("orderid");
		    	String shopperid = (String)session.getAttribute("shopperid");
		    	System.out.println("122"+orderid);
				System.out.println("122"+shopperid);
			    int count=0;
				List<OrderInfor> str = orderDao.findOrderById(orderid, shopperid);
				for(OrderInfor s:str){
					count++;

			%>
			
			
			<li><p class="one-side-email">订单编号：<%=s.getOrderid() %></li>
			<hr>
			<li><p class="one-side-email">创建时间：<%=s.getPaytime() %></li>
			<hr>
			<li><p class="one-side-email">支付时间：<%=s.getPaytime() %></li>
			<hr>
			<li><p class="one-side-email">发货时间：<%=s.getDeliverytime() %></li>
			<hr>
			<li><p class="one-side-email">用户名：<%=s.getUsername() %></li>
			<hr>
			<li><p class="one-side-email">商品编号：<%=s.getGoodsid() %></li>
			
			  	<%
							}
			  	%>
			  	
			 </ul>
			 </div>
		</article> </section>
		<footer class="footer">
		<div class="back-top events-backtop none block-sm">
			<i class="icon icon-a-font icon-back-top"></i>回到顶部
		</div>
		<div class="footer-top">
			<div class="footer-top-container float-clearfix">
				<ul class="none-sm">
					<li class="contacted">联系我们</li>
					<li>
						<p>
							<a href="javascript:void(0);" onclick="doSomething();"><i
								class="icon icon-contact-us-service"></i>在线客服</a>
						</p>
						<p class="remarks">(仅支持中文)</p>
					</li>
					<li>
						<p>
							<i class="icon icon-contact-us-tel"></i> <span>400-999-5999</span>
						</p>
						<p class="remarks">(仅支持中文)</p>
					</li>
					<li>
						<p>
							<i class="icon icon-contact-us-email"></i> <span>service@adidas.com</span>
						</p>
						<p class="remarks">(建议及投诉受理邮箱)</p>
					</li>
					<li>
						<p>
							<i class="icon icon-contact-us-time"></i><span>9:00-22:00</span>
						</p>
					</li>
					<li class="order-tracking"><a href="/orderGuest?locale=zh_CN"><i
							class="icon-new icon-order"></i>订单追踪</a></li>
				</ul>
				<ul class="none block-sm">
					<li class="is-login"><a href="/member/login?locale=zh_CN"
						id="footerloginHref"><i class="icon-new icon-login"></i><span
							id="mobileFooterNickName">登录 </span></a></li>
					<li><a href="/shoppingcart?locale=zh_CN"><i
							class="icon-new icon-cart"></i>您的购物袋 (<span>0</span>)</a></li>
				</ul>
			</div>
		</div>
		<input type="hidden" id="locale" value="zh_CN">


		<div class="footer-cont cms-html-edit" code="1499397730254">
			<div class="footer-cont-top none-sm float-clearfix"
				expandarea="1499397718797">
				<ul class="">
					<li class="title">产品</li>
					<li class=""><a
						href="https://www.adidas.com.cn/shoes_all?locale=zh_CN" onclick=""
						target="_blank">鞋类</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/clothing_all?locale=zh_CN"
						onclick="" target="_blank">服装</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/accessories_all?locale=zh_CN"
						onclick="" target="_blank">配件</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/newarrivals?locale=zh_CN"
						onclick="" target="_blank">最新上市</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/item-subscribe" onclick=""
						target="_blank">新品发售日历</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/ss_statement?sp=Statement"
						onclick="" target="_blank">限量发售</a></li>
				</ul>
				<ul>
					<li class="title">运动</li>
					<li class=""><a
						href="https://www.adidas.com.cn/running_all?locale=zh_CN"
						onclick="" target="_blank" class="">跑步</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/training_all?locale=zh_CN"
						onclick="" target="_blank" class="">训练</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/football_all?locale=zh_CN"
						onclick="" target="_blank">足球</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/basketball_all?locale=zh_CN"
						onclick="" target="_blank">篮球</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/outdoor_all?locale=zh_CN"
						onclick="" target="_blank">户外</a></li>
				</ul>
				<ul>
					<li class="title"><a
						href="https://www.adidas.com.cn/help/helpUs?locale=zh_CN"
						onclick="" target="_blank">帮助中心</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/employee/login?locale=zh_CN"
						onclick="" target="_blank">关于员工</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/size?locale=zh_CN" onclick=""
						target="_blank" class="">尺码表</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/adiClub?locale=zh_CN" onclick=""
						target="_blank">adiCLUB会员</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/location/storefinder?locale=zh_CN"
						onclick="" target="_blank">门店查询</a></li>
					<li class=""><a
						href="https://www.adidas-group.com/en/?locale=zh_CN" onclick=""
						target="_blank">关于我们</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/CSR/home?locale=zh_CN" onclick=""
						target="_blank">企业社会责任</a></li>
				</ul>
				<ul>
					<li class="title">网站政策</li>
					<li class=""><a
						href="https://www.adidas.com.cn/terms_condition?locale=zh_CN"
						onclick="" target="_blank">使用条款</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/private_policy?locale=zh_CN"
						onclick="" target="_blank">隐私声明</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/delivery_policy?locale=zh_CN"
						onclick="" target="_blank">物流配送规则</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/return_policy?locale=zh_CN"
						onclick="" target="_blank">退货规则</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/member/showAdiClubMemberLegal?locale=zh_CN"
						onclick="" target="_blank">adiCLUB会员规则</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/shopping_guide?locale=zh_CN"
						onclick="" target="_blank">下单指南</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/miadidasTC?locale=zh_CN"
						onclick="" target="_blank">印制服务条款</a></li>
				</ul>
				<ul class="footer-share footer-share-career">
					<li class="title">职业发展</li>
					<li class="title-career"><a class="events-career-development"
						href=""><i class="icon-new icon-career-development"></i></a>
						<div class="career-code-box" style="display: none;">
							<div>
								<img
									src="https://img.adidas.com.cn/resources/headfooter/career-development.png?version=000000">
								<p>扫码关注，加入我们</p>
							</div>
						</div></li>
				</ul>
				<ul class="footer-share">
					<li class="title">关注我们</li>
					<li class=""><a
						href="http://www.weibo.com/shopadidas?locale=zh_CN" onclick=""
						target="_blank" title="微博"><i class="icon icon-sina"></i></a></li>
					<li><a class="events-wechat-code" href="javascript:void(0)"
						onclick=""><i class="icon icon-wechat"></i></a>
						<div class="wechat-code-box">
							<div>
								<img
									src="https://img.adidas.com.cn/resources/2018kvbanner/wechat.jpg?version=000000">
								<p>
									即刻扫码官方微信<br>享受更多贴心服务
								</p>
							</div>
						</div></li>
				</ul>
				<ul class="footer-Payment-method">
					<li class="title">我们接受下列付款方式：</li>
					<li><span><i class="icon icon-Payment-method"></i></span></li>
					<li><span><i class="icon icon-Payment-method-1"></i></span></li>
					<li><span><i class="icon icon-Payment-method-2"></i></span></li>
					<li><span><i class="icon icon-Payment-method-3"></i></span></li>
				</ul>
				<ul class="footer-group-purchase footer-Payment-method none-sm">
					<li class="title">企业团购热线及邮箱：</li>
					<li class="title">团购热线：021-2525 6881</li>
					<li class="title">团购邮箱：adidas.b2b@adidas.com</li>
					<li class="title">（仅限采购金额10万以上）</li>
				</ul>
			</div>
			<div class="footer-cont-top none block-sm float-clearfix">
				<ul>
					<li class=""><a
						href="https://www.adidas.com.cn/help/helpUs?locale=zh_CN"
						onclick="" target="_blank">帮助中心</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/adiClub?locale=zh_CN" onclick=""
						target="_blank">adiCLUB会员</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/location/storefinder?locale=zh_CN"
						onclick="" target="_blank" class="">门店查询</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/orderGuest?locale=zh_CN"
						onclick="" target="_blank" class="">订单追踪</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/employee/login?locale=zh_CN"
						onclick="" target="_blank">关于员工</a></li>
					<li class="group-purchase none block-sm"><a href="">企业团购</a></li>
				</ul>
			</div>
		</div>
		<div class="footer-cont-bottom cms-html-edit" code="1499397742528">
			<div class="float-clearfix" expandarea="1499397739843">
				<ul class="footer-cont-left" expandarea="1499397739211">
					<li class="footer-language" expandarea="1499397738594"><a
						href="https://www.adidas.com.cn/location-selector?locale=zh_CN"
						class="events-country" onclick="" target=""
						expandarea="1499397737475"><i class="icon icon-china"></i>&nbsp;&nbsp;<span
							class="">中国</span></a>
						<div class="none block-sm">
							<a
								onclick="window.open ('https://care60.live800.com/live800/chatClient/chatbox.jsp?companyID=80001164&amp;configID=636&amp;lan=zh&amp;tm=1489566278790', 'newwindow', 'height=600, width=700, toolbar =no, menubar=no, scrollbars=no, resizable=no, location=no, status=no')"
								href=""> <i class="icon icon-online-service"></i>在线客服
							</a>
						</div></li>
					<li class=""><a
						href="https://www.adidas.com.cn/private_policy?locale=zh_CN"
						onclick="" target="_blank" class="">隐私声明</a></li>
					<li class=""><a
						href="https://www.adidas.com.cn/terms_condition?locale=zh_CN"
						onclick="" target="_blank" class="">使用条款</a></li>
					<li class="none-sm"><a
						href="https://www.adidas.com.cn/siteMap?locale=zh_CN" onclick=""
						target="">网站地图</a></li>
				</ul>
				<ul class="footer-cont-left mob-cont-record none block-sm">
					<li><a
						href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=32059002001401"><i
							class="icon icon-ebs2"></i>苏公网安备 32059002001401号</a></li>
					<li><a
						href="http://www.jsdsgsxt.gov.cn/mbm/entweb/elec/certView.shtml?siteId=bcf44f76c12e4a5588ae114fa1d6d0c9"><i
							class="icon icon-ebs1"></i>江苏工商</a></li>
				</ul>
				<ul class="footer-cont-right">
					<li><a href="http://www.miibeian.gov.cn"
						class="footer-cont-right-underline">苏ICP备14048805号-1</a>&nbsp;</li>
					<li class="none-sm"><a
						href="http://www.jsdsgsxt.gov.cn/mbm/entweb/elec/certView.shtml?siteId=bcf44f76c12e4a5588ae114fa1d6d0c9"><i
							class="icon icon-ebs1"></i>&nbsp;&nbsp;© 2019 adidas
							<p class="none-sm footer-cont-right-p">江苏工商</p></a></li>
					<li class="footer-cont-right-mob"><a
						href="http://www.jsdsgsxt.gov.cn/mbm/entweb/elec/certView.shtml?siteId=bcf44f76c12e4a5588ae114fa1d6d0c9"><i
							class="icon icon-ebs1"></i>&nbsp;&nbsp;© 2019 adidas</a></li>
					<li class="none-sm"><a
						href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=32059002001401">
							<i class="icon icon-ebs2"></i>&nbsp;&nbsp;苏公网安备 32059002001401号
					</a></li>
				</ul>
			</div>
			<script id="group-purchase-dialog" type="text/template"> 
<div class="dialog"> 
<div class="dialog-container notice-container"> 
<h4 class="notice-font">企业团购</h4> 
<div class="group-purchase-content customized-dialog-content"> 
<div> 
<p><span>企业团购热线及邮箱</span></p> 
<p><span>团购热线：</span><a href="tel:021-2525-6881">021-2525 6881</a></p> 
<p><span>团购邮箱：</span>adidas.b2b@adidas.com</p> 
<p>仅限采购金额10万以上</p> 
</div> 
</div> 
</div> 
<div class="dialog-close-box"><i class="icon icon-close dialog-close"></i></div> 
</div> 
</script>
			<script id="welcome-dialog" type="text/template"> 
<div class="dialog"> 
<div class="dialog-container"> 
<div> 
<img class="none-sm" src="https://img.adidas.com.cn/resources/2017/9/27/welcome-pc-bg.jpg" /> 
<img class="none block-sm" src="https://img.adidas.com.cn/resources/2017/9/27/welcome-mob-bg_20170927154438.jpg" /> 
</div> 
<div class="welcome-content"> 
<div> 
<a href="https://www.adidas.com.cn/adiClub" class="btn btn-have-arrow"> 
<i class="icon icon-welcome-1"></i><span>点击加入adiCLUB成为会员</span> 
</a> 
</div> 
<div> 
<a href="https://www.adidas.com.cn/delivery_policy " class="btn btn-have-arrow"> 
<i class="icon icon-welcome-2"></i><span>支付及配送服务升级（全场免运费）</span> 
</a> 
</div> 
<div> 
<a href="https://www.adidas.com.cn/personalization" class="btn btn-have-arrow"> 
<i class="icon icon-welcome-3"></i><span>个性印制：为你的产品添加姓名或数字</span> 
</a> 
</div> 
</div> 
</div> 
<i class="icon icon-close dialog-close">&times;</i> 
</div> 
</script>
		</div>
		</footer>
		<script id="search-suggestion-template"
			type="text/x-handlebars-template">
<div class="search-product">
								{{#isNotNullOrEmpty itemList}}
								<p class="title">产品</p>
								<div class="goods-box">
									{{#each  itemList}} 
										<div class="goods-item float-clearfix">
											<a class="{{#iflocal this.seoTitle  '=='  'MIADIDAS'}}{{base }}/miadidas/{{this.code }}?locale={{../locale }}{{/iflocal}}{{#iflocal this.seoTitle  '=='  'Normal'}}{{base }}/item/{{this.code}}?locale={{../locale }}{{/iflocal}}{{#iflocal this.seoTitle  '=='  'hypelaunch'}}{{this.seoDescription}}?locale={{../locale }}{{/iflocal}}{{#iflocal this.seoTitle  '=='  'VIP'}}{{base }}/{{this.seoDescription}}?locale={{../locale }}{{/iflocal}}">
												{{#iflocal this.seoTitle  '=='  'MIADIDAS'}}
														  <img  src="{{this.imageUrl.[0]}}" />
												{{/iflocal}}
												{{#iflocal this.seoTitle  '!='  'MIADIDAS'}}
														 <img src="{{#imageUrlHelper this.imageUrl.[0] '324X324'}}{{/imageUrlHelper}}" />
												{{/iflocal}}
												<div class="product">
													<span>{{this.title }}</span>
													<span>{{this.subTitle}}</span>
													{{#adpriceHelper this.sale_price  this.list_price }}{{/adpriceHelper}}
													{{#isNotNullOrEmpty this.default_sort}}
													 <div class="goods-star-box">
															<div class="star-box-gyi">  
														<span class="star-yellow-box" style="width:{{#itemRankAvg this.rankavg}}{{/itemRankAvg}}%"><i
															class="icon-new icon-star-yellow"></i></span> <i
															class="icon-new icon-star-gray"></i>
													</div>
													<span class="star-num">{{this.default_sort }}</span> 
													</div>
													{{/isNotNullOrEmpty}}
												</div>
											</a>
										</div>
									   {{/each}}
								</div>
								{{/isNotNullOrEmpty}}
							</div>
							<div class="search-word">
								<p class="title">关联词</p>
								<ul>
									{{#isNotNullOrEmpty keywords}}
									{{#each  keywords}}
								    {{#isNotNullOrEmpty second}}
									<li>
										<a class="/search?keyword={{first}} {{second}}">{{first}} > {{second}}{{#isNotNullOrEmpty this.children}}{{this.children.name}}{{/isNotNullOrEmpty}}</a>
									</li>
									{{else}}
									<li>
										<a class="/search?keyword={{first}}">{{first}} > {{second}}{{#isNotNullOrEmpty this.children}}{{this.children.name}}{{/isNotNullOrEmpty}}</a>
									</li>
									{{/isNotNullOrEmpty}}
									{{/each}}
										
									{{else}}
									<li>
										<a href="/search?keyword={{keyword}}" class='none'>{{keyword}}</a>
									</li>
									{{/isNotNullOrEmpty}}
									
								</ul>
								
</div>
</script>
		<script id="search-recommendedSearchKey-template"
			type="text/x-handlebars-template">
						<div class="search-word">								
											<p class="title">搜索推荐</p>
											<ul>
						{{#isNotNullOrEmpty recommendedData}}
							{{#each  recommendedData}} 
												<li>
													<a href="/search?keyword={{this}}">{{this}}</a>
												</li>
							{{/each}}	
							{{/isNotNullOrEmpty}}	
											</ul>
										</div>
							<div class="search-word" >
								<a class="search-delete event-search-delete">
									<i class="icon icon-search-delete" onclick="delCookie('recommendedSearchKey','')"></i>
								</a>
											<p class="title">搜索记录</p>
											<ul id="recommendedSearchKey">
								{{#isNotNullOrEmpty cookieData}}
										{{#each  cookieData}} 
												<li>
													<a href="/search?keyword={{this}}">{{this}}</a>
												</li>
										{{/each}}
								{{/isNotNullOrEmpty}}	
											</ul>
										</div>

</script>
	</div>
	<script type="text/javascript" id="">window._pt_lt=(new Date).getTime();window._pt_sp_2=[];_pt_sp_2.push("setAccount,7f28852c");var _protocol="https:"==document.location.protocol?" https://":" http://";(function(){var a=document.createElement("script");a.type="text/javascript";a.async=!0;a.src=_protocol+"js.ptengine.cn/7f28852c.js";var b=document.getElementsByTagName("script")[0];b.parentNode.insertBefore(a,b)})();</script>
	<script type="text/javascript"
		src="https://img.adidas.com.cn/js/common/ajax-extend.js?20190527185926134"></script>

	<div class="spice-black-opacity spice-header-mask"
		style="z-index: 104;"></div>
	<div class="dialog-opacity reebok-dialog country-dialog"
		id="spice-dialog-0" style="display: none; z-index: 105;">
		<div class="dialog-scroll-wrap">
			<div class="dialog-scroll-container">
				<div class="dialog-scroll">
					<div>
						<div class="dialog">
							<div class="dialog-container">
								<div class="dialog-content">
									<div>
										<h4>请选择国家/地区</h4>
									</div>
								</div>
							</div>
							<i class="icon icon-close dialog-close">×</i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="dialog-opacity pdp-info-dialog customized-dialog"
		id="spice-dialog-1" style="display: none; z-index: 106;">
		<div class="dialog-scroll-wrap">
			<div class="dialog-scroll-container">
				<div class="dialog-scroll">
					<div>
						<div class="dialog">
							<div class="dialog-container notice-container">
								<h4 class="notice-font">企业团购</h4>
								<div class="group-purchase-content customized-dialog-content">
									<div>
										<p>
											<span>企业团购热线及邮箱</span>
										</p>
										<p>
											<span>团购热线：</span><a href="tel:021-2525-6881">021-2525
												6881</a>
										</p>
										<p>
											<span>团购邮箱：</span>adidas.b2b@adidas.com
										</p>
										<p>仅限采购金额10万以上</p>
									</div>
								</div>
							</div>
							<div class="dialog-close-box">
								<i class="icon icon-close dialog-close"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="dialog-opacity dialog-cancel-order dialog-common-prompt"
		id="spice-dialog-2" style="display: none; z-index: 107;">
		<div class="dialog-scroll-wrap">
			<div class="dialog-scroll-container">
				<div class="dialog-scroll">
					<div>
						<div class="dialog">
							<div class="dialog-container">
								<div class="dialog-content">
									<div>
										<h4>确定取消该订单吗？</h4>
									</div>
								</div>
								<div class="dialog-btn-wrap">
									<a class="btn gl-cta gl-cta--primary gl-cta--center btn-black">暂不取消</a><a
										class="btn gl-cta gl-cta--primary gl-cta--center btn-blue">确定取消</a>
								</div>
							</div>
							<i class="icon icon-close dialog-close">×</i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
