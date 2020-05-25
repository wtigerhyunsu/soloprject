<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>
<head>
<meta charset="utf-8">
</head>
<script type="text/javascript">
	function f_link(ingID) {
		alert(ingID);
		location.href = "uupdate.top?ingID=" + ingID;
	}
</script>
<div class="row">
	<div class="col-md-6">
		<div class="card">
			<form action="up.top" method="post" accept-charset="utf-8">
				<div class="card-header">
					<div class="card-title">ingID : ${updatalist.ingID }</div>
				</div>
				<div class="card-body">
					<div class="form-group">
						<label for="ingCategory">ingCategory : ${i.ingCategory }</label>

						<div class="form-group">
							<label for="ingName"0>ingName</label> <input type="text"
								class="form-control" name="ingName"
								value="${updatalist.ingName }">
						</div>
						<div class="form-group">
							<label for="ingPrice"0>ingPrice</label> <input type="number"
								class="form-control" name="ingPrice"
								value="${updatalist.ingPrice }">
						</div>
						<div class="form-group">
							<label for="ingUnit"0>ingUnit</label> <input type="text"
								class="form-control" name="ingUnit"
								value="${updatalist.ingUnit }">
						</div>
						<div class="form-group">
							<label for="ingBrand"0>ingBrand</label> <input type="text"
								class="form-control" name="ingBrand"
								value="${updatalist.ingBrand }">
						</div>
						<div class="form-group">
							<label for="ingType">ingType:${i.ingType }</label>
						</div>
						<div class="form-group">
							<label for="ingWeightvv"0>ingWeight</label> <input type="number"
								class="form-control" name="ingWeight"
								value="${updatalist.ingWeight }">
						</div>
						<div class="form-group">
							<label for="ingRegDate"0>ingRegDate</label> <input type="text"
								class="form-control" name="ingRegDate"
								value="${updatalist.ingRegDate }">
						</div>
						<div class="form-group">
							<label for="ingLink"0>ingLink</label> <input type="text"
								class="form-control" name="ingLink"
								value="${updatalist.ingLink }">
						</div>
						<div class="form-group">
							<label for="ingLinkCount"0>ingLinkCount</label> <input
								type="number" class="form-control" name="ingLinkCount"
								value="${updatalist.ingLinkCount }">
						</div>
						<div class="form-group">
							<label for="ingImgName"0>ingImgName</label> <input type="text"
								class="form-control" name="ingImgName"
								value="${updatalist.ingImgName }">
						</div>
						<div class="card-action">
							<button class="btn btn-success" type="submit"
								onclick="f_link('${updatalist.ingID}')">Submit</button>
							<button class="btn btn-danger">Cancel</button>
						</div>

					</div>
			</form>
		</div>
	</div>
</div>

