<?php
require '../../../connect.php';
include("../../../user.php");
$userrole=$_SESSION['userrole'];
?>
<div class="container-fluid">
<div class="card mb-3">

<form method="POST" action="Qvision/masters/interview_rounds_mapping/interviewroundsmapping_submit.php">
<input type="hidden" name="userrole" id="userrole" value="<?php echo  $userrole; ?>">
<table class="table table-bordered">
<tr>
<td><center><img src="../../Recruitment/image/userlog/quadsel.png" alt="quadsel" style="width:100px;height:50px;"></center></td>
<td colspan="5"><center><b>Quadsel Systems Private Limited</b></center></td>
</tr>
<tr>
<td>Round ID</td>
<td colspan="2"><select class="form-control" name="round_id">
		<option value="0">-- Select Round ID --</option>
		<?php
		$dep_sql=$con->query("SELECT * FROM interview_rounds");
		while($dep_sql_res=$dep_sql->fetch(PDO::FETCH_ASSOC))
		{
			?>
			<option value="<?php echo $dep_sql_res['id']; ?>"><?php echo $dep_sql_res['name']; ?></option>
			<?php
		}
		?>
		</select></td>

</tr>
<tr>
<td>Person Name:</td>
<td colspan="2"><select class="form-control" name="person_name">
		<option value="0">-- Select Person Name --</option>
		<?php
		$dep_sql=$con->query("SELECT * FROM staff_master");
		while($dep_sql_res=$dep_sql->fetch(PDO::FETCH_ASSOC))
		{
			?>
			<option value="<?php echo $dep_sql_res['id']; ?>"><?php echo $dep_sql_res['emp_name']; ?></option>
			<?php
		}
		?>
		</select></td>
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
