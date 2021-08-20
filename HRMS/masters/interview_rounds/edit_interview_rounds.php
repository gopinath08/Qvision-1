<?php
require '../../../connect.php';
 $id=$_REQUEST['id'];
$stmt = $con->prepare("select * from interview_rounds where id='$id'");
$stmt->execute(); 
$row = $stmt->fetch();
$sta=$row['status'];
?>
<div class="container-fluid">
<div class="card mb-3">
<div class="card-header">
<i class="fa fa-table"></i> DEPARTMENT DETAILS EDIT
<!--a onclick="return back_ctc()" style="float: right;" data-toggle="modal" class="btn btn-primary">Back</a-->
</div>
<div class="card-body" id="printableArea">
<form role="form" name="" action="Qvision/masters/interview_rounds/update_interview_rounds.php" method="GET" enctype="multipart/type">

<table class="table table-bordered">
<tr>
<td><center><img src="../../Recruitment/image/userlog/quadsel.png" alt="quadsel" style="width:100px;height:50px;"></center></td>
<td colspan="5"><center><b>Quadsel Systems Private Limited</b></center></td>
</tr>
<tr>
<td>Name:</td>
<td colspan="5">
<input type="hidden" class="form-control" id="id" name="id" value="<?php echo  $id;?>">
<input type="text" class="form-control" id="name" name="name" value="<?php echo  $row['name'];?>">
</td>
</tr>
<!--tr>
<td>Person Name:</td>
<td colspan="5">
<input type="text" class="form-control" id="person_name" name="person_name" value="<?php echo  $row['person_name'];?>">
</td>
</tr-->

<tr>
<td>Status</td>
<td colspan="2">

<select class="form-control" name="status" id="status">
<?php

if($sta==0)
{
	?>
<option value="0">InActive</option>
<option value="1">Active</option>
<?php	
}
else{
	?>
	<option value="1">Active</option>
	<option value="0">InActive</option>
	<?php
}
?>

</select>
</td>
</tr>
</table>


<input type="submit" name="submit" class="btn btn-primary btn-md" style="float:right;">

</form>
</div>
</div>
</div>
