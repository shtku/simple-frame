<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
<meta charset="utf-8" />
<title></title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="" name="author" />

<link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet"
	type="text/css" />
<link href="<c:url value="/css/layout.min.css"/>" rel="stylesheet"
	type="text/css" />
<link href="<c:url value="/css/font/iconfont.css"/>" rel="stylesheet"
	type="text/css" />
<link href="<c:url value="/css/gold.min.css"/>" rel="stylesheet"
	type="text/css" id="style_color" />

<script src="<c:url value="/js/jquery.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"
	type="text/javascript"></script>
<script src="<c:url value="/js/menu.js"/>" type="text/javascript"></script>

<link href="<c:url value="/css/window.css"/>" rel="stylesheet" />
<script src="<c:url value="/js/window.js"/>"></script>
</head>

<body
	class="page-header-fixed page-sidebar-closed-hide-logo page-content-white page-sidebar-closed page-sidebar-menu-closed">
	<div id="tanchuceng">
		<div class="mask">
			<div class="tanc"></div>
		</div>
	</div>
	<div class="page-wrapper">
		<div class="page-header navbar navbar-fixed-top">
			<!-- BEGIN HEADER INNER -->
			<div class="page-header-inner ">
				<!-- BEGIN LOGO -->
				<div class="page-logo">
					<a href="javascript:;"> <img
						src="<c:url value="/images/gslogo1-01.png"/>" alt="logo"
						class="logo-default"
						style="width: 44px;height: 44px;margin: 5px 2px 2px 2px;" /> <img
						src="<c:url value="/images/gs-big-01.png"/>" alt="logo"
						class="logo-default1" style="height: 44px; display: none;" />
					</a>
					<div class="menu-toggler sidebar-toggler">
						<span></span>
					</div>
				</div>
				<img src="<c:url value="/images/system-name.png"/>"
					style="height: 50px;float: left;">
				<div class="top-menu">
					<!--提示栏开始 -->
					<ul class="nav navbar-nav pull-right">
						<li class="dropdown dropdown-extended dropdown-notification"
							id="header_notification_bar"><a href="javascript:;"
							onclick="getConfirmCounts();" class="dropdown-toggle"
							data-toggle="dropdown" data-hover="dropdown"
							data-close-others="true"> <i class="fa big-size icon-bell"></i>
								<span class="badge badge-default" id="sumCount"> </span> </a>
							<ul class="dropdown-menu">
								<li class="external">
									<h3>
										<span class="bold">工作提示</span>
									</h3></li>
								<li>
									<ul class="dropdown-menu-list scroller" style="height: 250px;"
										data-handle-color="#637283">
										<li><a href="javascript:;"
											onclick="locate('companyApproveList.do');"> <span
												class="time" id="companyApprove"></span> <span
												class="details"> <span
													class="label label-sm label-icon label-success"> <i
														class="fa fa-plus"></i> </span> 企业信息确认 </span> </a></li>
										<li><a href="javascript:;"
											onclick="locate('assetDisposalApprove.do');"> <span
												class="time" id="AssetDisposalApprove"></span> <span
												class="details"> <span
													class="label label-sm label-icon label-danger"> <i
														class="fa fa-bolt"></i> </span> 资产运作确认 </span> </a></li>
										<li><a href="javascript:;"
											onclick="locate('gsSafeRectifyConfirmList.do');"> <span
												class="time" id="safeRectifyConfirm"></span> <span
												class="details"> <span
													class="label label-sm label-icon label-warning"> <i
														class="fa fa-bell-o"></i> </span> 安全整改确认 </span> </a></li>
										<li><a href="javascript:;"
											onclick="locate('gsBeforeLeaseOfSafeInformationApproveList.do');">
												<span class="time"
												id="gsBeforeLeaseOfSafeInformationApproveAction"></span> <span
												class="details"> <span
													class="label label-sm label-icon label-warning"> <i
														class="fa fa-bell-o"></i> </span> 租赁前安全检查确认 </span> </a></li>
										<li><a href="javascript:;"
											onclick="locate('gsBaseinfoEstateApproveList.do');"> <span
												class="time" id="gsBaseinfoEstateApproveListAction"></span>
												<span class="details"> <span
													class="label label-sm label-icon label-info"> <i
														class="fa fa-bullhorn"></i> </span> 房地产资源确认 </span> </a></li>
									</ul></li>
							</ul></li>

						<li class="dropdown dropdown-extended dropdown-notification"
							id="header_task_bar"><a href="javascript:;"
							onclick="getRemindCounts();" class="dropdown-toggle"
							data-toggle="dropdown" data-hover="dropdown"
							data-close-others="true"> <i class="fa big-size icon-riqi-"></i>
								<span class="badge badge-default" id="sumCount1"> </span> </a>
							<ul class="dropdown-menu">
								<li class="external">
									<h3>
										<span class="bold">合同提示</span>
									</h3> <!-- <a href="app_todo.html">view all</a> --></li>
								<li>
									<ul class="dropdown-menu-list scroller" style="height: 250px;"
										data-handle-color="#637283">
										<li><a href="javascript:;"
											onclick="locate('remindGsBaseinfoEstateQueryList.do')"> <span
												class="time" id="remindGsBaseinfoEstateMain"></span> <span
												class="details"> <span
													class="label label-sm label-icon label-warning"> <i
														class="fa fa-bell-o"></i> </span>权证异常提醒</span> <!-- span class="task">
                                                        <span class="desc">New release v1.2 </span>
														<span class="percent">30%</span>
														</span>
														<span class="progress">
                                                        <span style="width: 40%;" class="progress-bar progress-bar-success" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100">
                                                            <span class="sr-only">40% Complete</span>
														</span>
														</span> --> </a></li>
										<li><a href="javascript:;"
											onclick="locate('remindLeaseContractQueryList.do')"> <span
												class="time" id="remindGsLeaseContract"></span> <span
												class="details"> <span
													class="label label-sm label-icon label-success"> <i
														class="fa fa-plus"></i> </span>租赁合同到期提醒</span> <!-- <span class="task">
                                                        <span class="desc">Application deployment</span>
														<span class="percent">65%</span>
														</span>
														<span class="progress">
                                                        <span style="width: 65%;" class="progress-bar progress-bar-danger" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100">
                                                            <span class="sr-only">65% Complete</span>
														</span>
														</span> --> </a></li>
										<li><a href="javascript:;"
											onclick="locate('companyMarkQueryList.do')"> <span
												class="time" id="markCompanyList"></span> <span
												class="details"> <span
													class="label label-sm label-icon label-success"> <i
														class="fa fa-plus"></i> </span>标记企业列表</span> </a></li>
										<li><a href="javascript:;"
											onclick="locate('companyBaseLackList.do')"> <span
												class="time" id="baseLackCounts"></span> <span
												class="details"> <span
													class="label label-sm label-icon label-success"> <i
														class="fa fa-plus"></i> </span>企业基本信息缺失列表</span> </a></li>
										<li><a href="javascript:;"
											onclick="locate('remindCompanyModify.do')"> <span
												class="time" id="remindCompanyModify"></span> <span
												class="details"> <span
													class="label label-sm label-icon label-success"> <i
														class="fa fa-plus"></i> </span>公司信息更新提醒</span> </a></li>
										<!-- <li>
													<a href="javascript:;">
														<span class="task">
                                                        <span class="desc">Mobile app release</span>
														<span class="percent">98%</span>
														</span>
														<span class="progress">
                                                        <span style="width: 98%;" class="progress-bar progress-bar-success" aria-valuenow="98" aria-valuemin="0" aria-valuemax="100">
                                                            <span class="sr-only">98% Complete</span>
														</span>
														</span>
													</a>
												</li>
												<li>
													<a href="javascript:;">
														<span class="task">
                                                        <span class="desc">Database migration</span>
														<span class="percent">10%</span>
														</span>
														<span class="progress">
                                                        <span style="width: 10%;" class="progress-bar progress-bar-warning" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100">
                                                            <span class="sr-only">10% Complete</span>
														</span>
														</span>
													</a>
												</li>
 -->
									</ul></li>
							</ul></li>

						<li class="dropdown dropdown-user"><a href="javascript:;"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-close-others="true"> <i
								class="fa big-size icon-caidan"></i> <span
								class="username username-hide-on-mobile">快捷菜单 </span> </a>
							<ul class="dropdown-menu dropdown-menu-default big-set">
								<li class="external">
									<h3>
										<span class="bold">快捷菜单入口<a href="javascript:void(0);"
											onclick="getIndividualMenu();">刷新</a>
										</span>
									</h3> <a href="individualStartMenu.do" target="mainFrame"
									class="zidy">自定义</a></li>
								<li id="kuaijie"><a href="/simple_frame/system/_exit">
										<i class="fa icon-chain-broken"></i>
										<p>注销</p> </a></li>
							</ul></li>
						<li class="dropdown dropdown-quick-sidebar-toggler"><a
							href="/simple_frame/system/_exit" class="dropdown-toggle"> <i
								class="iconfont icon-chain-broken"></i> </a></li>

					</ul>
					<!-- 提示栏结束 -->
				</div>

				<!-- END TOP NAVIGATION MENU -->
			</div>
			<!-- END HEADER INNER -->
		</div>

		<div class="clearfix"></div>

		<div class="page-container">
			<div class="page-sidebar-wrapper">

				<div class="page-sidebar navbar-collapse collapse" id="_menu">
					<!-- start SIDEBAR MENU -->
					${menuList }
					<!-- END SIDEBAR MENU -->
				</div>
				<!-- END SIDEBAR -->
			</div>

			<!-- END SIDEBAR -->
			<!-- BEGIN CONTENT -->
			<div class="page-content-wrapper">
				<!-- BEGIN CONTENT BODY -->
				<div class="page-content">
					<iframe id="mainFrame" name="mainFrame" scrolling="no"
						src="homepage.do" frameborder="0"
						style="padding: 0px; width: 100%; "></iframe>
				</div>

			</div>
			<!-- END CONTAINER -->
			<!-- BEGIN FOOTER -->
			<div class="page-footer">
				<div class="page-footer-inner">
					2016 &copy; <a target="_blank" href="http://www.sh-gsg.com">SpringMVC框架</a>
					&nbsp;|&nbsp; <a href="http://www.softline.sh.cn" title="softline"
						target="_blank">技术支持：上海软中信息技术有限公司</a>
				</div>
				<div class="scroll-to-top">
					<i class="fa icon-arrow-up"></i>
				</div>
			</div>
			<!-- END FOOTER -->
		</div>
	</div>
</body>
<script>
	$(function() {
		getConfirmCounts();
		getRemindCounts();
	});

	var set_height = function(){
		var subWeb = window.frames["mainFrame"].document;
		var ifm = $('#mainFrame')[0];
		
		// 子页面内容高度
		var sub_height = 16;// 设置给子页面html和body的冗余高度
		$(subWeb.body).find('>*:not(.modal,.modal-backdrop)').each(function(){
			sub_height += this.offsetHeight;
		});
		
		// menu的高度
		var menu_height;
		var menu = $('.page-sidebar-menu');
		if(menu.hasClass('page-sidebar-menu-closed')){
			menu_height = 40;
			$(menu).find('.nav-item').each(function(){
				var last = $(this).find('.sub-menu')[0];
				menu_height = Math.max(menu_height,this.clientHeight+this.offsetTop+last.offsetHeight+last.offsetTop);
			});
		}else{
			menu_height = $('.page-sidebar')[0].clientHeight;
		}
		
		// 当前页面高度-头-尾
		var page_height = document.documentElement.clientHeight-$('.page-header')[0].offsetHeight-$('.page-footer')[0].offsetHeight;
		
		var height = Math.max(sub_height,menu_height,page_height);
		var h = parseInt(ifm.height);
		if(h != height){
			ifm.height = height;
			return true;
		}
		return false;
	};
	var scroll_sidebar = function() {
		setTimeout(set_height, 15);
	};
	setInterval(scroll_sidebar,1000);
	$('#_menu').click(scroll_sidebar);
	$('.menu-toggler.sidebar-toggler').click(scroll_sidebar);

	var json = Constant.json;
	var treeJson = json;
	Constant.menus = new Array();
	for ( var i = 0; i < treeJson.length; i++) {
		refreshTreeNode(treeJson[i])
	}
	function refreshTreeNode(n) {
		var children = n.children;
		Constant.menus[n.href] = n.allTitle;
		if (children) {
			for ( var i = 0; i < children.length; i++) {
				var childNode = children[i];
				childNode.allTitle = childNode.text;
				refreshTreeNode(childNode);
			}
		}
	}

	/********异步获取快捷菜单*********************/
	function getIndividualMenu() {
		var a = $(document).find(".addInv").length;
		if (a > 0) {
			$(document).find(".addInv").each(function() {
				$(this).remove();
			});
		}
		$
				.ajax({
					url : "servlet/GetIndividualStartMenuServlet",
					type : "post",
					dataType : "json",
					success : function(data) {

						for ( var i = 0; i < data.length; i++) {
							var $_li = $("<li class='addInv'></li>");
							var $_a = $("<a href='"+data[i].path+"' target='mainFrame'></a>");
							var $_i = $("<i class='"+data[i].imgFile+"'></i>");
							// var $_i = $("<i class='fa icon-anquan'></i>");
							var $_p = $("<p>" + data[i].name + "</p>");
							$_a.append($_i);
							$_a.append($_p);
							$_li.append($_a);
							$("#kuaijie").before($_li);
						}
					}
				});
	}
	getIndividualMenu();
</script>

<script>
	//wym,异步获取各确认列表记录数
	function getConfirmCounts() {
		$
				.ajax({
					url : "servlet/getConfiemCountsServlet",
					type : "POST",
					dataType : "text",
					success : function(data) {
						if (data != "") {
							//console.log(data);
							//解析josn字符串
							var arr = $.parseJSON(data);
							//console.log(data);
							var sumCount = 0;
							sumCount = parseInt(arr[0].companyApprove)
									+ parseInt(arr[0].AssetDisposalApprove)
									+ parseInt(arr[0].safeRectifyConfirm)
									+ parseInt(arr[0].gsBeforeLeaseOfSafeInformationApproveAction)
									+ parseInt(arr[0].gsBaseinfoEstateApproveListAction);
							//console.log(sumCount);			
							$("#sumCount").text(sumCount);
							//将统计个数放入铃铛
							$("#companyApprove").text(
									arr[0].companyApprove + "条");
							$("#AssetDisposalApprove").text(
									arr[0].AssetDisposalApprove + "条");
							$("#safeRectifyConfirm").text(
									arr[0].safeRectifyConfirm + "条");
							$("#gsBeforeLeaseOfSafeInformationApproveAction")
									.text(
											arr[0].gsBeforeLeaseOfSafeInformationApproveAction
													+ "条");
							$("#gsBaseinfoEstateApproveListAction").text(
									arr[0].gsBaseinfoEstateApproveListAction
											+ "条");

							//console.log("finish..");
						}
					},
					error : function(data) {
						/*parent.win.generalAlert("ajax获取失败！"); */
					}
				});

	}

	//cf,异步获取各提醒列表记录数
	function getRemindCounts() {
		$.ajax({
			url : "servlet/getRemindCountsServlet",
			type : "POST",
			dataType : "text",
			success : function(data) {
				if (data != "") {
					console.log(data);
					//解析josn字符串
					var arr = $.parseJSON(data);
					console.log(data);
					var sumCount1 = 0;
					sumCount1 = parseInt(arr[0].remindGsBaseinfoEstateMain)
							+ parseInt(arr[0].remindGsLeaseContract)
							+ parseInt(arr[0].markCompanyList)
							+ parseInt(arr[0].baseLackCounts)
							+ parseInt(arr[0].remindCompanyModify);
					$("#sumCount1").text(sumCount1);
					//将统计个数放入铃铛
					$("#remindGsBaseinfoEstateMain").text(
							arr[0].remindGsBaseinfoEstateMain + "条");
					$("#remindGsLeaseContract").text(
							arr[0].remindGsLeaseContract + "条");
					$("#markCompanyList").text(arr[0].markCompanyList + "条");
					$("#baseLackCounts").text(arr[0].baseLackCounts + "条");
					$("#remindCompanyModify").text(
							arr[0].remindCompanyModify + "条");
				}
			},
			error : function(data) {
				/*parent.win.generalAlert("ajax获取失败！");*/
			}
		});

	}

	//wym,各确认页面跳转方法
	function locate(url) {
		$("#mainFrame").prop("src", url);
	}
</script>
</html>


<!--[if lt IE 9]>
	<script src="<c:url value="/js/respond.min.js"/>"></script>
	<script src="<c:url value="/js/excanvas.min.js"/>"></script> 
	<script src="<c:url value="/js/ie8.fix.min.js"/>"></script> 
<![endif]-->


