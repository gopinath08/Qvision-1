	<?php
	require '../../connect.php';
	date_default_timezone_set("Asia/Kolkata");
	$curdate=date("d-m-y");
	?>
	<!-- Page Content -->
	<div class="container-fluid">
	<div class="row">
	<div class="col-lg-12">
	<div class="panel panel-default">
	<div class="panel-heading">
	<h3>Attendance Report</h3>
	</div>
	<!-- /.panel-heading -->
	<div class="panel-body">
	<!-- Nav tabs -->
	<ul class="nav nav-pills">
	<li><a href="#attendance-pills" data-toggle="tab">Attendance Upload</a>
	</li>
	<li><a href="#first-pills" data-toggle="tab">Daily Report</a>
	</li>
	<li><a href="#second-pills" data-toggle="tab" >Attendance Report</a>
	</li>
	<li><a href="#home-pills" data-toggle="tab">In-Out Report</a>
	</li>
	<li><a href="#home-pills" data-toggle="tab">Summary Report</a>
	</li>
	</ul>
	</div>
	<!-- /.panel-body -->
	</div>
	<style>
	</style>
	<?php require('daily_report_page.php'); 
	
	$obj = new attendnace_report_main();	
	?>
	<!-- /.panel -->
	<!-- Tab panes -->
	<div class="tab-content">
	<div class="tab-pane fade in" id="zero-pills">
		<?php
		echo $obj->Attendance_upload();
		?>
	</div>
	<div class="tab-pane fade in" id="first-pills">
		<?php
		echo $obj->Daily_Report();
		?>
	</div>
	<div class="tab-pane fade in" id="second-pills">
		<?php
		echo $obj->Attendance_Report();
		?>
	</div>
	<div class="tab-pane fade in" id="second-pills">
		<?php
		echo $obj->In_Out_Report();
		?>
	</div>
	<div class="tab-pane fade in" id="second-pills">
		<?php
		echo  $obj->Summary_Report();
		?>
	</div>
	</div>
	</div>
	</div>
	<!-- /.row -->
	<div class="row" id="attendance_reports_view">
	</div>
	</div>
	<!-- /.container-fluid -->
	

	<script>
	function Daily_Report_view()
	{
		var data = $('form').serialize();	
		$.ajax({
		type:'GET',
		url:'/Qvision/Qvision/attendance/attendance_report_view.php',
		data:"id="+1,data,
		success:function(data)
		{
			$("#attendance_reports_view").html(data);
		}
		})
	}
	
	function Attendance_Report_view()
	{
		var data = $('form').serialize();	
		$.ajax({
		type:'GET',
		url:'/Qvision/Qvision/attendance/attendance_report_view.php',
		data:"id="+1,data,
		success:function(data)
		{
			$("#attendance_reports_view").html(data);
		}
		})
	}
	
	function In_Out_Report_view()
	{
		var data = $('form').serialize();	
		$.ajax({
		type:'GET',
		url:'/Qvision/Qvision/attendance/attendance_report_view.php',
		data:"id="+1,data,
		success:function(data)
		{
			$("#attendance_reports_view").html(data);
		}
		})
	}
	
	function Summary_Report_view()
	{
		var data = $('form').serialize();	
		$.ajax({
		type:'GET',
		url:'/Qvision/Qvision/attendance/attendance_report_view.php',
		data:"id="+1,data,
		success:function(data)
		{
			$("#attendance_reports_view").html(data);
		}
		})
	}
	</script>
	

