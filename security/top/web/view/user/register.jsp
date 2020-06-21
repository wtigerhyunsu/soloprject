<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<title>Register TEST</title>
<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no'
	name='viewport' />
<link rel="icon" href="assets/img/icon.ico" type="image/x-icon" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- Fonts and icons -->
<script src="assets/js/plugin/webfont/webfont.min.js"></script>
<script>
	WebFont.load({
		google : {
			"families" : [ "Open+Sans:300,400,600,700" ]
		},
		custom : {
			"families" : [ "Flaticon", "Font Awesome 5 Solid",
					"Font Awesome 5 Regular", "Font Awesome 5 Brands" ],
			urls : [ 'assets/css/fonts.css' ]
		},
		active : function() {
			sessionStorage.fonts = false;
		}
	});
	document.domain = "127.0.0.1";

	function goPopup() {
		var pop = window.open("view/address/jusoPopup.jsp", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");

	}

	function jusoCallBack(roadFullAddr, addrDetail) {
		document.getElementById("address").value = roadFullAddr;

	}

	$(function() {
		console.log("datepicker");
		$("#datepicker").datepicker({
			dateFormat : 'yy-mm-dd'
		});
	});

	$("#datepicker").datepicker();
</script>




<!-- CSS Files -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/azzara.min.css">
</head>


<body class="login">
	<div class="wrapper wrapper-login">
		<div class="container container-login animated fadeIn">
			<h3 class="text-center">HQ Sign Up</h3>
			<div class="login-form">
				<form class="signupform" action="register.top"
					enctype="multipart/form-data" method="post" accept-charset="utf-8"
					novalidate="novalidate">
					<!--  ID  START-->
					<div class="form-group">
						<label for="ID" class="placeholder"><b>ID</b></label> <a
							class="link float-right"></a> <input id="userID" name="userID"
							type="text" class="form-control" required />
					</div>
					<!--  ID  END-->
					<!--  PWD START -->
					<div class="form-group">
						<label for="password" class="placeholder"><b>Password</b></label>
						<input id="userPwd" name="userPwd" type="password"
							onkeyup="checkup()" class="form-control" required />
					</div>
					<!--  PWD END -->

					<!--  userName  START-->
					<div class="form-group">
						<label for="NAME" class="placeholder"><b>Name</b></label> <a
							class="link float-right"></a> <input id="userName"
							name="userName" type="text" class="form-control" required />
					</div>
					<!--  userName  END-->
					<!--  본사주소 START -->
					<div id="addressarea">
						<label for="caddress" class="placeholder"><b>Address</b></label> <input
							type="text" id="address" name="userAdd"
							placeholder="주소를 입력하기 위해 클릭해주세요" class="form-control"
							onclick="goPopup()" />
					</div>
					<!-- 본사주소  END -->

					<!--  userPhone  START-->
					<div class="form-group">
						<label for="PHONE" class="placeholder"><b>Phone</b></label> <a
							class="link float-right"></a> <input id="userPhone"
							name="userPhone" type="text" class="form-control" required />
					</div>
					<!--  userPhone  END-->
					<!--  Email START -->
					<div class="form-group">
						<label for="Email" class="placeholder"><b>Email</b></label> <input
							id="userMail" name=userMail type="text" class="form-control"
							required />
					</div>
					<!--  Email  END -->
					<!-- position -->
					<c:choose>
						<c:when test="${position == 'company' }">
							<jsp:include page="company.jsp" />
						</c:when>
						<c:when test="${position == 'freelancer' }">
							<jsp:include page="freelancer.jsp" />
						</c:when>

					</c:choose>

					<!--  position  END -->
					<!--  DATE START -->
					<div class="form-group">
						<label for="date" class="placeholder"><b>Input Date
								Picker</b></label> <input id="datepicker" name="userDate" type="text"
							class="form-control" />
					</div>
					<!--  DATE END -->


					<!--  button START  -->
					<div class="row form-action">
						<div class="col-md-6">
							<a href="main.top" id="show-signin"
								class="btn btn-danger btn-link w-100 fw-bold">Cancel</a>
						</div>

						<div class="col-md-6">
							<button class="btn btn-primary" type="submit" value="submit"
								class="btn_3">submit</button>
						</div>
					</div>

					<!--  button END  -->
				</form>
			</div>
		</div>
	</div>
	<script src="assets/js/core/jquery.3.2.1.min.js"></script>
	<script src="assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
	<script src="assets/js/core/popper.min.js"></script>
	<script src="assets/js/core/bootstrap.min.js"></script>
	<script src="assets/js/ready.js"></script>
	<script src="assets/js/idcheck.js" charset="UTF-8"></script>

</body>
</html>


