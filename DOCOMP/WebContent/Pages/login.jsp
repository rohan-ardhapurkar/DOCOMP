<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DOCOMP</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/icon.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/semantic.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/site.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/container.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/grid.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/header.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/image.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/menu.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/divider.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/segment.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/form.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/input.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/button.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/list.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/message.css">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/semantic.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/form.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/transition.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
function getLoggedIn(){
	debugger;
	document.form.action = "loginUser";
	document.form.method = "POST"
	document.form.submit();
}
</script>
</head>
<body style="background-image: url('${pageContext.request.contextPath}/images/bg2.gif');">
	<div class="ui middle aligned center aligned grid"
		style="width: 420px; margin-left: 452px; margin-top: 200px;">
		<div class="column">
			<h2 class="ui teal image header">
				<div class="content">Log-In to Your Account</div>
			</h2>
			<form name="form" class="ui large form">
				<div class="ui stacked segment">
					<div class="field">
						<div class="ui left icon input">
							<i class="user icon"></i> <input type="text" name="username"
								placeholder="Enter Username" />
						</div>
					</div>
					<div class="field">
						<div class="ui left icon input">
							<i class="lock icon"></i> <input type="password" name="password"
								placeholder="Enter Password" />
						</div>
					</div>
					<div class="ui fluid large teal submit button" id="loginBtn" onclick="getLoggedIn();" >Login</div>
				</div>
				<div class="ui error message" id="errorMsg" ></div>
			</form>
		</div>
	</div>
</body>
</html>
 