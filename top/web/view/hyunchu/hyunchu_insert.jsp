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

<div class="row">
	<div class="col-md-6">
		<div class="card">
			<form action="insert.top" method="post" accept-charset="utf-8">
				<div class="card-header">
					<div class="card-title">ingID :</div>
					<input type="text"class="form-control" name="ingID">
				</div>
				<div class="card-body">
					<div class="form-group">
						<label for="ingCategory">ingCategory : </label>
						<input type="text"class="form-control" name="ingCategory">
						<div class="form-group">
							<label for="ingName">ingName :</label> 
							<input type="text"class="form-control" name="ingName">
						</div>
						<div class="form-group">
							<label for="ingPrice">ingPrice :</label> 
							<input type="number"class="form-control" name="ingPrice">
						</div>
						<div class="form-group">
							<label for="ingUnit">ingUnit :</label> 
							<input type="text"class="form-control" name="ingUnit">
						</div>
						<div class="form-group">
							<label for="ingBrand"0>ingBrand :</label> 
							<input type="text"class="form-control" name="ingBrand">
						</div>
						<div class="form-group">
							<label for="ingType">ingType :</label>
							<input type="text"class="form-control" name="ingType">
						</div>
						<div class="form-group">
							<label for="ingWeightvv">ingWeight</label> 
							<input type="number"class="form-control" name="ingWeight">
						</div>
						<div class="form-group">
							<label for="ingRegDate">ingRegDate</label> 
							<input type="text"class="form-control" name="ingRegDate">
						</div>
						<div class="form-group">
							<label for="ingLink">ingLink</label> 
							<input type="text"class="form-control" name="ingLink">
						</div>
						<div class="form-group">
							<label for="ingLinkCount">ingLinkCount</label> 
							<input type="number" class="form-control" name="ingLinkCount">
						</div>
						<div class="form-group">
							<label for="ingImgName">ingImgName</label> 
							<input type="text"class="form-control" name="ingImgName">
						</div>
						<div class="card-action">
							<button class="btn btn-success" type="submit">Submit</button>
							<button class="btn btn-danger"><a href="ingdel.top">Cancel</a></button>
						</div>

					</div>
			</form>
		</div>
	</div>
</div>

