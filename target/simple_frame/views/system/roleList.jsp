<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
		<title>角色管理列表</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta content="width=device-width, initial-scale=1" name="viewport" />
		<meta content="" name="author" />

		<link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/css/layout.min.css"/>" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/css/font/iconfont.css"/>" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/css/custom.css"/>" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/css/bootstrap-select.css"/>" rel="stylesheet" type="text/css" />
	</head>

	<body>
	
	<form:form id="form" action="/simple_frame/role/roleQueryList" modelAttribute="role">
		<input type="submit" id="query" name="query" style="display:none"/>
			<div class="page-bar">
				<ul class="page-breadcrumb">
					<li>
						<a href="homepage.do">首页</a>
						<i class="fa fa-circle"></i>
					</li>
					<li>
						<span id="subTitle">系统设置 &gt; 角色管理</span>
					</li>
				</ul>
				<div class="page-toolbar">
					<span class="pull-right tooltips btn btn-sm">
						<fmt:formatDate value="<%=new java.util.Date()%>" type="date" dateStyle="full" />
						&nbsp;&nbsp;${com_ssc_mvc_user.account.realname } 
						<c:choose>
							<c:when test="${fn:length(com_ssc_mvc_user.deps) < 2}">
							(${com_ssc_mvc_user.deps[0].name })
							</c:when>
							<c:otherwise>
								<select id="dep" name="depId">
									<c:forEach items="${com_ssc_mvc_user.deps}" var="dep">
										<option label="${dep.name }" value="${dep.id }" />
									</c:forEach>
								</select>
							</c:otherwise>
						</c:choose>
					</span>
				</div>
			</div><!-- page-bar -->
	
			<div class="middle-content">
				<!-- <span class="title-row">角色管理</span> -->
				<div class="search-list row">
					<div class="uu clearfix">
						<div class="col-sm-4 col-md-4 col-lg-4 col-xs-12  ">
							<div class="conditions clearfix">
								<span class="search-text">角色名称：</span>
								<div class="form-r col-lg-12 col-sm-12 col-xs-12 col-md-12">
									<input id="name" name="name" type="text" value="${role.name}" class="form-control other-style">
								</div>
							</div>
						</div>
						<div class="col-sm-5 col-md-5 col-lg-5 col-xs-12  ">
						</div>
						<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12 btn-box">
							<a href="javascript:;" onclick="document.getElementById('query').click();" class="btn btn-sm btn-search">查询</a>
							<a href="javascript:;" onclick="load('/simple_frame/role/roleAdd')" class="btn btn-sm btn-search">新增</a>
						</div>
					</div>
					
					<div class="table-box">
						<table class="search-order">
							<tr>
								<th>角色名称</th>
								<th>角色描述</th>
								<th>操作</th>
							</tr>
							<c:if test="${!empty requestScope.list}">
								<c:forEach items="${requestScope.list}" var="result">
									<tr>
										<td>
											<c:out value="${result.name}"></c:out>
										</td>
										<td>
											<c:out value="${result.description}"></c:out>
										</td>
										<td>
											<a href="javascript:;" onclick="load('/simple_frame/role/roleModify?id=${result.id}')" class="table-link" title="编辑"><I class="fa icon-edit"></I></a>
											<a href="javascript:void(0);" onclick="delet('/simple_frame/role/roleDelete?delId=${result.id }');" title="删除"><i class="fa icon-remove"></i></a>
										</td>
									</tr>
								</c:forEach>
							</c:if>
							
							<c:if test="${empty requestScope.list}">
								<tr>
									<td colspan="4" align="center">
										无记录
									</td>
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
			
		</form:form>
	</body>
<script src="<c:url value="/js/jquery.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap-select.js"/>"></script>
<script src="<c:url value="/js/menu.js"/>"></script>
<script type="text/javascript">
	

	function delet(url) {
		if(confirm('确认要删除这角色吗？')){
			window.location = url;
		}
	/*	parent.win.confirm('确认要删除这角色吗？',function(r){
			if(r){
				parent.Constant.operationState = true;
				window.location = url;
			}
		});*/
	}
	
	var load = function(url,data){
		$('#modal').modal();
		return $($('#modal iframe').attr('src',url)[0].contentWindow);
	}
	var close = function(url,data){
		$('#modal').modal('hide')
		$('#modal iframe').attr('src','')
	}
	$('a.close').click(close)
	
/*	function openFatherDialog(src){
		parent.window.openDialog($('.jump-floor-1')[0]);
		parent.$("#second-iframe").attr("src",src);
	}*/
</script>
</html>
