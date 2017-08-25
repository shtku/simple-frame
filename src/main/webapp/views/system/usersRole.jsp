<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<meta charset="utf-8" />
		<title>用户编辑界面</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta content="width=device-width, initial-scale=1" name="viewport" />
		<meta content="" name="author" />

		<link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/css/layout.min.css"/>" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/css/font/iconfont.css"/>" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/css/custom.css"/>" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/css/scroll/optiscroll.css"/>" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/css/bootstrap-select.css"/>" rel="stylesheet" type="text/css" />
		
	</head>
	
	<body>
		<div id="m-wrapper" class="m-wrapper optiscroll">
			<form id="form1">
				<div class="page-bar">
					<span class="title-row"><i class="fa big-size icon-xiangxipage"></i>角色维护 </span>
				</div>
				<div class="middle-content tc-floor">
					<div class="het-detail second user row clearfix">
						
						<h5 class="list">用户基本信息</h5>
						<div class="col-sm-4 col-lg-4 col-md-4 col-xs-12">
							<p class="list-user">
								<span><i>*</i>员工编号：</span><span class="compay-name">
									<input id="vcName" name=vcName value="${usersEntity.vcName}" readonly="readonly" class="form-control other-style">
									<span id="errorName"></span>
								</span>
							</p>
						</div>
						
						<div class="col-sm-4 col-lg-4 col-md-4 col-xs-12">
							<p class="list-user">
								<span><i>*</i>员工名称：</span><span class="compay-name">
									<input id="vcAccount" name=vcAccount value="${usersEntity.vcAccount}" readonly="readonly" class="form-control other-style">
									<span id="errorName"></span>
								</span>
							</p>
						</div>
						
						<div class="clearfix"></div>
						<ul class="checkbox-group" id="roleSelect">
							${roles}
						</ul>
						
						<div class="clearfix"></div>
						<div class="line-b">
							<a href="javascript:;" id="save" onclick="checkSubmit();">保存</a>
							<input type="hidden" id="vcEmployeeId" name="vcEmployeeId" value="${usersEntity.vcEmployeeId}">
							<input type="hidden" id="roleIds" name="roleIds" value="${roleIds}">
						</div>
					</div>
				</div>
			</form>
		</div>
	</body>
	<script src="<c:url value="/js/jquery-1.11.0.js"/>"></script>
	<script src="<c:url value="/js/jquery.min.js"/>"></script>
	<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/js/menu.js"/>"></script>
	<script src="<c:url value="/js/bootstrap-select.js"/>"></script>
	<script src="<c:url value="/js/scorll/optiscroll.js"/>"></script>
	<script type="text/javascript">
		var checkbox_parent = ".checkboxList";
		var checkbox_input = checkbox_parent + " input[type='checkbox']";
		var checked_checkbox_css = "checkbox_checked";
		var disabled_checkbox_css = "checkbox_disabled";
	
		function showCheckbox() {
			if ($(checkbox_parent).length) { /*每次执行showCheckbox()都判断是否有.checkboxList不为0则有.checkboxList就执行里面的代码*/
				$(checkbox_parent).each(function() { /*第一步先把每个.checkboxList里的.checkbox_checked都清除*/
					$(this).removeClass(checked_checkbox_css);
				});
				$(checkbox_input + ":checked").each(function() { /*第二步先把每个.checkboxList里选中的按钮都筛选出来然后给它的父元素添加.checkbox_checked*/
					$(this).parent(checkbox_parent).addClass(checked_checkbox_css);
				});
				$(checkbox_input + ":disabled").each(function() { /*第三步先把每个.checkboxList里不能选中的按钮都筛选出来然后给它的父元素添加.checkbox_disabled*/
					$(this).parent(checkbox_parent).addClass(disabled_checkbox_css);
				});
			}
		}
		$(function() {
			$(checkbox_parent).click(function() { /*当任何一个.checkboxList被点击的时候都执行一次showCheckbox()*/
				showCheckbox();
			});
			showCheckbox(); /* 页面每次载入的时候都执行一次showCheckbox()*/
		});
		
		function checkSubmit(){
			var form = document.forms[0];
			var obj = document.getElementsByName("checks");
		    check_val = [];
		    for(k in obj){
		        if(obj[k].checked){
		            check_val.push(obj[k].value);
		        }
		    }
		    form.roleIds.value = check_val;
		    
			//parent.window.document.body.appendChild(form);
			
			var formData = new FormData(form);  
			var url = "/simple_frame/sys/users/_save";
			$.ajax({  
			     url : url,  
			     type : "POST",  
			     data: formData,  
		         async: false,  
		         cache: false,  
		         contentType: false,  
		         processData: false,  
			     success : function(data) {
					parent.window.location.reload();
			     },  
			     error : function(data) {  
			    	 //alert(data)
			     }  
			});
		}
		
		//去掉窗口边上粗滚动条
		var wr = new Optiscroll(document.getElementById('m-wrapper'), {
			forceScrollbars: true
		});
	</script>
</html>
