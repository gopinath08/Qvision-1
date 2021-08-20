<?php
require '../../../connect.php';
include("../../../user.php");
$userrole=$_SESSION['userrole'];
?>
<style>
#page-wrapper{
	margin-left: 117px !important;
}
.btn-warning{
	padding-top: 0px !important;
}

.btn-warning{
	background-color: #337ab7 !important;
    border-color: #337ab7 !important;
}
.btn-success{
	background-color: #5cb85c !important;
    border-color: #5cb85c !important;
}
.page-header{
	border-bottom: 3px solid #eee !important;
}
</style>

	<div id="table_view" style="
    margin-left: 13rem;>
<div class="content-wrapper" id="page-wrapper">
<div class="container-fluid">

 <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Staff List</h1>
                        </div>
                        </div>
						<div class="row">
						 <div class="col-lg-12">
		   <a onclick=" upload_excel()" style="float: right;" data-toggle="modal" class="btn btn-primary btn-sm btn-flat"><i class="fa fa-plus"></i> EXCEL</a>

          </div>
                        <!-- /.col-lg-12 -->
                    </div>
					
					<br>
					
					<div class="row content">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Staff  
                                </div>
					
    <!-- Content Header (Page header) -->
    
    <!-- Main content -->
  
   <div class="panel-body">
      <div class="table-responsive">
       <table class="dataTables-example table table-striped table-bordered table-hover"  id="example1">
		 
   <thead>
		<tr>
		  <th>Id</th>
		  <th>Code</th>
		  <th>Staff Name</th>
		  <th>Department</th>
		  <th>Status</th>
		  
		   <th>Action</th>
		</tr>
      </thead>
      <tbody>
      <?php
      $emp_sql=$con->query("SELECT *,s.id as id,s.status as status FROM staff_master s left join z_department_master d on s.dep_id=d.id where s.status=1");
      $i=1;
      while($emp_res = $emp_sql->fetch(PDO::FETCH_ASSOC))
      {
      $emp_id = $emp_res['id'] ;
      ?>
      <tr>
		  <td><?php echo $i; ?></td>
		  <td><?php echo $emp_res['prefix_code'].$emp_res['emp_code']; ?></td>
		  <td><?php echo $emp_res['emp_name']; ?></td>		 
		  <td><?php echo $emp_res['dept_name']; ?></td>		  
		  <td>
		  <?php 
		  if($emp_res['status'] == 1)
		  {
			  ?>
		<span style="color:orange;text-align:center;"><b>Active</b></span>
		  <?php
		  } else if($emp_res['status'] == 0)
		  {
		  ?>
		  <span style="color:green;text-align:center;"><b>In Active</b></span>
		  <?php
		  }  
		  ?>		   
		  </td>
		  
		   <td><?php if($emp_res['status'] == 1){
			  ?>
		  <button class="btn btn-primary btn-sm" data-id="<?php echo $emp_res['id']; ?>" onclick="edit(<?php echo $emp_res['candid_id']; ?>)"> <i class="fa fa-mail">Edit</i><?php }  ?></button>
		  
		  <button class="btn btn-success btn-sm" data-id="<?php echo $emp_res['id']; ?>" onclick="staff_view(<?php echo $emp_res['id']; ?>)"> View</button>
		   
		 </td>
      </tr>
      <?php
	  $i++;
      }
      ?>
      </tbody>
      </table>
	 
      </div>
<!-- /.card -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </div><!-- /.container-fluid -->

<!-- /.content -->
</div>
</div>
</div>
</div>
<script>
            $(document).ready(function() {
                $('.dataTables-example').DataTable({
                        responsive: true
                });
            });
        </script>
 <script>
	  function staff_view(v)
	  {
	$.ajax({
	type:"POST",
	url:"Qvision/Recruitment/staff/document_view.php?id="+v,
	success:function(data)
	{
		$("#table_view").html(data);
	}
	})

	  }
	  
	  function edit(v)
	  {
		 
		  $.ajax({
	type:"POST",
	url:"Qvision/Recruitment/staff/staff_edit.php?id="+v,
	success:function(data)
	{
		$('#table_view').html(data);
	}
	})
		  
	  }
	  
	  function insert_emp(v)
	  {
		  $.ajax({
	type:"POST",
	url:"Qvision/Recruitment/insert_employee.php?id="+v,
	success:function(data)
	{
		if(data==0)
		{
			alert("success");
			document_approve();
		}
		else{
			alert("Failed");
			document_approve();
		}
	}
	})
		  
	  }
	  
	  
	 function upload_excel()
	 {
		 $.ajax({
			 type:"POST",
			 url:"Qvision/Recruitment/staff/upload_excel.php",
			 success:function(data)
			 {
				 $("#table_view").html(data);
			 }
		 })
	 }	 
	  
	  </script>