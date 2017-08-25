<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html>
<head>
<meta charset="utf-8">
<title></title>
<meta charset="utf-8" />
<title>用户管理列表</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="" name="author" />

<link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet"
	type="text/css" />
<link href="<c:url value="/css/layout.min.css"/>" rel="stylesheet"
	type="text/css" />
<link href="<c:url value="/css/font/iconfont.css"/>" rel="stylesheet"
	type="text/css" />
<link href="<c:url value="/css/custom.css"/>" rel="stylesheet"
	type="text/css" />
<link href="<c:url value="/css/bootstrap-select.css"/>" rel="stylesheet"
	type="text/css" />
</head>

<body>
	<div class="page-bar">
		<ul class="page-breadcrumb">
			<li><a href="#">首页</a> <i class="fa fa-circle"></i></li>
			<li><span id="subTitle">系统设置 &gt; 用户管理</span></li>
		</ul>
		<div class="page-toolbar">
			<span class="pull-right tooltips btn btn-sm"> <fmt:formatDate
					value="<%=new java.util.Date()%>" type="date" dateStyle="full" />
			</span>
		</div>
	</div>
	<!-- page-bar -->

	<div class="middle-content">
		<!-- <span class="title-row">角色管理</span> -->
		<div class="search-list row">
			<form id="_form1">
				<div class="uu clearfix">
					<div class="col-sm-4 col-md-4 col-lg-4 col-xs-12  ">
						<div class="conditions clearfix">
							<span class="search-text">员工名称：</span>
							<div class="form-r col-lg-12 col-sm-12 col-xs-12 col-md-12">
								<input id="vcName" name="vcName" type="text"
									value="${usersEntity.vcName}" class="form-control other-style">
							</div>
						</div>
					</div>

					<div class="col-sm-4 col-md-4 col-lg-4 col-xs-12  ">
						<div class="conditions clearfix">
							<span class="search-text">员工账号：</span>
							<div class="form-r col-lg-12 col-sm-12 col-xs-12 col-md-12">
								<input id="vcAccount" name="vcAccount" type="text"
									value="${usersEntity.vcAccount}"
									class="form-control other-style">
							</div>
						</div>
					</div>

					<div class="col-sm-4 col-md-4 col-lg-4 col-xs-12 btn-box">
						<a href="javascript:;" onclick="qrybtn();"
							class="btn btn-sm btn-search">查询</a>
					</div>
				</div>
			</form>
			<div class="table-box">
				<table class="search-order">
					<tr>
						<th style="text-align:center" width="5%">序号</th>
						<th style="text-align:center" width="15%">员工编号</th>
						<th style="text-align:center" width="15%">姓名</th>
						<th style="text-align:center" width="15%">账号</th>
						<th style="text-align:center" width="35%">机构全称</th>
						<th style="text-align:center" width="20%">操作</th>
					</tr>
					<c:if test="${!empty requestScope.usersList}">
						<c:set var="recordNumber" value="${(PAGER.currentPage - 1) * 10 }" />
						<c:forEach items="${requestScope.usersList}" var="l"
							varStatus="status">
							<tr class="odd gradeX">
								<td class="tl-center">${recordNumber+status.index + 1}</td>
								<td><c:out value="${l.vcEmployeeId}"></c:out>
								</td>
								<td><c:out value="${l.vcName}"></c:out>
								</td>
								<td><c:out value="${l.vcAccount}"></c:out>
								</td>
								<td><c:out value="${l.vcFullName}"></c:out>
								</td>
								<td>
									<a href="javascript:;" onclick="load('/simple_frame/sys/users/_role?vcEmployeeId=${l.vcEmployeeId}')" class="table-link" title="角色配置"><I class="fa icon-edit"></I></a>
								</td>
							</tr>
						</c:forEach>
					</c:if>
					<c:if test="${empty requestScope.usersList}">
						<tr class="odd gradeX">
							<td colspan="8" align="center">查询无记录!</td>
						</tr>
					</c:if>
				</table>
			</div>
		</div>
	</div>

	<div id="modal" class="modal fade container modal-new">
		<div class="jump-floor-1">
			<div class="naturefloor box-shadow">
				<a class="close" href="#" onclick=""><i class="fa icon-close"></i></a>
				<iframe id="second-iframe" frameborder="0" width="100%" height="100%" src=""></iframe>
			</div>
		</div>
	</div>
</body>
<script src="<c:url value="/js/jquery-1.11.0.js"/>"></script>
<script src="<c:url value="/js/jquery.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap-select.js"/>"></script>
<script src="<c:url value="/js/menu.js"/>"></script>
<script type="text/javascript">
	function qrybtn() {
		var form = document.forms[0];
		form.action = "/simple_frame/sys/users/_list";
		form.method = "post";
		form.submit();
	}

	var load = function(url,data){
		$('#modal').modal()
		return $($('#modal iframe').attr('src',url)[0].contentWindow)
	}
	var close = function(url,data){
		$('#modal').modal('hide')
		$('#modal iframe').attr('src','')
	}
	$('a.close').click(close)
	//$('#modal').modal();
</script>
</html>
