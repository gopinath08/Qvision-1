<?php
require '../../../connect.php';
include("../../../user.php");
$userrole=$_SESSION['userrole'];
?>
<div class="container-fluid">
<div class="card mb-3">

<form method="POST" action="Qvision/masters/interview_rounds/interviewrounds_submit.php">
<input type="hidden" name="userrole" id="userrole" value="<?php echo  $userrole; ?>">
<table class="table table-bordered">
<tr>
<div class="row">
						 <!--div class="col-lg-12"-->
		  <a onclick=" back()" style="float: right;" data-toggle="modal" class="btn btn-primary btn-sm btn-flat"><i class="fa fa-plus"></i>BACK</a>


          </div>
                        <!-- /.col-lg-12 -->
                    </div>
</tr>

<tr>
<td><center><img src="../../Recruitment/image/userlog/quadsel.png" alt="quadsel" style="width:100px;height:50px;"></center></td>
<td colspan="5"><center><b>Quadsel Systems Private Limited</b></center></td>
</tr>
<!--tr>
<td>Department ID</td>
<td colspan="2"><select class="form-control" name="department">
		<option value="0">-- Select Department --</option>
		<?php
		$dep_sql=$con->query("SELECT id, dept_name, status, created_by, created_on FROM z_department_master");
		while($dep_sql_res=$dep_sql->fetch(PDO::FETCH_ASSOC))
		{
			?>
			<option value="<?php echo $dep_sql_res['id']; ?>"><?php echo $dep_sql_res['dept_name']; ?></option>
			<?php
		}
		?>
		</select></td>

</tr-->
<tr>
<td>Name:</td>
<td colspan="2"><input type="text" class="form-control" id="name" name="name"</td>
</tr>

<tr>
<td>Status</td>
<td colspan="2">
<select class="form-control" name="status" id="status">
<option value="">Select Status</option>
<option value="1">Active</option>
<option value="0">InActive</option>
</select>
</td>
</tr>
</table>
<input type="submit" name="submit" class="btn btn-primary btn-md" style="float:right;">
</form>
<script>
		function back()
    {
    $.ajax({
    type:"POST",
    url:"/Qvision/Qvision/masters/interview_rounds/interview_rounds.php",
    success:function(data){
    $(".content").html(data);
    }
    })
  }
  </script>
