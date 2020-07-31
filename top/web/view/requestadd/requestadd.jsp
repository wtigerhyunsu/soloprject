<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Azzara Bootstrap 4 Admin Dashboard</title>
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
			urls : [ '../assets/css/fonts.css' ]
		},
		active : function() {
			sessionStorage.fonts = true;
		}
	});
</script>

<!-- CSS Files -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/azzara.min.css">
<!-- CSS Just for demo purpose, don't include it in your project -->
<link rel="stylesheet" href="assets/css/demo.css">
</head>
<body>
		<div class="page-inner">
					<div class="page-header">
						<h4 class="page-title">Form Wizard</h4>
						<ul class="breadcrumbs">
							<li class="nav-home">
								<a href="#">
									<i class="flaticon-home"></i>
								</a>
							</li>
							<li class="separator">
								<i class="flaticon-right-arrow"></i>
							</li>
							<li class="nav-item">
								<a href="#">Forms</a>
							</li>
							<li class="separator">
								<i class="flaticon-right-arrow"></i>
							</li>
							<li class="nav-item">
								<a href="#">Form Wizard</a>
							</li>
						</ul>
					</div>
					<div class="card-body">
					<div class="row">
						<div class="wizard-container wizard-round col-md-9">
							<div class="wizard-header text-center">
								<h3 class="wizard-title"><b>Register</b> New Account</h3>
								<small>This information will let us know more about you.</small>
							</div>
							<form>
								<div class="wizard-body">
									<div class="row">

										<ul class="wizard-menu nav nav-pills nav-primary">
											<li class="step" style="width: 33.3333%;">
												<a class="nav-link active" href="#about" data-toggle="tab" aria-expanded="true"><i class="fa fa-user mr-0"></i> About</a>
											</li>
											<li class="step" style="width: 33.3333%;">
												<a class="nav-link"  data-toggle="tab"><i class="fa fa-file mr-2"></i> Account</a>
											</li>
											<li class="step" style="width: 33.3333%;">
												<a class="nav-link" href="#address" data-toggle="tab"><i class="fa fa-map-signs mr-2"></i> Address</a>
											</li>
										</ul>
									</div>
									<div class="tab-content">
										<div class="tab-pane active" id="about">
											<div class="row">
												<div class="col-md-12">
													<h4 class="info-text">Tell us who you are.</h4>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label>First Name :</label>
														<input name="firstname" type="text" class="form-control" required>
													</div>

													<div class="form-group">
														<label>About :</label>
														<textarea name="about" class="form-control" rows="5" required></textarea>
													</div>
												</div>

												<div class="col-md-6">
													<div class="form-group">
														<label>Last Name :</label>
														<input name="lastname" type="text" class="form-control" required>
													</div>

													<div class="form-group">
														<label>Picture :</label>
														<div class="input-file input-file-image">
															<img class="img-upload-preview img-circle" width="100" height="100" src="http://placehold.it/100x100" alt="preview">
															<input type="file" class="form-control form-control-file" id="uploadImg" name="uploadImg" accept="image/*" required>
															<label for="uploadImg" class=" label-input-file btn btn-primary">Upload a Image</label>
														</div>
													</div>
												</div>
											</div>
										</div>
										
										
										<div class="tab-pane" id="account">
											<h4 class="info-text">Set up your account </h4>
											<div class="row">
												<div class="col-md-8 ml-auto mr-auto">
													<div class="form-group">
														<label>Email :</label>
														<input type="email" name="email" class="form-control" required>
													</div>
													<div class="form-group">
														<label>Password :</label>
														<input type="password" name="password" class="form-control" required>
													</div>
													<div class="form-group">
														<label>Confirm Password :</label>
														<input type="password" name="confirmpassword" class="form-control" required>
													</div>
												</div>
											</div>
										</div>
										<!--############### address #########################-->
										<div class="tab-pane" id="address">
											<h4 class="info-text">Tell us where you live.</h4>
											<div class="row">
												<div class="col-sm-8 ml-auto mr-auto">
													<div class="form-group">
														<label>Country :</label>
														
														<select name="country" class="form-control" required>
															<option value="">&nbsp;</option>
															<option value="id">Indonesia</option>
															<option value="my">Malaysia</option>
															<option value="th">Thailand</option>
															<option value="sg">Singapore</option>
														</select>
													</div>

													<div class="form-group">
														<label>Address</label>
														
														<textarea name="address" rows="3" class="form-control" required></textarea>
													</div>
												</div>
											</div>
										</div>
										<div class="pull-right">
										<input type="button" class="btn btn-next btn-danger" href="#account" name="next" value="Next">
										<input type="button" class="btn btn-finish btn-danger" name="finish" value="Finish" style="display: none;">
									</div>
									
										<!--############### address END#########################-->
									</div>
								</div>
<!-- 
								<div class="wizard-action">
									<div class="pull-left">
										<input type="button" class="btn btn-previous btn-fill btn-default" name="previous" value="Previous">
									</div>
									<div class="pull-right">
										<input type="button" class="btn btn-next btn-danger" href="#account" name="next" value="Next">
										<input type="button" class="btn btn-finish btn-danger" name="finish" value="Finish" style="display: none;">
									</div>
									<div class="clearfix"></div>
								</div>
								 -->
							</form>
						</div>
					</div>
					</div>
				</div>
	</div>

	</div>

	<!--  사용하고 싶은 파일 업로드
<div class="card-body">
							<form action="upload.php" class="dropzone">
								<div class="dz-message" data-dz-message>
									<div class="icon">
										<i class="flaticon-file"></i>
									</div>
									<h4 class="message">Drag and Drop files here</h4>
									<div class="note">(This is just a demo dropzone. Selected files are <strong>not</strong> actually uploaded.)</div>
								</div>
								<div class="fallback">
									<input name="file" type="file" multiple />
								</div>
							</form>
						</div>
	  -->
	<!--   Core JS Files   -->
	<script src="assets/js/core/jquery.3.2.1.min.js"></script>
	<script src="assets/js/core/popper.min.js"></script>
	<script src="assets/js/core/bootstrap.min.js"></script>
	<!-- jQuery UI -->
	<script src="assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
	<script
		src="assets/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
	<!-- Moment JS -->
	<script src="assets/js/plugin/moment/moment.min.js"></script>
	<!-- DateTimePicker -->
	<script
		src="assets/js/plugin/datepicker/bootstrap-datetimepicker.min.js"></script>
	<!-- Bootstrap Toggle -->
	<script src="assets/js/plugin/bootstrap-toggle/bootstrap-toggle.min.js"></script>
	<!-- jQuery Scrollbar -->
	<script src="assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
	<!-- Azzara JS -->
	<script src="assets/js/ready.min.js"></script>
	<!-- Azzara DEMO methods, don't include it in your project! -->
	<script src="assets/js/setting-demo.js"></script>
	<script>
		$('#datepicker').datetimepicker({
			format : 'MM/DD/YYYY',
		});
	</script>
</body>
</html>