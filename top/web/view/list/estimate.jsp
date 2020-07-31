<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Tables - Azzara Bootstrap 4 Admin Dashboard</title>
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
			urls : [ '../../assets/css/fonts.css' ]
		},
		active : function() {
			sessionStorage.fonts = true;
		}
	});
	

	function est(requestNO) {
		console.log(requestNO);
		var data = {
			'requestNO' : requestNO
		};
		$.ajax({
			//url : "adjust.top?ingID=" + ingID,
			url : "estimate.top",
			data : data,
			contentType : "application/json; charset=UTF-8",
			success : function(data) {
				console.log(data)

			

			}

		});
	};
	
</script>

<!-- CSS Files -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/azzara.min.css">
<!-- CSS Just for demo purpose, don't include it in your project -->
<link rel="stylesheet" href="assets/css/demo.css">
</head>
<body>

	<div class="content content-full">
		<div class="page-navs bg-white">
			<div class="nav-scroller">
				<div class="nav nav-tabs nav-line nav-color-primary">
					<a class="nav-link active show" data-toggle="tab" href="#tab1">All
						<span class="count ml-1">(7)</span>
					</a> <a class="nav-link" data-toggle="tab" href="#tab2">Starred</a> <a
						class="nav-link" data-toggle="tab" href="#tab3">Trash</a>
				</div>
			</div>
		</div>
		<div class="page-inner">
			<div class="row">
				<div class="col-md-12">
					<div class="d-flex justify-content-between">
						<div class="d-md-inline-block">
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text bg-white"> <i
										class="fa fa-search search-icon"></i>
									</span>
								</div>
								<input type="text" class="form-control"
									aria-label="Text input with dropdown button">
								<div class="input-group-append">
									<button class="btn btn-secondary dropdown-toggle" type="button"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">Filter</button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="#">Action</a> <a
											class="dropdown-item" href="#">Another action</a> <a
											class="dropdown-item" href="#">Something else here</a>
										<div role="separator" class="dropdown-divider"></div>
										<a class="dropdown-item" href="#">Separated link</a>
									</div>
								</div>
							</div>
						</div>
						<button type="button"
							class="btn btn-success d-none d-sm-inline-block">New
							Message</button>
					</div>
					<c:forEach var="i" items="${myrequestListData }">
					<section class="card mt-4">
						<div class="list-group list-group-messages list-group-flush">
							<div class="list-group-item unread">
								<div class="list-group-item-figure">
									<span class="rating rating-sm mr-3"> <input
										type="checkbox" id="star1" value="1"> <label
										for="star1"> <span class="fa fa-star"></span>
									</label>
									</span> 
								</div>
								<div class="list-group-item-body pl-3 pl-md-4">
									<div class="row">
										<div class="col-12 col-lg-10">
											<h4 class="list-group-item-title">
											<!--  href="estimate.top?requestNO=${i.requestNO }" onclick="est('${i.requestNO}')"-->
												<a href="estimate.top?requestNO=${i.requestNO }" id="requestNO">${i.requestNO }</a>
											</h4>
											<p class="list-group-item-text text-truncate" id="pay">${i.pay }</p>
										</div>
										<div class="col-12 col-lg-2 text-lg-right">
											<p class="list-group-item-text" id="area">${i.area }</p>
										</div>
									</div>
								</div>
								<div class="list-group-item-figure">
									<div class="dropdown">
										<button class="btn-dropdown" data-toggle="dropdown">
											<i class="fa fa-ellipsis-v"></i>
										</button>
										<div class="dropdown-arrow"></div>
										<div class="dropdown-menu dropdown-menu-right">
											<a href="#" class="dropdown-item">Mark as read</a> <a
												href="#" class="dropdown-item">Mark as unread</a> <a
												href="#" class="dropdown-item">Toggle star</a> <a href="#"
												class="dropdown-item">Trash</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
					</c:forEach>
					<div class="mt-1 mb-2">
						<p class="text-muted">Showing 1 to 10 of 1,000 entries</p>
						<ul class="pagination justify-content-center mb-5 mb-sm-0">
							<li class="page-item disabled"><a class="page-link" href="#"
								tabindex="-1"> <i class="fa fa-lg fa-angle-left"></i>
							</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item disabled"><a class="page-link" href="#"
								tabindex="-1">...</a></li>
							<li class="page-item"><a class="page-link" href="#">13</a></li>
							<li class="page-item active"><a class="page-link" href="#">14</a>
							</li>
							<li class="page-item"><a class="page-link" href="#">15</a></li>
							<li class="page-item disabled"><a class="page-link" href="#"
								tabindex="-1">...</a></li>
							<li class="page-item"><a class="page-link" href="#">24</a></li>
							<li class="page-item"><a class="page-link" href="#"> <i
									class="fa fa-lg fa-angle-right"></i>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="quick-sidebar">
		<a href="#" class="close-quick-sidebar"> <i class="flaticon-cross"></i>
		</a>
		<div class="quick-sidebar-wrapper">
			<ul class="nav nav-tabs nav-line nav-color-primary" role="tablist">
				<li class="nav-item"><a class="nav-link active show"
					data-toggle="tab" href="#messages" role="tab" aria-selected="true">Messages</a>
				</li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#tasks" role="tab" aria-selected="false">Tasks</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#settings" role="tab" aria-selected="false">Settings</a></li>
			</ul>
			<div class="tab-content mt-3">
				<div class="tab-chat tab-pane fade show active" id="messages"
					role="tabpanel">
					<div class="messages-contact">
						<div class="quick-wrapper">
							<div class="quick-scroll scrollbar-outer">
								<div class="quick-content contact-content">
									<span class="category-title mt-0">Contacts</span>
									<div class="avatar-group">
										<div class="avatar">
											<img src="../assets/img/jm_denis.jpg" alt="..."
												class="avatar-img rounded-circle border border-white">
										</div>
										<div class="avatar">
											<img src="../assets/img/chadengle.jpg" alt="..."
												class="avatar-img rounded-circle border border-white">
										</div>
										<div class="avatar">
											<img src="../assets/img/mlane.jpg" alt="..."
												class="avatar-img rounded-circle border border-white">
										</div>
										<div class="avatar">
											<img src="../assets/img/talha.jpg" alt="..."
												class="avatar-img rounded-circle border border-white">
										</div>
										<div class="avatar">
											<span class="avatar-title rounded-circle border border-white">+</span>
										</div>
									</div>
									<span class="category-title">Recent</span>
									<div class="contact-list contact-list-recent">
										<div class="user">
											<a href="#">
												<div class="avatar avatar-online">
													<img src="../assets/img/jm_denis.jpg" alt="..."
														class="avatar-img rounded-circle border border-white">
												</div>
												<div class="user-data">
													<span class="name">Jimmy Denis</span> <span class="message">How
														are you ?</span>
												</div>
											</a>
										</div>
										<div class="user">
											<a href="#">
												<div class="avatar avatar-offline">
													<img src="../assets/img/chadengle.jpg" alt="..."
														class="avatar-img rounded-circle border border-white">
												</div>
												<div class="user-data">
													<span class="name">Chad</span> <span class="message">Ok,
														Thanks !</span>
												</div>
											</a>
										</div>
										<div class="user">
											<a href="#">
												<div class="avatar avatar-offline">
													<img src="../assets/img/mlane.jpg" alt="..."
														class="avatar-img rounded-circle border border-white">
												</div>
												<div class="user-data">
													<span class="name">John Doe</span> <span class="message">Ready
														for the meeting today with...</span>
												</div>
											</a>
										</div>
									</div>
									<span class="category-title">Other Contacts</span>
									<div class="contact-list">
										<div class="user">
											<a href="#">
												<div class="avatar avatar-online">
													<img src="../assets/img/jm_denis.jpg" alt="..."
														class="avatar-img rounded-circle border border-white">
												</div>
												<div class="user-data2">
													<span class="name">Jimmy Denis</span> <span class="status">Online</span>
												</div>
											</a>
										</div>
										<div class="user">
											<a href="#">
												<div class="avatar avatar-offline">
													<img src="../assets/img/chadengle.jpg" alt="..."
														class="avatar-img rounded-circle border border-white">
												</div>
												<div class="user-data2">
													<span class="name">Chad</span> <span class="status">Active
														2h ago</span>
												</div>
											</a>
										</div>
										<div class="user">
											<a href="#">
												<div class="avatar avatar-away">
													<img src="../assets/img/talha.jpg" alt="..."
														class="avatar-img rounded-circle border border-white">
												</div>
												<div class="user-data2">
													<span class="name">Talha</span> <span class="status">Away</span>
												</div>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="messages-wrapper">
						<div class="messages-title">
							<div class="user">
								<div class="avatar avatar-offline float-right ml-2">
									<img src="../assets/img/chadengle.jpg" alt="..."
										class="avatar-img rounded-circle border border-white">
								</div>
								<span class="name">Chad</span> <span class="last-active">Active
									2h ago</span>
							</div>
							<button class="return">
								<i class="flaticon-left-arrow-3"></i>
							</button>
						</div>
						<div class="messages-body messages-scroll scrollbar-outer">
							<div class="message-content-wrapper">
								<div class="message message-in">
									<div class="avatar avatar-sm">
										<img src="../assets/img/chadengle.jpg" alt="..."
											class="avatar-img rounded-circle border border-white">
									</div>
									<div class="message-body">
										<div class="message-content">
											<div class="name">Chad</div>
											<div class="content">Hello, Rian</div>
										</div>
										<div class="date">12.31</div>
									</div>
								</div>
							</div>
							<div class="message-content-wrapper">
								<div class="message message-out">
									<div class="message-body">
										<div class="message-content">
											<div class="content">Hello, Chad</div>
										</div>
										<div class="message-content">
											<div class="content">What's up?</div>
										</div>
										<div class="date">12.35</div>
									</div>
								</div>
							</div>
							<div class="message-content-wrapper">
								<div class="message message-in">
									<div class="avatar avatar-sm">
										<img src="../assets/img/chadengle.jpg" alt="..."
											class="avatar-img rounded-circle border border-white">
									</div>
									<div class="message-body">
										<div class="message-content">
											<div class="name">Chad</div>
											<div class="content">Thanks</div>
										</div>
										<div class="message-content">
											<div class="content">When is the deadline of the
												project we are working on ?</div>
										</div>
										<div class="date">13.00</div>
									</div>
								</div>
							</div>
							<div class="message-content-wrapper">
								<div class="message message-out">
									<div class="message-body">
										<div class="message-content">
											<div class="content">The deadline is about 2 months
												away</div>
										</div>
										<div class="date">13.10</div>
									</div>
								</div>
							</div>
							<div class="message-content-wrapper">
								<div class="message message-in">
									<div class="avatar avatar-sm">
										<img src="../assets/img/chadengle.jpg" alt="..."
											class="avatar-img rounded-circle border border-white">
									</div>
									<div class="message-body">
										<div class="message-content">
											<div class="name">Chad</div>
											<div class="content">Ok, Thanks !</div>
										</div>
										<div class="date">13.15</div>
									</div>
								</div>
							</div>
						</div>
						<div class="messages-form">
							<div class="messages-form-control">
								<input type="text" placeholder="Type here"
									class="form-control input-pill input-solid message-input">
							</div>
							<div class="messages-form-tool">
								<a href="#" class="attachment"> <i class="flaticon-file"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane fade" id="tasks" role="tabpanel">
					<div class="quick-wrapper tasks-wrapper">
						<div class="tasks-scroll scrollbar-outer">
							<div class="tasks-content">
								<span class="category-title mt-0">Today</span>
								<ul class="tasks-list">
									<li><label
										class="custom-checkbox custom-control checkbox-secondary">
											<input type="checkbox" checked=""
											class="custom-control-input"><span
											class="custom-control-label">Planning new project
												structure</span> <span class="task-action"> <a href="#"
												class="link text-danger"> <i
													class="flaticon-interface-5"></i>
											</a>
										</span>
									</label></li>
									<li><label
										class="custom-checkbox custom-control checkbox-secondary">
											<input type="checkbox" class="custom-control-input"><span
											class="custom-control-label">Create the main structure
										</span> <span class="task-action"> <a href="#"
												class="link text-danger"> <i
													class="flaticon-interface-5"></i>
											</a>
										</span>
									</label></li>
									<li><label
										class="custom-checkbox custom-control checkbox-secondary">
											<input type="checkbox" class="custom-control-input"><span
											class="custom-control-label">Add new Post</span> <span
											class="task-action"> <a href="#"
												class="link text-danger"> <i
													class="flaticon-interface-5"></i>
											</a>
										</span>
									</label></li>
									<li><label
										class="custom-checkbox custom-control checkbox-secondary">
											<input type="checkbox" class="custom-control-input"><span
											class="custom-control-label">Finalise the design
												proposal</span> <span class="task-action"> <a href="#"
												class="link text-danger"> <i
													class="flaticon-interface-5"></i>
											</a>
										</span>
									</label></li>
								</ul>

								<span class="category-title">Tomorrow</span>
								<ul class="tasks-list">
									<li><label
										class="custom-checkbox custom-control checkbox-secondary">
											<input type="checkbox" class="custom-control-input"><span
											class="custom-control-label">Initialize the project </span> <span
											class="task-action"> <a href="#"
												class="link text-danger"> <i
													class="flaticon-interface-5"></i>
											</a>
										</span>
									</label></li>
									<li><label
										class="custom-checkbox custom-control checkbox-secondary">
											<input type="checkbox" class="custom-control-input"><span
											class="custom-control-label">Create the main structure
										</span> <span class="task-action"> <a href="#"
												class="link text-danger"> <i
													class="flaticon-interface-5"></i>
											</a>
										</span>
									</label></li>
									<li><label
										class="custom-checkbox custom-control checkbox-secondary">
											<input type="checkbox" class="custom-control-input"><span
											class="custom-control-label">Updates changes to GitHub
										</span> <span class="task-action"> <a href="#"
												class="link text-danger"> <i
													class="flaticon-interface-5"></i>
											</a>
										</span>
									</label></li>
									<li><label
										class="custom-checkbox custom-control checkbox-secondary">
											<input type="checkbox" class="custom-control-input"><span
											title="This task is too long to be displayed in a normal space!"
											class="custom-control-label">This task is too long to
												be displayed in a normal space! </span> <span class="task-action">
												<a href="#" class="link text-danger"> <i
													class="flaticon-interface-5"></i>
											</a>
										</span>
									</label></li>
								</ul>

								<div class="mt-3">
									<div class="btn btn-primary btn-rounded btn-sm">
										<span class="btn-label"> <i class="fa fa-plus"></i>
										</span> Add Task
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane fade" id="settings" role="tabpanel">
					<div class="quick-wrapper settings-wrapper">
						<div class="quick-scroll scrollbar-outer">
							<div class="quick-content settings-content">

								<span class="category-title mt-0">General Settings</span>
								<ul class="settings-list">
									<li><span class="item-label">Enable Notifications</span>
										<div class="item-control">
											<input type="checkbox" checked data-toggle="toggle"
												data-onstyle="primary" data-style="btn-round">
										</div></li>
									<li><span class="item-label">Signin with social
											media</span>
										<div class="item-control">
											<input type="checkbox" data-toggle="toggle"
												data-onstyle="primary" data-style="btn-round">
										</div></li>
									<li><span class="item-label">Backup storage</span>
										<div class="item-control">
											<input type="checkbox" data-toggle="toggle"
												data-onstyle="primary" data-style="btn-round">
										</div></li>
									<li><span class="item-label">SMS Alert</span>
										<div class="item-control">
											<input type="checkbox" checked data-toggle="toggle"
												data-onstyle="primary" data-style="btn-round">
										</div></li>
								</ul>

								<span class="category-title mt-0">Notifications</span>
								<ul class="settings-list">
									<li><span class="item-label">Email Notifications</span>
										<div class="item-control">
											<input type="checkbox" checked data-toggle="toggle"
												data-onstyle="primary" data-style="btn-round">
										</div></li>
									<li><span class="item-label">New Comments</span>
										<div class="item-control">
											<input type="checkbox" checked data-toggle="toggle"
												data-onstyle="primary" data-style="btn-round">
										</div></li>
									<li><span class="item-label">Chat Messages</span>
										<div class="item-control">
											<input type="checkbox" checked data-toggle="toggle"
												data-onstyle="primary" data-style="btn-round">
										</div></li>
									<li><span class="item-label">Project Updates</span>
										<div class="item-control">
											<input type="checkbox" data-toggle="toggle"
												data-onstyle="primary" data-style="btn-round">
										</div></li>
									<li><span class="item-label">New Tasks</span>
										<div class="item-control">
											<input type="checkbox" checked data-toggle="toggle"
												data-onstyle="primary" data-style="btn-round">
										</div></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Custom template | don't include it in your project! -->
	<div class="custom-template">
		<div class="title">Settings</div>
		<div class="custom-content">
			<div class="switcher">
				<div class="switch-block">
					<h4>Topbar</h4>
					<div class="btnSwitch">
						<button type="button" class="changeMainHeaderColor"
							data-color="blue"></button>
						<button type="button" class="selected changeMainHeaderColor"
							data-color="purple"></button>
						<button type="button" class="changeMainHeaderColor"
							data-color="light-blue"></button>
						<button type="button" class="changeMainHeaderColor"
							data-color="green"></button>
						<button type="button" class="changeMainHeaderColor"
							data-color="orange"></button>
						<button type="button" class="changeMainHeaderColor"
							data-color="red"></button>
					</div>
				</div>
				<div class="switch-block">
					<h4>Background</h4>
					<div class="btnSwitch">
						<button type="button" class="changeBackgroundColor"
							data-color="bg2"></button>
						<button type="button" class="changeBackgroundColor selected"
							data-color="bg1"></button>
						<button type="button" class="changeBackgroundColor"
							data-color="bg3"></button>
					</div>
				</div>
			</div>
		</div>
		<div class="custom-toggle">
			<i class="flaticon-settings"></i>
		</div>
	</div>
	<!-- End Custom template -->

	<script src="assets/js/core/jquery.3.2.1.min.js"></script>
	<script src="assets/js/core/popper.min.js"></script>
	<script src="assets/js/core/bootstrap.min.js"></script>
	<!-- jQuery UI -->
	<script src="assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
	<script
		src="assets/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
	<!-- Bootstrap Toggle -->
	<script src="assets/js/plugin/bootstrap-toggle/bootstrap-toggle.min.js"></script>
	<!-- jQuery Scrollbar -->
	<script src="assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
	<!-- Datatables -->
	<script src="assets/js/plugin/datatables/datatables.min.js"></script>
	<!-- Azzara JS -->
	<script src="assets/js/ready.min.js"></script>
	<!-- Azzara DEMO methods, don't include it in your project! -->
	<script src="assets/js/setting-demo.js"></script>

</body>
</html>