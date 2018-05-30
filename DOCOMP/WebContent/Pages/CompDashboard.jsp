<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/patientValidation.js"></script>

<script type="text/javascript">
	function addnpatient() {
		debugger;
		var a = "true";
		document.form.method = "POST";
		document.form.action = "addPatient?newPage="+a;
		document.form.submit();
	}
	
	function masterpage() {
		debugger;
		var a = "master";
		document.form.method = "POST";
		document.form.action = "masterPage?mastPage="+a;
		document.form.submit();
	}
</script>
</head>
<body
	style="background-image: url('${pageContext.request.contextPath}/images/bg2.gif');">
	<form action="" name="form">
		<div class="ui middle aligned center "
			style="height: 500px; width: 420px; margin-left: 452px; margin-top: 200px;">
			<h1>Welcome user</h1>

			<div class="ui right floated small primary labeled icon button "
				id="adNpatient" onclick="addnpatient();">
				<i class="user icon"></i> Add new Patient
			</div>
			<div class="ui right floated small primary labeled icon button" id="mstrpge" onclick="masterpage();">
				<i class="tasks icon"></i> Go to Masterpage
			</div>

		</div>
	</form>
</body>