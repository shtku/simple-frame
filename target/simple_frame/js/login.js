$(function() {
	// 回车事件
	$("#password").keydown(function(e) {
		if (e.which == 13) {
			$("#submit").click();
		}
	});
	$("#username").keydown(function(e) {
		if (e.which == 13) {
			$("#submit").click();
		}
	});
	
	//点击登录按钮
	$(document).ready(function(){
		/*var checkvalue=getCookieValue("checkvalue");
		if(checkvalue=="true")
		{
			var userNameValue = getCookieValue("username");
			$("#username").val(userNameValue);
			var passwordValue = getCookieValue("password");
			$("#password").val(passwordValue);
			$("#checkbox1").eq(0).attr("checked",'true');   
		}
		else
		{
			$("#username").val("");
			$("#password").val("");
		}
		*/
		$("#submit").click(function() {
			if ($("input[name='username']").val() == "") {
				alert("账号必须填写!!");
				return;
			}if ($("input[name='password']").val() == "") {
				alert("密码必须填写!!");
				return;
			} else {
				$.ajax({
					url : "/simple_frame/system/isLogin",
					type : "POST",
					data : {
						username : $("input[name='username']").val(),
						password : $("input[name='password']").val()
					},
					success : function(data) {
						if(data.toString() == "success"){
							location.href = "/simple_frame/system/frame_page";
						}else{
							alert("账号或密码错误！");
						}
					},
					error : function() {
						alert("登陆失败");
					}
				});
			}
		});
	});
	
	$("#re").click = function() {
		$("#username").val("");
		$("#password").val("");
	};	
	

	
});
