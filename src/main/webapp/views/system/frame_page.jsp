<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, ">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>首页</title>
		<link rel="stylesheet" href="<c:url value="/css/liu.css"/>" />
		<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>" />
		<!--[if IE]>
		<script src="http://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	     <![endif]-->
	</head>
	<style>
	</style>

	<body class="indexPage">
		<div class="navbar navbar-static-top l-header">
			<div class="navbar-absolute navbar-left">
				<div class="logo">
					<img src="img/BI_logo.png">
					</span>
				</div>
			</div>
			<div class="header-title">
				<img src="img/BI_05.png">
			</div>
			<div class="navbar-absolute navbar-right">
				<ul>
					<li>
						<a href="#">
							<img src="img/BI_08.png"> </a>
					</li>
					<li>
						<a href="#">
							<img src="img/BI_10.png">  </a>
					</li>
					<li>
						<a href="#">
							<img src="img/BI_12.png"> </a>
					</li>
				</ul>
			</div>
		</div>

		<div class="container-fluid">
			<div class="charBoxContent">
				<div class="ChartBoxIndex box-shadow clearfix  grid grid-3 grid-left">
					<h2 class="TitleBar">工商管理<a href="#"><img src="img/BI_BTN.png"></a></h2>
					<ul class="BusinessDetail">
						<li class="clearfix">
							<span class="col-sm-12 col-md-12">
									<h2>企业总数</h2>
									<b>612</b>
								</span>
						</li>
						<li class="borderB clearfix">
							<span class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
									<h2>实体运营</h2>
									<b>612</b>
								</span>
							<span class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
									<h2>非实体运营</h2>
									<b>612</b>
								</span>
						</li>
						<li class="borderB clearfix">
							<span class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
									<h2>部门实体运营</h2>
									<b>612</b>
								</span>
							<span class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
									<h2>拟注销企业</h2>
									<b>612</b>
								</span>
						</li>
						<li class="clearfix">
							<div class="col-sm-12 col-md-12">
								<h2>企业图谱</h2>
								<div style="text-align: center;">
									<img src="img/BI_40.png" style="height: 150px;">
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="ChartBoxIndex box-shadow grid  grid-6 mapBox">
				</div>
				<div class="ChartBoxIndex clearfix  box-shadow grid grid-3 grid-right">
					<h2 class="TitleBar">大额资产<a href="#"><img src="img/BI_BTN.png"></a></h2>
					<div class="three-card">
						<div class="col-sm-4">
							<img src="img/BI_23_f.png">
							<p>房产</p>
							<h2>520.28<sub>㎡</sub></h2>
						</div>
						<div class="col-sm-4">
							<img src="img/BI_25_t.png">
							<p>土地</p>
							<h2>70,148.1<sub>亩</sub></h2>
						</div>
						<div class="col-sm-4">
							<img src="img/BI_27_q.png">
							<p>权证</p>
							<h2>228<sub>枚</sub></h2>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="borderB clearfix">
						<div class="col-sm-6 biaop">
							<div id="g1"></div>
							<p class="ChartMapTitle">房屋抵押占比</p>
							<div class="bg-bq">
								<svg version="1.1" id="图层_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="124.667px" height="72.875px" viewBox="0 0 124.667 72.875" enable-background="new 0 0 124.667 72.875" xml:space="preserve">
									<g>
										<rect x="3.577" y="60.893" fill="#FFFFFF" width="7.935" height="1.368" />

										<rect x="4.226" y="51.855" transform="matrix(0.9864 0.1647 -0.1647 0.9864 8.7627 -0.6321)" fill="#FFFFFF" width="7.935" height="1.366" />

										<rect x="6.354" y="43.044" transform="matrix(0.9459 0.3245 -0.3245 0.9459 14.7501 -0.9831)" fill="#FFFFFF" width="7.936" height="1.368" />

										<rect x="9.903" y="34.706" transform="matrix(0.8795 0.4758 -0.4758 0.8795 18.5109 -2.3369)" fill="#FFFFFF" width="7.936" height="1.367" />

										<rect x="14.776" y="27.064" transform="matrix(0.7892 0.6141 -0.6141 0.7892 20.9908 -5.662)" fill="#FFFFFF" width="7.935" height="1.367" />

										<rect x="20.84" y="20.329" transform="matrix(0.6774 0.7356 -0.7356 0.6774 23.4599 -11.4701)" fill="#FFFFFF" width="7.935" height="1.368" />

										<rect x="27.929" y="14.683" transform="matrix(0.547 0.8371 -0.8371 0.547 27.3122 -19.7401)" fill="#FFFFFF" width="7.935" height="1.368" />

										<rect x="35.851" y="10.281" transform="matrix(0.4019 0.9157 -0.9157 0.4019 33.8564 -29.9031)" fill="#FFFFFF" width="7.936" height="1.369" />

										<rect x="44.39" y="7.244" transform="matrix(0.2457 0.9693 -0.9693 0.2457 44.1616 -40.8953)" fill="#FFFFFF" width="7.936" height="1.368" />

										<rect x="53.311" y="5.653" transform="matrix(0.0827 0.9966 -0.9966 0.0827 58.8571 -51.2702)" fill="#FFFFFF" width="7.935" height="1.368" />

										<rect x="62.375" y="5.552" transform="matrix(-0.0823 0.9966 -0.9966 -0.0823 78.0188 -59.3681)" fill="#FFFFFF" width="7.935" height="1.368" />

										<rect x="71.329" y="6.944" transform="matrix(-0.2452 0.9695 -0.9695 -0.2452 101.1582 -63.4996)" fill="#FFFFFF" width="7.936" height="1.368" />

										<rect x="79.933" y="9.79" transform="matrix(-0.4015 0.9159 -0.9159 -0.4015 127.1795 -62.163)" fill="#FFFFFF" width="7.937" height="1.368" />

										<rect x="87.952" y="14.013" transform="matrix(-0.5467 0.8374 -0.8374 -0.5467 154.4763 -54.2371)" fill="#FFFFFF" width="7.935" height="1.369" />

										<rect x="95.165" y="19.5" transform="matrix(-0.6771 0.7359 -0.7359 -0.6771 181.1056 -39.1067)" fill="#FFFFFF" width="7.936" height="1.368" />

										<rect x="101.378" y="26.098" transform="matrix(-0.789 0.6144 -0.6144 -0.789 204.9179 -16.8114)" fill="#FFFFFF" width="7.936" height="1.367" />

										<rect x="106.421" y="33.628" transform="matrix(-0.8793 0.4763 -0.4763 -0.8793 223.7942 11.9029)" fill="#FFFFFF" width="7.936" height="1.368" />

										<rect x="110.156" y="41.886" transform="matrix(-0.9457 0.325 -0.325 -0.9457 235.886 45.7333)" fill="#FFFFFF" width="7.935" height="1.368" />

										<rect x="112.478" y="50.646" transform="matrix(-0.9863 0.1651 -0.1651 -0.9863 239.7684 82.7333)" fill="#FFFFFF" width="7.936" height="1.368" />
										<rect x="113.33" y="59.668" fill="#FFFFFF" width="7.936" height="1.367" />

										<rect x="3.707" y="64.232" transform="matrix(0.9985 -0.0551 0.0551 0.9985 -3.5597 0.4123)" fill="#FFFFFF" width="3.967" height="0.958" />

										<rect x="3.64" y="57.983" transform="matrix(0.9985 0.0549 -0.0549 0.9985 3.2175 -0.2205)" fill="#FFFFFF" width="3.967" height="0.958" />

										<rect x="3.864" y="54.865" transform="matrix(0.994 0.1098 -0.1098 0.994 6.1097 -0.3075)" fill="#FFFFFF" width="3.968" height="0.958" />

										<rect x="4.826" y="48.692" transform="matrix(0.9758 0.2186 -0.2186 0.9758 10.9152 -0.2994)" fill="#FFFFFF" width="3.969" height="0.957" />

										<rect x="5.561" y="45.654" transform="matrix(0.9623 0.2721 -0.2721 0.9623 12.8374 -0.3122)" fill="#FFFFFF" width="3.968" height="0.957" />

										<rect x="7.526" y="39.722" transform="matrix(0.9265 0.3762 -0.3762 0.9265 15.8221 -0.6243)" fill="#FFFFFF" width="3.968" height="0.957" />

										<rect x="8.751" y="36.845" transform="matrix(0.9044 0.4266 -0.4266 0.9044 16.9488 -1.0126)" fill="#FFFFFF" width="3.967" height="0.958" />

										<rect x="11.665" y="31.318" transform="matrix(0.852 0.5236 -0.5236 0.852 18.6682 -2.4399)" fill="#FFFFFF" width="3.968" height="0.958" />

										<rect x="13.347" y="28.683" transform="matrix(0.8218 0.5698 -0.5698 0.8218 19.3499 -3.538)" fill="#FFFFFF" width="3.967" height="0.958" />

										<rect x="17.132" y="23.711" transform="matrix(0.7541 0.6568 -0.6568 0.7541 20.5893 -6.6056)" fill="#FFFFFF" width="3.967" height="0.957" />

										<rect x="19.223" y="21.388" transform="matrix(0.7169 0.6971 -0.6971 0.7169 21.2472 -8.5944)" fill="#FFFFFF" width="3.967" height="0.958" />

										<rect x="23.775" y="17.107" transform="matrix(0.6357 0.7719 -0.7719 0.6357 22.959 -13.4775)" fill="#FFFFFF" width="3.968" height="0.957" />

										<rect x="26.221" y="15.16" transform="matrix(0.5923 0.8057 -0.8057 0.5923 24.0993 -16.3485)" fill="#FFFFFF" width="3.968" height="0.958" />

										<rect x="31.415" y="11.687" transform="matrix(0.4998 0.8661 -0.8661 0.4998 27.2431 -22.8424)" fill="#FFFFFF" width="3.966" height="0.957" />

										<rect x="34.148" y="10.169" transform="matrix(0.4516 0.8922 -0.8922 0.4516 29.3157 -26.3978)" fill="#FFFFFF" width="3.967" height="0.958" />

										<rect x="39.844" y="7.598" transform="matrix(0.3505 0.9365 -0.9365 0.3505 34.7293 -33.9275)" fill="#FFFFFF" width="3.967" height="0.957" />

										<rect x="42.789" y="6.551" transform="matrix(0.2986 0.9544 -0.9544 0.2986 38.1116 -37.7988)" fill="#FFFFFF" width="3.967" height="0.958" />

										<rect x="48.83" y="4.952" transform="matrix(0.1914 0.9815 -0.9815 0.1914 46.4163 -45.4818)" fill="#FFFFFF" width="3.966" height="0.957" />

										<rect x="51.907" y="4.405" transform="matrix(0.1372 0.9905 -0.9905 0.1372 51.3322 -49.1667)" fill="#FFFFFF" width="3.967" height="0.957" />

										<rect x="58.129" y="3.822" transform="matrix(0.0274 0.9996 -0.9996 0.0274 62.7614 -55.9069)" fill="#FFFFFF" width="3.967" height="0.958" />

										<rect x="61.254" y="3.788" transform="matrix(-0.0276 0.9996 -0.9996 -0.0276 69.2467 -58.8288)" fill="#FFFFFF" width="3.968" height="0.958" />

										<rect x="67.486" y="4.238" transform="matrix(-0.1378 0.9905 -0.9905 -0.1378 83.7159 -63.441)" fill="#FFFFFF" width="3.968" height="0.957" />

										<rect x="70.575" y="4.719" transform="matrix(-0.1915 0.9815 -0.9815 -0.1915 91.5548 -65.0229)" fill="#FFFFFF" width="3.967" height="0.957" />

										<rect x="76.649" y="6.188" transform="matrix(-0.2986 0.9544 -0.9544 -0.2986 108.4721 -66.3895)" fill="#FFFFFF" width="3.968" height="0.957" />

										<rect x="79.616" y="7.171" transform="matrix(-0.3505 0.9366 -0.9366 -0.3505 117.3653 -66.093)" fill="#FFFFFF" width="3.968" height="0.956" />

										<rect x="85.365" y="9.62" transform="matrix(-0.4516 0.8922 -0.8922 -0.4516 135.8084 -63.2733)" fill="#FFFFFF" width="3.968" height="0.958" />

										<rect x="88.129" y="11.078" transform="matrix(-0.5001 0.866 -0.866 -0.5001 145.1872 -60.6988)" fill="#FFFFFF" width="3.968" height="0.956" />

										<rect x="93.398" y="14.439" transform="matrix(-0.5921 0.8059 -0.8059 -0.5921 163.876 -53.1162)" fill="#FFFFFF" width="3.967" height="0.957" />

										<rect x="95.885" y="16.333" transform="matrix(-0.6357 0.772 -0.772 -0.6357 173.0586 -48.0516)" fill="#FFFFFF" width="3.967" height="0.957" />

										<rect x="100.528" y="20.515" transform="matrix(-0.7167 0.6974 -0.6974 -0.7167 190.6223 -35.4482)" fill="#FFFFFF" width="3.966" height="0.958" />

										<rect x="102.669" y="22.792" transform="matrix(-0.7541 0.6568 -0.6568 -0.7541 198.8504 -27.9188)" fill="#FFFFFF" width="3.967" height="0.958" />

										<rect x="106.559" y="27.682" transform="matrix(-0.8219 0.5697 -0.5697 -0.8219 213.7919 -10.5312)" fill="#FFFFFF" width="3.968" height="0.957" />

										<rect x="108.298" y="30.28" transform="matrix(-0.8519 0.5237 -0.5237 -0.8519 220.3375 -0.7921)" fill="#FFFFFF" width="3.966" height="0.957" />

										<rect x="111.33" y="35.744" transform="matrix(-0.9044 0.4267 -0.4267 -0.9044 231.2503 20.6291)" fill="#FFFFFF" width="3.967" height="0.958" />

										<rect x="112.616" y="38.593" transform="matrix(-0.9265 0.3764 -0.3764 -0.9265 235.479 32.1401)" fill="#FFFFFF" width="3.967" height="0.957" />

										<rect x="114.707" y="44.481" transform="matrix(-0.9622 0.2722 -0.2722 -0.9622 241.2151 56.4544)" fill="#FFFFFF" width="3.969" height="0.958" />

										<rect x="115.507" y="47.502" transform="matrix(-0.9757 0.2189 -0.2189 -0.9757 242.636 69.0802)" fill="#FFFFFF" width="3.968" height="0.957" />

										<rect x="116.602" y="53.655" transform="matrix(-0.9939 0.11 -0.11 -0.9939 242.408 94.8904)" fill="#FFFFFF" width="3.967" height="0.957" />

										<rect x="116.893" y="56.767" transform="matrix(-0.9985 0.0549 -0.0549 -0.9985 240.7166 107.8805)" fill="#FFFFFF" width="3.968" height="0.956" />

										<rect x="116.96" y="63.015" transform="matrix(-0.9985 -0.0554 0.0554 -0.9985 234.1883 133.4789)" fill="#FFFFFF" width="3.967" height="0.958" />
										<path fill="#3a7ced" d="M2.819,66.875c-0.148-1.664-0.232-3.347-0.232-5.051c0-33.178,26.73-60.074,59.706-60.074
		s59.704,26.896,59.704,60.074c0,1.704-0.084,3.387-0.232,5.051h0.87c0.181-1.865,0.282-3.754,0.282-5.666
		C122.916,27.68,95.738,0.5,62.208,0.5C28.68,0.5,1.5,27.68,1.5,61.209c0,1.912,0.101,3.801,0.282,5.666H2.819z" />
									</g>
								</svg>
							</div>
						</div>
						<div class="col-sm-6  biaop">
							<div id="g2"></div>
							<p class="ChartMapTitle">土地抵押占比</p>
							<div class="bg-bq">
								<svg version="1.1" id="图层_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="124.667px" height="72.875px" viewBox="0 0 124.667 72.875" enable-background="new 0 0 124.667 72.875" xml:space="preserve">
									<g>
										<rect x="3.577" y="60.893" fill="#FFFFFF" width="7.935" height="1.368" />

										<rect x="4.226" y="51.855" transform="matrix(0.9864 0.1647 -0.1647 0.9864 8.7627 -0.6321)" fill="#FFFFFF" width="7.935" height="1.366" />

										<rect x="6.354" y="43.044" transform="matrix(0.9459 0.3245 -0.3245 0.9459 14.7501 -0.9831)" fill="#FFFFFF" width="7.936" height="1.368" />

										<rect x="9.903" y="34.706" transform="matrix(0.8795 0.4758 -0.4758 0.8795 18.5109 -2.3369)" fill="#FFFFFF" width="7.936" height="1.367" />

										<rect x="14.776" y="27.064" transform="matrix(0.7892 0.6141 -0.6141 0.7892 20.9908 -5.662)" fill="#FFFFFF" width="7.935" height="1.367" />

										<rect x="20.84" y="20.329" transform="matrix(0.6774 0.7356 -0.7356 0.6774 23.4599 -11.4701)" fill="#FFFFFF" width="7.935" height="1.368" />

										<rect x="27.929" y="14.683" transform="matrix(0.547 0.8371 -0.8371 0.547 27.3122 -19.7401)" fill="#FFFFFF" width="7.935" height="1.368" />

										<rect x="35.851" y="10.281" transform="matrix(0.4019 0.9157 -0.9157 0.4019 33.8564 -29.9031)" fill="#FFFFFF" width="7.936" height="1.369" />

										<rect x="44.39" y="7.244" transform="matrix(0.2457 0.9693 -0.9693 0.2457 44.1616 -40.8953)" fill="#FFFFFF" width="7.936" height="1.368" />

										<rect x="53.311" y="5.653" transform="matrix(0.0827 0.9966 -0.9966 0.0827 58.8571 -51.2702)" fill="#FFFFFF" width="7.935" height="1.368" />

										<rect x="62.375" y="5.552" transform="matrix(-0.0823 0.9966 -0.9966 -0.0823 78.0188 -59.3681)" fill="#FFFFFF" width="7.935" height="1.368" />

										<rect x="71.329" y="6.944" transform="matrix(-0.2452 0.9695 -0.9695 -0.2452 101.1582 -63.4996)" fill="#FFFFFF" width="7.936" height="1.368" />

										<rect x="79.933" y="9.79" transform="matrix(-0.4015 0.9159 -0.9159 -0.4015 127.1795 -62.163)" fill="#FFFFFF" width="7.937" height="1.368" />

										<rect x="87.952" y="14.013" transform="matrix(-0.5467 0.8374 -0.8374 -0.5467 154.4763 -54.2371)" fill="#FFFFFF" width="7.935" height="1.369" />

										<rect x="95.165" y="19.5" transform="matrix(-0.6771 0.7359 -0.7359 -0.6771 181.1056 -39.1067)" fill="#FFFFFF" width="7.936" height="1.368" />

										<rect x="101.378" y="26.098" transform="matrix(-0.789 0.6144 -0.6144 -0.789 204.9179 -16.8114)" fill="#FFFFFF" width="7.936" height="1.367" />

										<rect x="106.421" y="33.628" transform="matrix(-0.8793 0.4763 -0.4763 -0.8793 223.7942 11.9029)" fill="#FFFFFF" width="7.936" height="1.368" />

										<rect x="110.156" y="41.886" transform="matrix(-0.9457 0.325 -0.325 -0.9457 235.886 45.7333)" fill="#FFFFFF" width="7.935" height="1.368" />

										<rect x="112.478" y="50.646" transform="matrix(-0.9863 0.1651 -0.1651 -0.9863 239.7684 82.7333)" fill="#FFFFFF" width="7.936" height="1.368" />
										<rect x="113.33" y="59.668" fill="#FFFFFF" width="7.936" height="1.367" />

										<rect x="3.707" y="64.232" transform="matrix(0.9985 -0.0551 0.0551 0.9985 -3.5597 0.4123)" fill="#FFFFFF" width="3.967" height="0.958" />

										<rect x="3.64" y="57.983" transform="matrix(0.9985 0.0549 -0.0549 0.9985 3.2175 -0.2205)" fill="#FFFFFF" width="3.967" height="0.958" />

										<rect x="3.864" y="54.865" transform="matrix(0.994 0.1098 -0.1098 0.994 6.1097 -0.3075)" fill="#FFFFFF" width="3.968" height="0.958" />

										<rect x="4.826" y="48.692" transform="matrix(0.9758 0.2186 -0.2186 0.9758 10.9152 -0.2994)" fill="#FFFFFF" width="3.969" height="0.957" />

										<rect x="5.561" y="45.654" transform="matrix(0.9623 0.2721 -0.2721 0.9623 12.8374 -0.3122)" fill="#FFFFFF" width="3.968" height="0.957" />

										<rect x="7.526" y="39.722" transform="matrix(0.9265 0.3762 -0.3762 0.9265 15.8221 -0.6243)" fill="#FFFFFF" width="3.968" height="0.957" />

										<rect x="8.751" y="36.845" transform="matrix(0.9044 0.4266 -0.4266 0.9044 16.9488 -1.0126)" fill="#FFFFFF" width="3.967" height="0.958" />

										<rect x="11.665" y="31.318" transform="matrix(0.852 0.5236 -0.5236 0.852 18.6682 -2.4399)" fill="#FFFFFF" width="3.968" height="0.958" />

										<rect x="13.347" y="28.683" transform="matrix(0.8218 0.5698 -0.5698 0.8218 19.3499 -3.538)" fill="#FFFFFF" width="3.967" height="0.958" />

										<rect x="17.132" y="23.711" transform="matrix(0.7541 0.6568 -0.6568 0.7541 20.5893 -6.6056)" fill="#FFFFFF" width="3.967" height="0.957" />

										<rect x="19.223" y="21.388" transform="matrix(0.7169 0.6971 -0.6971 0.7169 21.2472 -8.5944)" fill="#FFFFFF" width="3.967" height="0.958" />

										<rect x="23.775" y="17.107" transform="matrix(0.6357 0.7719 -0.7719 0.6357 22.959 -13.4775)" fill="#FFFFFF" width="3.968" height="0.957" />

										<rect x="26.221" y="15.16" transform="matrix(0.5923 0.8057 -0.8057 0.5923 24.0993 -16.3485)" fill="#FFFFFF" width="3.968" height="0.958" />

										<rect x="31.415" y="11.687" transform="matrix(0.4998 0.8661 -0.8661 0.4998 27.2431 -22.8424)" fill="#FFFFFF" width="3.966" height="0.957" />

										<rect x="34.148" y="10.169" transform="matrix(0.4516 0.8922 -0.8922 0.4516 29.3157 -26.3978)" fill="#FFFFFF" width="3.967" height="0.958" />

										<rect x="39.844" y="7.598" transform="matrix(0.3505 0.9365 -0.9365 0.3505 34.7293 -33.9275)" fill="#FFFFFF" width="3.967" height="0.957" />

										<rect x="42.789" y="6.551" transform="matrix(0.2986 0.9544 -0.9544 0.2986 38.1116 -37.7988)" fill="#FFFFFF" width="3.967" height="0.958" />

										<rect x="48.83" y="4.952" transform="matrix(0.1914 0.9815 -0.9815 0.1914 46.4163 -45.4818)" fill="#FFFFFF" width="3.966" height="0.957" />

										<rect x="51.907" y="4.405" transform="matrix(0.1372 0.9905 -0.9905 0.1372 51.3322 -49.1667)" fill="#FFFFFF" width="3.967" height="0.957" />

										<rect x="58.129" y="3.822" transform="matrix(0.0274 0.9996 -0.9996 0.0274 62.7614 -55.9069)" fill="#FFFFFF" width="3.967" height="0.958" />

										<rect x="61.254" y="3.788" transform="matrix(-0.0276 0.9996 -0.9996 -0.0276 69.2467 -58.8288)" fill="#FFFFFF" width="3.968" height="0.958" />

										<rect x="67.486" y="4.238" transform="matrix(-0.1378 0.9905 -0.9905 -0.1378 83.7159 -63.441)" fill="#FFFFFF" width="3.968" height="0.957" />

										<rect x="70.575" y="4.719" transform="matrix(-0.1915 0.9815 -0.9815 -0.1915 91.5548 -65.0229)" fill="#FFFFFF" width="3.967" height="0.957" />

										<rect x="76.649" y="6.188" transform="matrix(-0.2986 0.9544 -0.9544 -0.2986 108.4721 -66.3895)" fill="#FFFFFF" width="3.968" height="0.957" />

										<rect x="79.616" y="7.171" transform="matrix(-0.3505 0.9366 -0.9366 -0.3505 117.3653 -66.093)" fill="#FFFFFF" width="3.968" height="0.956" />

										<rect x="85.365" y="9.62" transform="matrix(-0.4516 0.8922 -0.8922 -0.4516 135.8084 -63.2733)" fill="#FFFFFF" width="3.968" height="0.958" />

										<rect x="88.129" y="11.078" transform="matrix(-0.5001 0.866 -0.866 -0.5001 145.1872 -60.6988)" fill="#FFFFFF" width="3.968" height="0.956" />

										<rect x="93.398" y="14.439" transform="matrix(-0.5921 0.8059 -0.8059 -0.5921 163.876 -53.1162)" fill="#FFFFFF" width="3.967" height="0.957" />

										<rect x="95.885" y="16.333" transform="matrix(-0.6357 0.772 -0.772 -0.6357 173.0586 -48.0516)" fill="#FFFFFF" width="3.967" height="0.957" />

										<rect x="100.528" y="20.515" transform="matrix(-0.7167 0.6974 -0.6974 -0.7167 190.6223 -35.4482)" fill="#FFFFFF" width="3.966" height="0.958" />

										<rect x="102.669" y="22.792" transform="matrix(-0.7541 0.6568 -0.6568 -0.7541 198.8504 -27.9188)" fill="#FFFFFF" width="3.967" height="0.958" />

										<rect x="106.559" y="27.682" transform="matrix(-0.8219 0.5697 -0.5697 -0.8219 213.7919 -10.5312)" fill="#FFFFFF" width="3.968" height="0.957" />

										<rect x="108.298" y="30.28" transform="matrix(-0.8519 0.5237 -0.5237 -0.8519 220.3375 -0.7921)" fill="#FFFFFF" width="3.966" height="0.957" />

										<rect x="111.33" y="35.744" transform="matrix(-0.9044 0.4267 -0.4267 -0.9044 231.2503 20.6291)" fill="#FFFFFF" width="3.967" height="0.958" />

										<rect x="112.616" y="38.593" transform="matrix(-0.9265 0.3764 -0.3764 -0.9265 235.479 32.1401)" fill="#FFFFFF" width="3.967" height="0.957" />

										<rect x="114.707" y="44.481" transform="matrix(-0.9622 0.2722 -0.2722 -0.9622 241.2151 56.4544)" fill="#FFFFFF" width="3.969" height="0.958" />

										<rect x="115.507" y="47.502" transform="matrix(-0.9757 0.2189 -0.2189 -0.9757 242.636 69.0802)" fill="#FFFFFF" width="3.968" height="0.957" />

										<rect x="116.602" y="53.655" transform="matrix(-0.9939 0.11 -0.11 -0.9939 242.408 94.8904)" fill="#FFFFFF" width="3.967" height="0.957" />

										<rect x="116.893" y="56.767" transform="matrix(-0.9985 0.0549 -0.0549 -0.9985 240.7166 107.8805)" fill="#FFFFFF" width="3.968" height="0.956" />

										<rect x="116.96" y="63.015" transform="matrix(-0.9985 -0.0554 0.0554 -0.9985 234.1883 133.4789)" fill="#FFFFFF" width="3.967" height="0.958" />
										<path fill="#3a7ced" d="M2.819,66.875c-0.148-1.664-0.232-3.347-0.232-5.051c0-33.178,26.73-60.074,59.706-60.074
		s59.704,26.896,59.704,60.074c0,1.704-0.084,3.387-0.232,5.051h0.87c0.181-1.865,0.282-3.754,0.282-5.666
		C122.916,27.68,95.738,0.5,62.208,0.5C28.68,0.5,1.5,27.68,1.5,61.209c0,1.912,0.101,3.801,0.282,5.666H2.819z" />
									</g>
								</svg>
							</div>
						</div>
					</div>

					<div class="clearfix" style="overflow-x: hidden; height: 220px;">
						<p class="ChartMapTitle BigSize">大额资产分布情况</p>
						<div class="circles clearfix">
							<div class="fouth circle col-sm-4">
								<canvas class="va" width="160" height="160"></canvas>
								<strong class="yuq"><b>华南</b>50<i>%</i></strong>
								<span class="number_d">548846.17<sub>万元</sub></span>
							</div>

							<div class="fifth circle col-sm-4">
								<canvas class="va" width="160" height="160"></canvas>
								<strong class="yuq"><b>华北</b>25<i>%</i></strong>
								<span class="number_d">548846.17<sub>万元</sub></span>
							</div>

							<div class="sixth circle col-sm-4">
								<canvas class="va" width="160" height="160"></canvas>
								<strong class="yuq"><b>华东</b>10<i>%</i></strong>
								<span class="number_d">548846.17<sub>万元</sub></span>
							</div>

						</div>
					</div>

				</div>
			</div>

			<div class="row">
				<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12 first">
					<div class="ChartBoxIndex clearfix  box-shadow con ">
						<h2 class="TitleBar noBG"><span>股权管理</span><a href="javascript:;"><img src="img/BI_BTN.png"></a></h2>
						<p class="ChartMapTitle">印章统计</p>
						<div class="clearfix">
							<h2 class="total">印章总数2876枚</h2>
							<div class="circles">
								<div class="first circle col-sm-4">
									<canvas class="va" width="160" height="160"></canvas>
									<strong>2014</strong>
									<span>法人章数量</span>
								</div>

								<div class="second circle col-sm-4">
									<canvas class="va" width="160" height="160"></canvas>
									<strong>436<i></i></strong>
									<span>专用章数量</span>
								</div>

								<div class="third circle col-sm-4">
									<canvas class="va" width="160" height="160"></canvas>
									<strong>436</strong>
									<span>其他章数量</span>
								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
					<div class="ChartBoxIndex clearfix  box-shadow con">
						<h2 class="TitleBar noBG noBG_longer"><span>股权管理</span><a href="javascript:;"><img src="img/BI_BTN.png"></a></h2>
						<div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">

							<div class="xput BgColor">
								<p class="ChartMapTitle">股权关系图</p>
								<img src="img/BI_31.png">
							</div>
						</div>
						<div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
							<ul class="CompanyGp">
								<li class="BgColor">
									<p class="companyName">海航基础 <span>600515</span></p>
									<p><span>总市值：<i>482.20亿</i></span><span>流通市值：<i>52.7亿</i></span><span>股票质押率：<i>46%</i></span></p>
								</li>
								<li class="BgColor">
									<p class="companyName">海航基础 <span>600515</span></p>
									<p><span>总市值：<i>482.20亿</i></span><span>流通市值：<i>52.7亿</i></span><span>股票质押率：<i>46%</i></span></p>
								</li>
								<li class="BgColor">
									<p class="companyName">海航基础 <span>600515</span></p>
									<p><span>总市值：<i>482.20亿</i></span><span>流通市值：<i>52.7亿</i></span><span>股票质押率：<i>46%</i></span></p>
								</li>
								<li class="BgColor">
									<p class="companyName">海航基础 <span>600515</span></p>
									<p><span>总市值：<i>482.20亿</i></span><span>流通市值：<i>52.7亿</i></span><span>股票质押率：<i>46%</i></span></p>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12 last">
					<div class="ChartBoxIndex clearfix  box-shadow con ">
						<h2 class="TitleBar noBG"><span>督办提醒</span><a href="javascript:;"><img src="img/BI_BTN.png"></a></h2>
						<div class="clearfix cardBox">
							<div class="col-sm-3">
								<div class="card-opacity">
									<label>
										<img src="img/BI_44_zc.png"><i>13</i>
									</label>
									<span>资产抵押<br>到期提醒</span>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="card-opacity">
									<label>
										<img src="img/BI_47_gq.png"><i>8</i>
									</label>
									<span>股权抵押<br>到期提醒</span>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="card-opacity">
									<label>
										<img src="img/BI_44_qz.png"><i>10</i>
									</label>
									<span>权证借阅<br>到期提醒</span>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="card-opacity">
									<label>
										<img src="img/BI_44_qz.png"><i>10</i>
									</label>
									<span>权证借阅<br>到期提醒</span>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
		<script src="js/jquery-1.11.0.js"></script>
		<script type="text/javascript" src="js/dist/circle-progress.js"></script>
		<script type="text/javascript" src="js/examples.js"></script>
		<script type="text/javascript" src="js/dist/raphael-2.1.4.min.js"></script>
		<script type="text/javascript" src="js/dist/justgage.js"></script>
		<script>
			var g1, g2, g3, g4;
			window.onload = function() {
				var g1 = new JustGage({
					id: "g1",
					value: getRandomInt(0, 100),
					min: 0,
					max: 100,
					label: "%"
				});
				var g2 = new JustGage({
					id: "g2",
					value: getRandomInt(0, 100),
					min: 0,
					max: 100,
					label: "%",
					//					title: "Small Buddy"
				});
				setInterval(function() {
					g1.refresh(getRandomInt(50, 100));
					g2.refresh(getRandomInt(50, 100));
				}, 2500);
			};
		</script>
	</body>

</html>