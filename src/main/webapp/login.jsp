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
<title></title>
<link rel="stylesheet" href="<c:url value="/css/font/iconfont.css"/>" />
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>" />
<link rel="stylesheet" href="<c:url value="/css/login.css"/>" />

<!--[if lt IE 9]>
    <link href="css/bootstrap-ie8.css" rel="stylesheet">
<![endif]-->
<script type="text/javascript" src="<c:url value="/js/jquery.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/login.js"/>"></script>
</head>
<body>
	<div class="login-bg">
		<P class="logo"><img src="<c:url value="/img/gs-big-01.png"/>"></P>
		<div class="login-box">
			<form id="form1" name="form1" method="post">
				<p><img src="<c:url value="/img/login-gs_06.png"/>"></p>
				<span>
					<label>用户名</label>
					<input type="text" class="form-control" id="userName" name="username" placeholder="用户名" />
				</span>
				<span>
					<label>密码</label>
					<input type="password" class="form-control" id="password" name="password" placeholder="密码" />
				</span>
				<span class="sgin-box">
					<a href="javascript:void(0);" id="submit" class="sgin">登录 </a>
				</span>
				<span class="copyright">
					copyright©2017.上海国盛集团有限公司
				</span>
			</form>
			<div class="img-box">
				<img src="<c:url value="/img/login-gs_03.png"/>">
			</div>
		</div>
	</div>
</body>
</html>
<script>
$(document).ready(function(){
		$("body").height($(window).height());
		$(window).resize(function() {
	  	$("body").height($(window).height());
	});
})
</script>
