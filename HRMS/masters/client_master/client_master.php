<?php
require '../../../connect.php';
include("../../../user.php");
$userrole=$_SESSION['userrole'];
?>
<div class="content-wrapper" style="padding-left: 50px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Client List</h1>
          </div>
          <div class="col-sm-6">
		
		  <a onclick=" add_client()" style="float: right;" data-toggle="modal" class="btn btn-primary btn-sm btn-flat"><i class="fa fa-plus"></i> ADD</a>
	
          </div>
        </div>
      </div><!-- /.container-fluid -->
	</section>
    <!-- Main content -->
    <section class="content">
    <div class="container-fluid">
    <div class="row">
    <div class="col-md-12">
    <!-- Profile Image -->
    <div class="card card-primary card-outline">
    <div class="card-body box-profile">
		 
    <table id="example1" class="table table-bordered">
    <thead>
      <th>#</th>
	  <th>Company Name</th>
      <th>Client Name</th>
	  <th>Client Org Name</th>
	  <th>Mobile No</th>
	  <th>Mail Id</th>
	  <th>Gst No</th>
      <th>Status</th>
      <th>Action</th>
      </thead>
      <tbody>
      <?php
      $emp_sql=$con->query("SELECT a.companyname,b.* FROM company_master a inner join client_master b on (a.id=b.company_id)");
	  //echo "SELECT a.companyname,b.* FROM company_master a inner join client_master b on (a.id=b.company_id)";
      $i=1;
      while($emp_res = $emp_sql->fetch(PDO::FETCH_ASSOC))
      {
       ?>
      <tr>
      <td><?php echo $emp_res['id']; ?></td>
      <td><?php echo $emp_res['companyname']; ?></td>
	  <td><?php echo $emp_res['client_name']; ?></td>
	  <td><?php echo $emp_res['org_name']; ?></td>
	  <td><?php echo $emp_res['mobile_no1']; ?></td>
	  <td><?php echo $emp_res['email_id1']; ?></td>
	  <td><?php echo $emp_res['gst_no']; ?></td>
	  <td>
	  <?php
	  if($emp_res['status']==1)
	  {
		  echo "Active"; 
	  }
	  else
	  {
		  echo "Inactive";
	  }
	  ?>
	  </td>
      <td>
	  <button class="btn btn-success btn-sm edit btn-flat" data-id="<?php echo $emp_res['id']; ?>" onclick="client_edit(<?php echo $emp_res['id']; ?>)"><i class="fa fa-edit"></i> Edit</button>
	  </td>
      </tr>
      <?php
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
</section>
<!-- /.content -->
</div>

<script>
		function add_client()
    {
    $.ajax({
    type:"POST",
    url:"/HRMS/HRMS/masters/client_master/client_master_add.php",
    success:function(data){
    $(".content").html(data);
    }
    })
  }
  function client_edit(v)
    {
    $.ajax({
    type:"POST",
    url:"/HRMS/HRMS/masters/client_master/client_master_edit.php?id="+v,
    success:function(data){
    $(".content").html(data);
    }
    })
  }
  
   
</script>