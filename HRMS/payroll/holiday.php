	<?php
	require '../../connect.php';
	?>
	<style>
	#page-wrapper{
	margin-left: 117px !important;
	}
	.page-header{
	border-bottom: 3px solid #eee !important;
	}
	</style>
	<div id="page-wrapper">
	<div class="container-fluid">
	<div class="row">
	<div class="col-lg-12">
	<h1 class="page-header">Holiday Master</h1>
	</div>
	</div>
	<div class="row">
	<div class="col-lg-12">
	<a onclick="return add_employee()" style="float: right;" data-toggle="modal" class="btn btn-primary btn-sm btn-flat"><i class="fa fa-plus"></i> ADD</a>
	</div>
	<!-- /.col-lg-12 -->
	</div>
	<br>
	<!-- /.row -->
	<div class="row content">
	<div class="col-lg-12">
	<div class="panel panel-default">
	<div class="panel-heading">
	Holiday
	</div>
	<!-- /.panel-heading -->
	<div class="panel-body">
	<div class="table-responsive">
	<table class="dataTables-example table table-striped table-bordered table-hover" id="example1">
	<thead>
	<th>S.No</th>
	<th>Holiday Name</th>
	<th>Date</th>
	<th>Year </th>
	<th>Status</th>
	<th>Action</th>
	</thead>
	<tbody>
	<?php
	$holiday=$con->query("SELECT * FROM `holiday_master`");
	$cnt=1;
	while($holiday_master = $holiday->fetch(PDO::FETCH_ASSOC))
	{
     
	 ?>
	<tr>
	<td><?php echo $cnt;?>.</td>
	<td><?php echo $holiday_master['leave_name']; ?></td>
	<td><?php echo $holiday_master['leave_date']; ?></td>
	<td><?php echo $holiday_master['year']; ?></td>

	<td>
	<?php 
	if($holiday_master['status'] ==1)
	{	  
		echo '<span style="color:green;text-align:center;"><b>Active</b></span>';
	?>
	<?php 
	}
	else 
	{
		echo '<span style="color:red;text-align:center;"><b>INActive</b></span>';	  
	}
	?>


	</td>
	<td>
	<button class="btn btn-success btn-sm edit btn-flat" data-id="<?php echo $holiday_master['id']; ?>" onclick="holiday_edit(<?php echo $holiday_master['id']; ?>)"><i class="fa fa-edit"></i> Edit</button>
	</td>
	</tr>
	<?php
	$cnt=$cnt+1;
	}
	?>
	</tbody>
	</table>
</div>
<!-- /.table-responsive -->

</div>
<!-- /.panel-body -->
</div>
<!-- /.panel -->
</div>
<!-- /.col-lg-12 -->
</div>

</div>
<!-- /.row -->

</div>

<!-- /#page-wrapper -->
<script>
$(document).ready(function()
{
	$('.dataTables-example').DataTable({
	responsive: true
	});
});
</script>
<script>
	function add_employee()
    {
		$.ajax({
		type:"POST",
		url:"Qvision/payroll/payoll_add.php",
		success:function(data){
		$(".content").html(data);
		}
		})
	}
  function holiday_edit(v){
		$.ajax({
		type:"POST",
		url:"Qvision/payroll/payroll_edit.php?id="+v,
		success:function(data)
		{
			$(".content").html(data);
		}
		})
	}
</script>