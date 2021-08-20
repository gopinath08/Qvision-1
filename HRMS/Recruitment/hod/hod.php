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
<div class="content-wrapper" id="page-wrapper">
<div class="container-fluid">

 <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">HOD List</h1>
                        </div>
                        </div>
						
					
					<div class="row content">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                   HOD  
                                </div>
					
    <!-- Content Header (Page header) -->
    
    <!-- Main content -->
  <div class="row">
						 <div class="col-lg-12">
		  <a onclick=" add_hod()" style="float: right;" data-toggle="modal" class="btn btn-primary btn-sm btn-flat"><i class="fa fa-plus"></i> ADD</a>


          </div>
                        <!-- /.col-lg-12 -->
                    </div>
				
   <div class="panel-body">
      <div class="table-responsive">
       <table class="dataTables-example table table-striped table-bordered table-hover"  id="example1">
		 
   
    <thead>
      <th>ID</th>
	  <th>Department</th>
	  <th>Employee Name</th>
      <th>Asset</th>
	  <th>Mail ID</th>
      <th>Others</th>
	  <th>Action</th>
      </thead>
   <tbody>

      <!--th>Tools</th-->
      <?php
      $emp_sql=$con->query("SELECT z.dept_name,sm.emp_name,h.asset,h.mail_id,h.others,h.id AS hid FROM hod h join z_department_master z on h.dept_name=z.dept_name 
");
	  
	 //echo "SELECT sm.emp_name,s.stationaries,s.system_or_laptop,s.id_card,s.cug,s.access_card,s.erp_access,s.mail_id,s.id AS sid FROM staff_asset s join staff_master sm on s.emp_name=sm.id";
      $i=1;
      while($emp_res = $emp_sql->fetch(PDO::FETCH_ASSOC))
      {
       ?>
      <tr>
      <td><?php echo $i; ?></td>
	  <td><?php echo $emp_res['dept_name']; ?></td>
      <td><?php echo $emp_res['emp_name']; ?></td>
	        <td><?php echo $emp_res['asset']; ?></td>
		    <td><?php echo $emp_res['mail_id']; ?></td>
	        <td><?php echo $emp_res['others']; ?></td>
      <td>
	  <button class="btn btn-success btn-sm edit btn-flat" data-id="<?php echo $emp_res['hid']; ?>" onclick="staff_asset_edit(<?php echo $emp_res['hid']; ?>)"><i class="fa fa-edit"></i> Edit</button>
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
<script>
            $(document).ready(function() {
                $('.dataTables-example').DataTable({
                        responsive: true
                });
            });
        </script>
<script>
		function add_hod()
    {
    $.ajax({
    type:"POST",
    url:"/Qvision/Qvision/Recruitment/hod/new_hod.php",
    success:function(data){
    $(".content").html(data);
    }
    })
  }
  function staff_asset_edit(v)
    {
    $.ajax({
    type:"POST",
    url:"/Qvision/Qvision/Recruitment/hod/edit_hod.php?id="+v,
    success:function(data){
    $(".content").html(data);
    }
    })
  }
  
   
</script>