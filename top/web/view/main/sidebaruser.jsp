<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="user">
				<div class="avatar-sm float-left mr-2">
					<img src="assets/img/profile.jpg" alt="..."
						class="avatar-img rounded-circle">
				</div>
				<div class="info">
					<a data-toggle="collapse" href="#collapseExample"
						aria-expanded="true"> <span> Hizrian <span
							class="user-level">Administrator</span> <span class="caret"></span>
					</span>
					</a>
					<div class="clearfix"></div>

					<div class="collapse in" id="collapseExample">
						<ul class="nav">
							<li>
								<a href="profile.top"> 
									<span class="link-collapse">My Profile</span>
								</a>
							</li>
							<li>
								<a href="myrequestlist.top"> 
									<span class="link-collapse">Edit Profile</span>
								</a>
							</li>
							<li>
								<a href="#settings"> 
									<span class="link-collapse">Settings</span>
								</a>
							</li>
							<li>
								<a href="logout.top"> 
									<span class="link-collapse">logout</span>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
</body>
</html>