<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<!-- <link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/font/iconfont.css" />
		<link rel="stylesheet" href="css/custom.css" /> -->
		<link href="<c:url value="/assets/global/plugins/font/iconfont.css"/>" rel="stylesheet" type="text/css" />
	</head>
	<style>
		body{
			background-color: #eee;
		}
		i.fa.fa-icon-test2{
			display: block;
			margin: 80px auto 0px;width: 220px;
			height: 220px;
			font-size: 200px;line-height: 220px;
			color: #999;
		}
		h4{
			display: block;
			width: 220px;
			margin: 5px auto;text-align: left;
			font-size: 18px;font-weight: 600;color: #666;
		}
		h4 a.btn{
			padding: 6px 12px;
			border:solid 1px #aaa;
			color: #aaa;
			float: right;
			margin-top: 10px;
		}
	</style>
	<body>
		<div class="error-404">
			<i class="fa fa-icon-test2"></i>
			<h4>啊哦~页面找不到了……<!-- <a href="#" class="btn">返回</a> --></h4>
		</div>
	</body>
</html>
