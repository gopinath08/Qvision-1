<?php
class attendnace_report_main
{
	function Attendance_upload(){
		$upload = '<form enctype="multipart/form-data" method="post" action="demand_excell/upload_insert.php" role="form">
			<div class="control-group">
			<div class="col-md-12">
			<a href="/Qvision/Qvision/attendance/attendance_Format.csv">Download Template</a></p>
			</div>
			<br>
			<div class="form-group">
			<label for="exampleInputFile">File Upload</label>
			<input type="file" name="file" id="file" size="150">
			<p class="help-block">Only Excel/CSV File Import.</p>
			</div>
			<button type="submit" class="btn btn-default" name="submit" value="submit">Upload</button>			
			</form>
		';
		return $upload;
	}
	function Daily_Report(){
		$search = 
		'<div class="row">
		<div class="col-lg-12">
		<div class="panel panel-default">
		<div class="panel-body">
		<div class="row">	
		<form method="GET" name="attendance_report" role="form" >
		<div class="col-lg-12">
		<div class="col-lg-2">
		<input type="date" id="datepicker" class="add-on form-control" id="from_date" name="from_date" placeholder="From Date">
		</div>
		<div class="col-lg-2">
		<input type="date" id="datepicker1" class="add-on form-control" id="to_date" name="to_date" placeholder="To Date">
		</div>
		<div class="col-lg-1">
		OR
		</div>
		<div class="col-lg-3">
		<input type="month" class="add-on form-control"  id="month" name="month"/>
		</div>
		<div class="col-lg-3">
		<select id="department_name" name="department_name"  class="add-on form-control" required>
		<option value="0">All</option>
		</select>
		</div>
		<div class="col-lg-1"><input type="button" name="attendance_report" id="attendance_report" class="btn btn-success" value="SEARCH" onClick="Daily_Report_view()"></div>
		</div>
		</form>
		</div>
		</div>
		</div>
		</div>
		</div>';
		
		return $search;
	}
	
	function Attendance_Report(){
		$search = 
		'<div class="row">
		<div class="col-lg-12">
		<div class="panel panel-default">
		<div class="panel-body">
		<div class="row">	
		<form method="GET" name="attendance_report" role="form" >
		<div class="col-lg-12">
		<div class="col-lg-2">
		<input type="date" id="datepicker" class="add-on form-control" id="from_date" name="from_date" placeholder="From Date">
		</div>
		<div class="col-lg-2">
		<input type="date" id="datepicker1" class="add-on form-control" id="to_date" name="to_date" placeholder="To Date">
		</div>
		<div class="col-lg-1">
		OR
		</div>
		<div class="col-lg-3">
		<input type="month" class="add-on form-control"  id="month" name="month"/>
		</div>
		<div class="col-lg-3">
		<select id="department_name" name="department_name"  class="add-on form-control" required>
		<option value="0">All</option>
		</select>
		</div>
		<div class="col-lg-1"><input type="button" name="attendance_report" id="attendance_report" class="btn btn-success" value="SEARCH" onClick="Attendance_Report_view()"></div>
		</div>
		</form>
		</div>
		</div>
		</div>
		</div>
		</div>';
		
		return $search;
	} 
	
	
	function In_Out_Report(){
		$search = 
		'<div class="row">
		<div class="col-lg-12">
		<div class="panel panel-default">
		<div class="panel-body">
		<div class="row">	
		<form method="GET" name="attendance_report" role="form" >
		<div class="col-lg-12">
		<div class="col-lg-2">
		<input type="date" id="datepicker" class="add-on form-control" id="from_date" name="from_date" placeholder="From Date">
		</div>
		<div class="col-lg-2">
		<input type="date" id="datepicker1" class="add-on form-control" id="to_date" name="to_date" placeholder="To Date">
		</div>
		<div class="col-lg-1">
		OR
		</div>
		<div class="col-lg-3">
		<input type="month" class="add-on form-control"  id="month" name="month"/>
		</div>
		<div class="col-lg-3">
		<select id="department_name" name="department_name"  class="add-on form-control" required>
		<option value="0">All</option>
		</select>
		</div>
		<div class="col-lg-1"><input type="button" name="attendance_report" id="attendance_report" class="btn btn-success" value="SEARCH" onClick="In_Out_Report_view()"></div>
		</div>
		</form>
		</div>
		</div>
		</div>
		</div>
		</div>';
		
		return $search;
	} 
	
	function Summary_Report(){
		$search = 
		'<div class="row">
		<div class="col-lg-12">
		<div class="panel panel-default">
		<div class="panel-body">
		<div class="row">	
		<form method="GET" name="attendance_report" role="form" >
		<div class="col-lg-12">
		<div class="col-lg-2">
		<input type="date" id="datepicker" class="add-on form-control" id="from_date" name="from_date" placeholder="From Date">
		</div>
		<div class="col-lg-2">
		<input type="date" id="datepicker1" class="add-on form-control" id="to_date" name="to_date" placeholder="To Date">
		</div>
		<div class="col-lg-1">
		OR
		</div>
		<div class="col-lg-3">
		<input type="month" class="add-on form-control"  id="month" name="month"/>
		</div>
		<div class="col-lg-3">
		<select id="department_name" name="department_name"  class="add-on form-control" required>
		<option value="0">All</option>
		</select>
		</div>
		<div class="col-lg-1"><input type="button" name="attendance_report" id="attendance_report" class="btn btn-success" value="SEARCH" onClick="Summary_Report_view()"></div>
		</div>
		</form>
		</div>
		</div>
		</div>
		</div>
		</div>';
		
		return $search;
	} 
}
?>





