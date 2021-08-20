<?php
require '../../../connect.php';
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
  <!-- Breadcrumbs-->
  <!--ol class="breadcrumb">
    <li class="breadcrumb-item">
      <a href="#">Dashboard</a>
    </li>
    <li class="breadcrumb-item active">Payroll Structure <?php if($con) {	echo "connect"; } ?></li>
  </ol-->
  <!-- Example DataTables Card-->
  
  <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Deduction Master</h1>
                        </div>
                        </div>
						<div class="row">
						 <div class="col-lg-12">
						    <input type="button" style="float:right;" class="btn btn-warning" name="new" value="ADD" onclick="deduction_esi()">


          </div>
                        <!-- /.col-lg-12 -->
                    </div>
  
  <br>
  
  <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Deduction 
                                </div>
  
  
 
   
    <div class="panel-body">
      <div class="table-responsive">
       <table class="table table-striped table-bordered table-hover" id="dataTables-example">
          <thead>
       
          <!--th>#</th-->
          <th>Id</th>
		  <th>Name</th>
          <th>From Date</th>
		   <th>Amount</th>
          <th>Percentage</th>
		  <th>Minimum Amount</th>
		  <th>Maximum Amount</th>
		  <th>Status</th>
          <th>Action</th>
         
          </thead>
         
          <tbody>
          <?php

          $sql=$con->query("SELECT id,name,from_date,amount,percentage,min_amount,max_amount,status FROM payroll_deduction_master");

          $i=1;
          while($res = $sql->fetch(PDO::FETCH_ASSOC))
          {
          ?>
          <tr>
          <!--td><?php echo $i; ?></td-->
	     <td><?php echo $res['id'] ; ?></td>
		 <td><?php echo $res['name'] ; ?></td>
         <td><?php echo $res['from_date'] ; ?></td>
		  <td><?php echo $res['amount'] ; ?></td>
         <td><?php echo $res['percentage'] ; ?></td>
         <td><?php echo $res['min_amount'] ; ?></td>
         <td><?php echo $res['max_amount'] ; ?></td>
         <td>
		  
	  <?php 
	  if($res['status'] ==1)
	  {
		  
	  echo '<span style="color:green;text-align:center;"><b>Active</b></span>';
	  ?>
	  <?php }else {
		  
		 echo '<span style="color:red;text-align:center;"><b>INActive</b></span>';
		 ?>
      <?php }?>
	 
	  
     </td>
	  <td>
          <!--button class="btn btn-primary"  value="<?php echo $payroll_structure['id']; ?>" onclick="scale_view(this.value)"> View</button-->
          <!--button class="btn btn-danger" value="<?php echo $payroll_structure['id']; ?>" onclick="scale_edit(this.value)">Edit</button-->
		  <button class="btn btn-success btn-sm edit btn-flat" data-id="<?php echo $res['id']; ?>" onclick="deduction_esi_edit(<?php echo $res['id']; ?>)"><i class="fa fa-edit"></i> Edit</button>
          </td>
          </tr>

          <?php
          $i++;
          }
          ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
</div>
</div>
</div>
<script>
            $(document).ready(function() {
                $('#dataTables-example').DataTable({
                        responsive: true
                });
            });
        </script>
<script>
function deduction_esi_edit(ids)
{
	$.ajax({
    type:"GET",
    data:"ids="+ids,
    url:"/Qvision/Qvision/payroll/deduction/deduction_esi_edit.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}

function deduction_esi()
{
	
	$.ajax({
    type:"POST",
    url:"/Qvision/Qvision/payroll/deduction/deduction_esi_add.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
</script>
