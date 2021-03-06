<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
						<form class="signupform" action="fileinput.top" enctype="multipart/form-data" action="fileinput.top" method="post"
					accept-charset="utf-8" novalidate="novalidate">
						
							<div class="col-md-12">
								<div class="form-group form-group-default">
									<label>Example file input</label> <input type="file"
										class="form-control-file" id="exampleFormControlFile1" name =
										"mf">
								
							</div>
							
						</div>
						
						<div class="text-right mt-3 mb-3">
							<button class="btn btn-danger" type="submit">input</button>
							<button class="btn btn-success">Save</button>
							<button class="btn btn-danger">Reset</button>
						</div>
					</form>
				</div>

			</div>
			
		</div>
	</div>
	</div>
</body>
</html>