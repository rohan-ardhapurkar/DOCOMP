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
	function submitForm() {
		document.form.method = "POST";
		document.form.action = "addPatient";
		document.form.submit();
	}
</script>

</head>

<body
	style="background-image: url('${pageContext.request.contextPath}/images/bg2.gif');">
	<form name="form">
		<div class="ui middle aligned center "
			style="height: 500px; width: 420px; margin-left: 452px; margin-top: 200px;">
			<h1>Patient Registration Form</h1>
			<div class="ui inverted segment">
				<div class="ui inverted form">
					<div class="two fields">
						<div class="field">
							<label>First Name</label> <input type="text"
								placeholder="First Name" name="patientName">
						</div>
						<div class="field">
							<label>Last Name</label> <input type="text"
								placeholder="Last Name" name="patientLastName">
						</div>
					</div>
					<div class="two fields">
						<div class="field">
							<div class="ui form">
								<div class="field">
									<label>Gender</label> <select name="patientGender">

										<option value="">Gender</option>
										<option value="Male">Male</option>
										<option value="Female">Female</option>
									</select>
								</div>
							</div>
						</div>
						<div class="field">
							<label>Phone</label> <input type="text" placeholder="Phone"
								name="patientPhone" id="phone" onblur="validatePhoneField();">
							<span type="hidden" style="color: red;" id="mandatoryPhone"></span>
						</div>


					</div>
					<div class="two fields">
						<div class="field">
							<label>Address</label> <input type="text" placeholder="Address" name="patientAddress" >
						</div>
						<div class="field">
							<label>Height</label> <input type="text" placeholder="Height" name="patientHeight" >
						</div>
					</div>
					<div class="two fields">
						<div class="field">
							<label>Weight</label> <input type="text" placeholder="Weight" name="patientWeight" >
						</div>
						<div class="field">
							<label>Age</label> <input type="text" placeholder="Age" name="patientAge" >
						</div>
					</div>

					<div class="ui submit button" id="submitBtn"
						onclick="submitForm();">Submit</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>