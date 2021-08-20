<?php
require '../../../connect.php';
include("../../../user.php");
$userrole=$_SESSION['userrole'];
?>
<style>
#page-wrapper{
	margin-left: 117px !important;
}
</style>

<div class="content-wrapper" id="page-wrapper">
<div class="container-fluid">

<div class="row">
                       <div class="row content">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Interview Rounds List
                                </div>
								<div class="row">
						 <div class="col-lg-12">
		  <a onclick=" add_interviewrounds()" style="float: right;" data-toggle="modal" class="btn btn-primary btn-sm btn-flat"><i class="fa fa-plus"></i> ADD</a>


          </div>
                        <!-- /.col-lg-12 -->
                    </div>
  
    <div class="panel-body">
      <div class="table-responsive">
	 
		 
    <table id="example1" class="dataTables-example table table-bordered">
    <thead>
      <th>#</th>
      <th>Name</th>
      <th>Status</th>
      <th>Action</th>
      </thead>
      <tbody>
      <?php
      $emp_sql=$con->query("SELECT * FROM interview_rounds ");
      $i=1;
      while($emp_res = $emp_sql->fetch(PDO::FETCH_ASSOC))
      {
       ?>
      <tr>
      <td><?php echo $i; ?></td>
      <td><?php echo $emp_res['name']; ?></td>
	  <td>
	  <?php
	  if($emp_res['status']==1)
	  {
		  echo '<span style="color:green;text-align:center;"><b>Active</b></span>';
	  }
	  else
	  {
		   echo '<span style="color:red;text-align:center;"><b>Inactive</b></span>';
	  }
	  ?>
	  </td>
      <td>
	  <button class="btn btn-success btn-sm edit btn-flat" data-id="<?php echo $emp_res['id']; ?>" onclick="interviewrounds_edit(<?php echo $emp_res['id']; ?>)"><i class="fa fa-edit"></i> Edit</button>
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
<script>
            $(document).ready(function() {
                $('.dataTables-example').DataTable({
                        responsive: true
                });
            });
        </script>
<script>
		function add_interviewrounds()
    {
    $.ajax({
    type:"POST",
    url:"/Qvision/Qvision/masters/interview_rounds/new_interview_rounds.php",
    success:function(data){
    $(".content").html(data);
    }
    })
  }
  function interviewrounds_edit(v)
    {
    $.ajax({
    type:"POST",
    url:"/Qvision/Qvision/masters/interview_rounds/edit_interview_rounds.php?id="+v,
    success:function(data){
    $(".content").html(data);
    }
    })
  }
  
   
</script>