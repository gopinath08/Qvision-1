<?php
require '../../connect.php';
$ids=$_REQUEST['ids'];
 $edit_id=$con->query("select * from master_leave where id='$ids'");
$res = $edit_id->fetch();
?>

<div class="content-wrapper" id="main_content">
<div class="container-fluid">
  <div class="card mb-3">
    <div class="card-header">
      <i class="fa fa-table"></i> Leave Master
	  <input type="button" style="float:right;" class="btn btn-warning" name="back" value="BACK" onclick="Leave_master()">
	  </div>
    <div class="card-body">
	 <form method="POST">
		  <div class="form-group row">
			<label for="Leave" class="col-sm-2 col-form-label">Leave Name</label>
			<div class="col-sm-10">
			  <input type="hidden"  class="form-control" id="ids" name="ids" value="<?php echo $ids; ?>" placeholder="Leave Name">
			  <input type="text"  class="form-control" id="Leave" name="Leave" value="<?php echo $res['leave_name']; ?>" placeholder="Leave Name">
			</div>
		  </div>
		  <div class="form-group row">
			<label for="no_of_days" class="col-sm-2 col-form-label">No of days</label>
			<div class="col-sm-10">
			  <input type="number" class="form-control" id="no_of_days" name="no_of_days" value="<?php echo $res['no_of_days']; ?>" placeholder="Date">
			</div>
		  </div>
		   <div class="form-group row">
			<label for="text" class="col-sm-2 col-form-label">Status</label>
			<div class="col-sm-10">
			<select id="status" name="status" class="form-control" >
 
<?php 
if($res[3] ==1)
{
?>
    <option value="1">Active</option>
	 <option value="2"> IN Active</option>
<?php }else {?>
  <option value="2"> IN Active</option>
  <option value="1">Active</option>
<?php } ?>
</select>
			</div>
		    </div>
		  <div class="form-group row">
			<div class="col-sm-10"></div>
			<div class="col-sm-2">
			  <input type="button" class="btn btn-primary btn-md" onclick="Leave_update()" value="Update">
			</div>
		  </div>
	</form>
    </div>
  </div>
</div>
</div>
<script>
function Leave_master()
{
  $.ajax({
    type:"POST",
    url:"/Qvision/Qvision/Leave_master/main.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function Leave_update()
{
	var field=1;
	var data = $('form').serialize();
	$.ajax({
		type:'GET',
		data:"field="+field, data,
		url:'/Qvision/Qvision/Leave_master/Leave_update.php',
		success:function(data)
		{
			if(data==0)
			{
				alert("Updated Leave Master");
				Leave_master();
			}
			else
			{
				alert("Not Updated Leave Master");
				Leave_master();
			}	
		}       
	});
}
</script>
