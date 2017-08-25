<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<meta charset="utf-8" />
		<title>Metronic Admin Theme #1 | Admin Dashboard</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta content="width=device-width, initial-scale=1" name="viewport" />
		<meta content="" name="author" />

		<link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/css/layout.min.css"/>" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/css/font/iconfont.css"/>" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/css/custom.css"/>" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/css/scroll/optiscroll.css"/>" rel="stylesheet" type="text/css" />

		<script src="<c:url value="/js/jquery.min.js"/>"></script>
		<script src="<c:url value="/js/scorll/optiscroll.js"/>"></script>
	</head>
	<body>
	<div id="m-wrapper" class="m-wrapper optiscroll">
		<form:form  modelAttribute="role">
			<input type="submit" name="submit" id="submit" style="display:none"/>
			<input type="hidden" name="id" id="id" value="${role.id}"/>
			<input type="hidden" name="actionIds" id="actionIds"/>
			<div class="page-bar">
				<span class="title-row"><i class="fa big-size icon-xiangxipage"></i>角色维护 </span>
			</div>
			<div class="middle-content tc-floor">
				<div class="het-detail second user row clearfix">
					
					<h5 class="list">角色基本信息</h5>
					<div class="col-sm-5 col-lg-5 col-md-5 col-xs-12">
						<p class="list-user">
							<span><i>*</i>角色名称：</span><span class="compay-name">
								<input type="text" name="name" class="form-control" maxlength="100" value="${role.name }"/>
							</span>
						</p>
					</div>
					
					<div class="col-sm-7 col-lg-7 col-md-7 col-xs-12">
						<p class="list-user">
							<span>角色描述  ：</span><span class="compay-name">
								<input type="text" name="description" class="form-control" maxlength="100" value="${role.description }"/>
							</span>
						</p>
					</div>
					
					<div class="clearfix"></div>
					<ul class="checkbox-group" id="menuSelect">
						${menuList}
					</ul>		
					
					<div class="clearfix"></div>
					<div class="line-b">
						<a href="javascript:;" id="save" onclick="checkSubmit();">保存</a>
					</div>
				</div>
			</div>
		</form:form>
	</div>
	</body>
</html>
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
		if(form.name.value==''){
			alert('角色名称不能为空！');
			return false;
		}
	    for(k in obj){
	        if(obj[k].checked){
	            check_val.push(obj[k].value);
	        }
	    }
	    form.actionIds.value = check_val;
	    /*
		parent.window.frames['second-iframe'].name = 'second-iframe';
		parent.window.frames['mainFrame'].document.body.appendChild(form);
		*/
		
		var formData = new FormData(form);  
			var url = "/simple_frame/role/roleSave";
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
					//location.href = "/simple_frame/role/roleQueryList";
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