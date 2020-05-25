<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Azzara Bootstrap 4 Admin Dashboard</title>
<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no'
	name='viewport' />
<link rel="icon" href="../assets/img/icon.ico" type="image/x-icon" />

<!-- Fonts and icons -->
<script src="../assets/js/plugin/webfont/webfont.min.js"></script>
<script>
	WebFont.load({
		google : {
			"families" : [ "Open+Sans:300,400,600,700" ]
		},
		custom : {
			"families" : [ "Flaticon", "Font Awesome 5 Solid",
					"Font Awesome 5 Regular", "Font Awesome 5 Brands" ],
			urls : [ '../assets/css/fonts.css' ]
		},
		active : function() {
			sessionStorage.fonts = true;
		}
	});
</script>

<!-- CSS Files -->
<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
<link rel="stylesheet" href="../assets/css/azzara.min.css">
<!-- CSS Just for demo purpose, don't include it in your project -->
<link rel="stylesheet" href="../assets/css/demo.css">
</head>
<body>
	<div class="page-inner">
		<h4 class="page-title">User Profile</h4>
		<div class="row">
			<div class="col-md-8">
				<div class="card card-with-nav">
					<div class="card-header">
						<div class="row row-nav-line">
							<ul class="nav nav-tabs nav-line nav-color-secondary"
								role="tablist">
								<li class="nav-item"><a class="nav-link active show"
									data-toggle="tab" href="#home" role="tab" aria-selected="true">Timeline</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#profile" role="tab" aria-selected="false">Profile</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#settings" role="tab" aria-selected="false">Settings</a></li>
							</ul>
						</div>
					</div>
					<div class="card-body">
						<div class="row mt-3">
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>Name</label> <input type="text" class="form-control"
										name="userName" placeholder="Name" value="${duser.userName}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>Email</label> <input type="email" class="form-control"
										name="userMail" placeholder="Name" value="${duser.userMail}">
								</div>
							</div>
						</div>
						<div class="row mt-3">
							<div class="col-md-4">
								<div class="form-group form-group-default">
									<label>Birth Date</label> <input type="text"
										class="form-control" id="datepicker" name="userDate"
										value="${duser.userDate}" placeholder="Birth Date">
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group form-group-default">
									<label>Gender</label> <select class="form-control" id="gender">
										<option>Male</option>
										<option>Female</option>
									</select>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group form-group-default">
									<label>Phone</label> <input type="text" class="form-control"
										value="${duser.userPhone}" name="userPhone"
										placeholder="Phone">
								</div>
							</div>
						</div>
						<div class="row mt-3">
							<div class="col-md-12">
								<div class="form-group form-group-default">
									<label>Address</label> <input type="text" class="form-control"
										value="${duser.userAdd}" name="userAdd" placeholder="Address">
								</div>
							</div>
						</div>
						<div class="row mt-3 mb-1">
							<div class="col-md-12">
								<div class="form-group form-group-default">
									<label>About Me</label>
									<textarea class="form-control" name="about"
										placeholder="About Me" rows="3">A man who hates loneliness</textarea>
								</div>
							</div>
						</div>
						<div class="row mt-3">
							<div class="col-md-12">
								<div class="form-group form-group-default">
									<label>Example file input</label> <input type="file"
										class="form-control-file" id="exampleFormControlFile1">
								<button href=""></button>
							</div>
						</div>
						<div class="text-right mt-3 mb-3">
							<button class="btn btn-success">Save</button>
							<button class="btn btn-danger">Reset</button>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card card-profile card-secondary">
					<div class="card-header"
						style="background-image: url('../assets/img/blogpost.jpg')">
						<div class="profile-picture">
							<div class="avatar avatar-xl">
								<img src="../assets/img/profile.jpg" alt="..."
									class="avatar-img rounded-circle">
							</div>
						</div>
					</div>
					<div class="card-body">
						<div class="user-profile text-center">
							<div class="name">Hizrian, 19</div>
							<div class="job">Frontend Developer</div>
							<div class="desc">A man who hates loneliness</div>
							<div class="social-media">
								<a class="btn btn-info btn-twitter btn-sm btn-link" href="#">
									<span class="btn-label just-icon"><i
										class="flaticon-twitter"></i> </span>
								</a> <a class="btn btn-danger btn-sm btn-link" rel="publisher"
									href="#"> <span class="btn-label just-icon"><i
										class="flaticon-google-plus"></i> </span>
								</a> <a class="btn btn-primary btn-sm btn-link" rel="publisher"
									href="#"> <span class="btn-label just-icon"><i
										class="flaticon-facebook"></i> </span>
								</a> <a class="btn btn-danger btn-sm btn-link" rel="publisher"
									href="#"> <span class="btn-label just-icon"><i
										class="flaticon-dribbble"></i> </span>
								</a>
							</div>
							<div class="view-profile">
								<a href="#" class="btn btn-secondary btn-block">View Full
									Profile</a>
							</div>
						</div>
					</div>
					<div class="card-footer">
						<div class="row user-stats text-center">
							<div class="col">
								<div class="number">125</div>
								<div class="title">Post</div>
							</div>
							<div class="col">
								<div class="number">25K</div>
								<div class="title">Followers</div>
							</div>
							<div class="col">
								<div class="number">134</div>
								<div class="title">Following</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--   Core JS Files   -->
	<script src="../assets/js/core/jquery.3.2.1.min.js"></script>
	<script src="../assets/js/core/popper.min.js"></script>
	<script src="../assets/js/core/bootstrap.min.js"></script>
	<!-- jQuery UI -->
	<script
		src="../assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
	<script
		src="../assets/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
	<!-- Moment JS -->
	<script src="../assets/js/plugin/moment/moment.min.js"></script>
	<!-- DateTimePicker -->
	<script
		src="../assets/js/plugin/datepicker/bootstrap-datetimepicker.min.js"></script>
	<!-- Bootstrap Toggle -->
	<script
		src="../assets/js/plugin/bootstrap-toggle/bootstrap-toggle.min.js"></script>
	<!-- jQuery Scrollbar -->
	<script
		src="../assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
	<!-- Azzara JS -->
	<script src="../assets/js/ready.min.js"></script>
	<!-- Azzara DEMO methods, don't include it in your project! -->
	<script src="../assets/js/setting-demo.js"></script>
	<script>
		$('#datepicker').datetimepicker({
			format : 'MM/DD/YYYY',
		});
	</script>
</body>
</html>