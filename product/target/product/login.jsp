<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en"
	class="app js no-touch no-android chrome no-firefox no-iemobile no-ie no-ie10 no-ie11 no-ios no-ios7 ipad">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Google Chrome Frame也可以让IE用上Chrome的引擎: -->
<meta http-equiv="X-UA-Compatible" content="IE=edge;chrome=1">
<link href="/favicon.ico" type="image/x-icon" rel=icon>
<link href="/favicon.ico" type="image/x-icon" rel="shortcut icon">
<meta name="renderer" content="webkit">
<title>登录－蓝缘管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/admin_files/min.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/admin_files/login.css">
<link
	href="${pageContext.servletContext.contextPath }/admin_files/css.css"
	rel="stylesheet" type="text/css">
<style type="text/css">
.alpha {
	
}
</style>
<script type="text/javascript">

function register(){
	if((navigator.userAgent+"").indexOf("MSIE")==-1&(navigator.userAgent+"").indexOf("MSIE")>0)
    {
       alert('本系统只支持 微软 Internet Explorer 6.0及以上版本，不支持其他浏览器！\n\n请换用Internet Explorer 6.0及以上版本浏览器访问此系统！');
       return;
    }
}
</script>
</head>
<body onload="register();"  style="background-image: url('${pageContext.servletContext.contextPath }/admin_files/9.jpg');margin-top:0px;">
	<div id="loginbox" style="padding-top: 10%;">
		<form id="loginform" name="loginform" class="form-vertical"
			style="background-color: rgba(0, 0, 0, 0.5) !important; background: #000; filter: alpha(opacity = 50); *background: #000; *filter: alpha(opacity = 50); /*黑色透明背景结束*/ color: #FFF; bottom: 0px; right: 0px; border: 1px solid #000;"
			action="${pageContext.servletContext.contextPath }/login.do"
			method="post">
			<div class="control-group normal_text">
				<table style="width: 100%">
					<tr>
						<td align="left"><img
							src="${pageContext.servletContext.contextPath }/admin_files/logo_left.png"
							alt="Logo"></td>
							<td align="center" style="font-weight: bold;color: gray;">蓝缘管理系统</td>
						<td align="right"><img
							src="${pageContext.servletContext.contextPath }/admin_files/logo_left.png"
							alt="Logo"></td>
					</tr>
				</table>


			</div>
			<div class="control-group">
				<div class="controls">
					<div class="main_input_box">
						<span class="add-on bg_ly" style="background: #28b779"><img
							src="${pageContext.servletContext.contextPath }/admin_files/account_1.png"
							alt="请输入账号.."></span><input type="text" placeholder="username" name="userId" value=""
							style="height: 32px; margin-bottom: 0px;"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<div class="main_input_box">
						<span class="add-on bg_ly"><img
							src="${pageContext.servletContext.contextPath }/admin_files/lock_1.png"
							alt="请输入密码.."></span><input type="password" placeholder="password" name="userPassword" value=""
							style="height: 32px; margin-bottom: 0px;"/>
					</div> 
				</div>
			</div>
			<div class="form-actions">
				<!-- <span class="pull-left" style="width: 33%"><a href="#" class="flip-link btn btn-info" id="to-recover">忘记密码？</a></span>
					<span class="pull-left" style="width: 33%"><a href="install.shtml" class="flip-link btn btn-danger" id="to-recover">一键初始化系统</a></span> -->
					 <span   class="pull-right"><a type="submit" href="javascript:checkUserForm()" class="btn btn-success">登&nbsp;&nbsp;录</a></span>
			</div>
		</form>
	</div>
	<script type="text/javascript">
		if ("${error}" != "") {
			alert("${error}");
		}
		
		document.onkeydown=function(event){
            var e = event || window.event || arguments.callee.caller.arguments[0];
            if(e && e.keyCode==13){ // enter 键
                checkUserForm();
           }
       }; 

		
		function checkUserForm() {
			//if((navigator.userAgent+"").indexOf("MSIE")==-1)
			if((navigator.userAgent+"").indexOf("MSIE")==-1&(navigator.userAgent+"").indexOf("MSIE")>0)
		    {
		       alert('本系统只支持 微软 Internet Explorer 6.0及以上版本，不支持其他浏览器！\n\n请换用Internet Explorer 6.0及以上版本浏览器访问此系统！');
		       return;
		    }
			document.loginform.submit();
		}
	</script>
</body>
</html>