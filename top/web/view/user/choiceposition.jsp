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
</script>




<!-- CSS Files -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/azzara.min.css">
</head>


<body class="login">
	<div class="wrapper wrapper-login">
		<div class="main-panel">
			<div class="content">
				<div class="page-inner">
					<!-- Pricing -->
					<div class="row justify-content-center align-items-center">
						<div class="col-md-3 pl-md-0">
							<div class="card card-pricing">
								<div class="card-header">
									<h4 class="card-title">비회원으로 이용</h4>
									<div class="card-price">
										<span class="price">$25</span> <span class="text">/mo</span>
									</div>
								</div>
								<form class="loginform" action="signup.top?position=company"
									method="post">
									<div class="card-body">
										<ul class="specification-list">
											<li><span class="name-specification"></span> <span
												class="status-specification">14 days trial</span></li>
											<li><span class="name-specification">Chat History</span>
												<span class="status-specification">No</span></li>
											<li><span class="name-specification">Statistics</span> <span
												class="status-specification">14 days trial</span></li>
											<li><span class="name-specification">Support</span> <span
												class="status-specification">Yes</span></li>
											<li><span class="name-specification">Live Support</span>
												<span class="status-specification">No</span></li>
										</ul>
									</div>
									<div class="card-footer">
										<button class="btn btn-primary btn-block" type="submit">
											<b>Get Started</b>
										</button>
									</div>
								</form>
							</div>
						</div>
						<div class="col-md-3 pl-md-0 pr-md-0">
							<form class="loginform" action="signup.top?position=company"
								method="post">
								<div class="card card-pricing card-pricing-focus card-primary">
									<div class="card-header">
										<h4 class="card-title">회사 입니다</h4>
									</div>
									<div class="card-body">
										<img src="assets/img/company.png" alt="..." class="avatar-img">
									</div>
									<div class="card-footer">
										<button class="btn btn-light btn-block">
											<b>Get Started</b>
										</button>
									</div>
								</div>
							</form>
						</div>
						<div class="col-md-3 pr-md-0">
							<div class="card card-pricing">
								<form class="loginform" action="signup.top?position=freelancer"
									method="post">
									<div class="card-header">
										<h4 class="card-title">프리렌서 입니다</h4>
									</div>
									<div class="card-body">
										<img src="assets/img/freelancer.png" alt="..."
											class="avatar-img">
									</div>
									<div class="card-footer">
										<button class="btn btn-primary btn-block">
											<b>Get Started</b>
										</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
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


