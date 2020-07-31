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

#add {
	float: right !important;
}
</style>

<script>
	$(function() {
		$('#datePicker').datepicker({
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

	$(document)
			.ready(
					function() {
						$('#basic-datatables').DataTable({});
						$('#multi-filter-select')
								.DataTable(
										{
											"pageLength" : 5,
											initComplete : function() {
												this
														.api()
														.columns()
														.every(
																function() {
																	var column = this;
																	var select = $(
																			'<select class="form-control"><option value=""></option></select>')
																			.appendTo(
																					$(
																							column
																									.footer())
																							.empty())
																			.on(
																					'change',
																					function() {
																						var val = $.fn.dataTable.util
																								.escapeRegex($(
																										this)
																										.val());
																						column
																								.search(
																										val ? '^'
																												+ val
																												+ '$'
																												: '',
																										true,
																										false)
																								.draw();
																					});
																	column
																			.data()
																			.unique()
																			.sort()
																			.each(
																					function(
																							d,
																							j) {
																						select
																								.append('<option value="'+d+'">'
																										+ d
																										+ '</option>')
																					});
																});
											}
										});

						// Add Row
						$('#add-row').DataTable({
							"pageLength" : 5,
						});

						var action = '<td> <div class="form-button-action"> <button type="button" data-toggle="tooltip" title="" class="btn btn-link btn-primary btn-lg" data-original-title="Edit Task"> <i class="fa fa-edit"></i> </button> <button type="button" data-toggle="tooltip" title="" class="btn btn-link btn-danger" data-original-title="Remove"> <i class="fa fa-times"></i> </button> </div> </td>';

						$('#addRowButton').click(
								function() {
									$('#add-row').dataTable().fnAddData(
											[ $("#addName").val(),
													$("#addPosition").val(),
													$("#addOffice").val(),
													action ]);
									$('#addRowModal').modal('hide');

								});
					});

	function ing(requestNO) {
		console.log(requestNO);
		var data = {
			'requestNO' : requestNO
		};
		$.ajax({
			//url : "adjust.top?ingID=" + ingID,
			url : "adjust.top",
			data : data,
			contentType : "application/json; charset=UTF-8",
			success : function(data) {
				console.log(data)

				$(".modal-body #requestNO").val(data.requestNO);
				$(".modal-body #rnumber").val(data.rnumber);
				$(".modal-body #site").val(data.site);
				$(".modal-body #jod").val(data.jod);
				$(".modal-body #qualify").val(data.qualify);
				$(".modal-body #period").val(data.period);
				$(".modal-body #form").val(data.form);
				$(".modal-body #term").val(data.term);
				$(".modal-body #wperiod").val(data.wperiod);
				$(".modal-body #jstart").val(data.jstart);
				$(".modal-body #pay").val(data.pay);
				$(".modal-body #area").val(data.area);

				console.log(data.requestNO + "ing json");

			}

		});
	};
</script>

</head>
<body>
	<!-- **************************************************************modal************************************************************* -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header no-bd">
					<h5 class="modal-title">
						<span class="fw-mediumbold"> 의뢰서</span> <span class="fw-light">
						</span>
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p class="small">의뢰서 입니다.</p>
					<form>
						<div class="row">
							<!-- <div class="col-sm-12">
								<div class="form-group form-group-default">
									<label>번호</label> <input id="requestNO" name="requestNO" type="text"
										class="form-control" placeholder="fill name">
								</div>
							</div>
							 -->
							<div class="col-md-6 pr-0">
								<div class="form-group form-group-default">
									<label>인원</label> <input id="rnumber" name="rnumber"
										type="text" class="form-control" placeholder="fill position">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>현장</label> <input id="site" name="site" type="text"
										class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>업무</label> <input id="jod" name="jod" type="text"
										class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>요원자격</label> <input id="qualify" name="qualify"
										type="text" class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>기간</label> <input id="period" name="period" type="text"
										class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>고용형태</label> <input id="form" name="form" type="text"
										class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>고용기간</label> <input id="term" name="term" type="text"
										class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>근무시간</label> <input id="wperiod" name="wperiod"
										type="text" class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>근무시작 날짜</label> <input id="jstart" name="jstart"
										type="text" class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>급여</label> <input id="pay" name="pay" type="text"
										class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>지역</label> <input id="area" name="area" type="text"
										class="form-control" placeholder="fill office">
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer no-bd">
					<button type="button" id="addRowButton" class="btn btn-primary"
						data-toggle="modal" data-dismiss="modal" data-target="#estimate">Add</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- **************************************************************modal end************************************************************* -->
	<!-- **************************************************************insert REQUEST************************************************************* -->
	<div class="modal fade" id="insertmodal" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header no-bd">
					<h5 class="modal-title">
						<span class="fw-mediumbold"> 의뢰서</span> <span class="fw-light">
						</span>
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p class="small">의뢰서를 작성해주세요.</p>
					<form action="requestinput.top" method="post"
						accept-charset="utf-8">
						<div class="row">
							<!--  시퀀스
							<div class="col-sm-12">
								<div class="form-group form-group-default">
									<label>번호</label> <input id="requestNO" name="requestNO" type="text"
										class="form-control" placeholder="fill name">
								</div>
							</div>
						-->
							<div class="col-md-6 pr-0">
								<div class="form-group form-group-default">
									<label>인원</label> <input id="irnumber" name="rnumber"
										type="text" class="form-control" placeholder="fill position">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>현장</label> <input id="isite" name="site" type="text"
										class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>업무</label> <input id="ijod" name="jod" type="text"
										class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>요원자격</label> <input id="iqualify" name="qualify"
										type="text" class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>기간</label> <input id="iperiod" name="period" type="text"
										class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>고용형태</label> <input id="iform" name="form" type="text"
										class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>고용기간</label> <input id="iterm" name="term" type="text"
										class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>근무시간</label> <input id="iwperiod" name="wperiod"
										type="text" class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>근무시작 날짜</label> <input id="datepicker" name="jstart"
										type="text" class="form-control datePickerl"
										placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>급여</label> <input id="ipay" name="pay" type="text"
										class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>지역</label> <input id="iarea" name="area" type="text"
										class="form-control" placeholder="fill office">
								</div>
							</div>
						</div>
						<div class="modal-footer no-bd">
							<button id="addRowButton" type="submit" class="btn btn-primary">Add</button>
							<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- **************************************************************insert REQUEST end************************************************************* -->
	<!-- **************************************************************insert estimate************************************************************* -->
	<div class="modal fade" id="estimate" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header no-bd">
					<h5 class="modal-title">
						<span class="fw-mediumbold"> 견적서 입니다</span> <span class="fw-light">
						</span>
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p class="small">견적서를 작성해주세요.</p>
					<form action="insertestimate.top" method="post"
						accept-charset="utf-8">
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group form-group-default">
									<label>번호</label> <input id="requestNO" name="requestNO"
										type="text" class="form-control" placeholder="fill name"
										readonly>
								</div>
							</div>
							<div class="col-md-6 pr-0">
								<div class="form-group form-group-default">
									<label>인원</label> <input id="ernumber" name="ernumber"
										type="text" class="form-control" placeholder="fill position">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>현장</label> <input id="esite" name="esite" type="text"
										class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>업무</label> <input id="ejod" name="ejod" type="text"
										class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>요원자격</label> <input id="equalify" name="equalify"
										type="text" class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>기간</label> <input id="eperiod" name="eperiod"
										type="text" class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>고용형태</label> <input id="eform" name="eform" type="text"
										class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>고용기간</label> <input id="eterm" name="eterm" type="text"
										class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>근무시간</label> <input id="ewperiod" name="ewperiod"
										type="text" class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>근무시작 날짜</label> <input id="datepicker" name="ejstart"
										type="text" class="form-control datePickerl"
										placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>급여</label> <input id="epay" name="epay" type="text"
										class="form-control" placeholder="fill office">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-group-default">
									<label>지역</label> <input id="earea" name="earea" type="text"
										class="form-control" placeholder="fill office">
								</div>
							</div>
						</div>
						<div class="modal-footer no-bd">
							<button id="addRowButton" type="submit" class="btn btn-primary">Add</button>
							<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- **************************************************************insert estimate end************************************************************* -->

	<div class="content">
		<div class="page-inner">
			<div class="page-header">
				<h4 class="page-title">DataTables.Net</h4>
				<ul class="breadcrumbs">
					<li class="nav-home"><a href="#"> <i class="flaticon-home"></i>
					</a></li>
					<li class="separator"><i class="flaticon-right-arrow"></i></li>
					<li class="nav-item"><a href="#">Tables</a></li>
					<li class="separator"><i class="flaticon-right-arrow"></i></li>
					<li class="nav-item"><a href="#">Datatables</a></li>
				</ul>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h4 class="card-title">
								Basic
								<button class="btn btn-primary btn-round ml-auto"
									data-toggle="modal" id="add" data-target="#insertmodal">
									<i class="fa fa-plus"></i> Add Row
								</button>
							</h4>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table id="basic-datatables"
									class="display table table-striped table-hover">
									<thead>
										<tr>
											<th>NO</th>
											<th>area</th>
											<th>term</th>
											<th>pay</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="i" items="${requestListData }">
											<tr>
												<td>${i.requestNO }</td>
												<td>${i.area }</td>
												<td>${i.term }</td>
												<td>${i.pay }</td>
												<td>
													<div class="form-button-action">
														<button type="button" data-toggle="modal"
															data-target="#myModal"
															class="btn btn-link btn-primary btn-lg"
															onclick="ing('${i.requestNO}');"
															data-original-title="Edit Task">
															<i class="fa fa-edit"></i>
														</button>
														<button type="button" data-toggle="tooltip" title=""
															class="btn btn-link btn-danger"
															data-original-title="Remove">
															<i class="fa fa-times"></i>
														</button>
													</div>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!--  -->

			</div>
		</div>
	</div>


</body>
</html>