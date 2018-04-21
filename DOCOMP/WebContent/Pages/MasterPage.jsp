<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MasterPage</title>
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
	src="${pageContext.request.contextPath}/js/semantic.min.js"></script>
<script type="text/javascript">
	$('.ui.checkbox').checkbox();
</script>
</head>
<body
	style="background-image: url('${pageContext.request.contextPath}/images/bg2.gif');">
	<div class="ui middle aligned center"
		style="width: 1000px; margin-left: 250px; margin-top: 200px;">
		<div class="ui icon input">
			<input type="text" placeholder="Patent ID">
		</div>
		<div class="ui icon input">
			<input type="text" placeholder="Patient Name">
		</div>
		<div class="ui icon input">
			<input type="text" placeholder="Patient Phone">
		</div>
		<button class="ui white basic button">Search</button>
		<button class="ui white basic button">Reset</button>
	</div>

	<table class="ui compact celled definition inverted  table "
		style="width: 1020px; margin: 0px auto;">

		<thead>
			<tr>
				<th>
					<div>
						<input type="checkbox"/>
					</div></th>
				<th>Patient ID</th>
				<th>Patient Name</th>
				<th>Registration Date</th>
				<th>Address</th>
				<th>Patient Phone</th>

			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<div>
						<input name="example" type="checkbox">
					</div>
				</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</tbody>
		<tfoot class="full-width">
			<tr>
				<th></th>
				<th colspan="5">
					<div class="ui right floated small primary labeled icon button">
						<i class="user icon"></i> Add Patient
					</div>
					<div class="ui small button">
						<i class="edit icon"></i>Update
					</div>
					<div class="ui small button">
						<i class="tasks icon"></i>Details
					</div>
					<div class="ui small button">
						<i class="trash ulternate icon"></i>Delete
					</div>
				</th>
			</tr>
		</tfoot>
	</table>
</body>
</html>