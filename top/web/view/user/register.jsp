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

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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
</script>


<!-- Datepicker -->
<script src="script/bootstrapDatepicker.js"></script>
<script src="script/bootstrapDatepickerKorean.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
<!--  -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">

<style>
.datePicker {
	z-index: 999 !important;
}
</style>
<script>
	$(function() {
		$('.datePicker').datepicker({
			format : "yyyy-mm-dd", //데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
			//startDate : '-10d', //달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
			//endDate : '+10d', //달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
			autoclose : true, //사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
			calendarWeeks : false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
			clearBtn : false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
			//datesDisabled : [ '2019-06-24', '2019-06-26' ],//선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
			//daysOfWeekDisabled : [ 0, 6 ], //선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
			daysOfWeekHighlighted : [ 0 ], //강조 되어야 하는 요일 설정
			disableTouchKeyboard : false, //모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
			immediateUpdates : false, //사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false 
			multidate : false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false 
			multidateSeparator : ",", //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
			templates : {
				leftArrow : '&laquo;',
				rightArrow : '&raquo;'
			}, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징 
			showWeekDays : true,// 위에 요일 보여주는 옵션 기본값 : true
			title : "생일", //캘린더 상단에 보여주는 타이틀
			todayHighlight : true, //오늘 날짜에 하이라이팅 기능 기본값 :false 
			toggleActive : true, //이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
			weekStart : 0,//달력 시작 요일 선택하는 것 기본값은 0인 일요일 
			language : "ko" //달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.

		});//datepicker end
	});//ready end
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
							class="form-control datePicker" />
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
</body>
</html>


