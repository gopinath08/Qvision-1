<?php
require '../../../connect.php';
include("../../../user.php");
$userrole=$_SESSION['userrole'];
?>
<!--div class="container-fluid"-->
<div class="card mb-3">

<form method="POST" action="Qvision/Recruitment/hod/hod_submit.php">
<input type="hidden" name="userrole" id="userrole" value="<?php echo  $userrole; ?>">
<table class="table table-bordered" >
<tr>
<div class="row">
						 <!--div class="col-lg-12"-->
		  <a onclick="back()" style="float: right;" data-toggle="modal" class="btn btn-warning">
		  <i class="fa fa-plus"></i>BACK</a>


          </div>
                        <!-- /.col-lg-12 -->
                    </div>
</tr>
<tr>
<td><center><img src="../../Recruitment/image/userlog/quadsel.png" alt="quadsel" style="width:100px;height:50px;"></center></td>
<td colspan="5"><center><b>Quadsel Systems Private Limited</b></center></td>
</tr>
<tr> 
     <td>Department Name:</td>
	 <td colspan="2">
		<select class="form-control" name="department" id="department">
		<!--option value="all">-- Select Department --</option-->
		<option value="all">All</option>
		<?php
		$dep_sql=$con->query("SELECT * FROM staff_master");
		while($dep_sql_res=$dep_sql->fetch(PDO::FETCH_ASSOC))
		{
			?>
			<option value="<?php echo $dep_sql_res['id']; ?>"><?php echo $dep_sql_res['dep_id']; ?></option>
			<?php
		}
		?>
		</select>
	 </td>
	 <td>Employee Name:</td>

<td colspan="2"><select class="form-control" name="emp_name">
		<option value="0">-- Select Employee Name --</option>
		<?php
		$dep_sql=$con->query("SELECT * FROM staff_master");
		while($dep_sql_res=$dep_sql->fetch(PDO::FETCH_ASSOC))
		{
			?>
			<option value="<?php echo $dep_sql_res['id']; ?>"><?php echo $dep_sql_res['candid_id']; ?></option>
			<?php
		}
		?>
		</select></td>
	 </tr>

<tr id="new_tab">
<td>Asset:</td>
<td colspan="2"><select class="form-control" id="asset" name="asset">
<option value="<?php echo $dep_sql_res['id']; ?>"><?php echo $dep_sql_res['asset']; ?></option>
		<?php
		$dep_sql=$con->query("SELECT * FROM staff_asset_master");
		while($dep_sql_res=$dep_sql->fetch(PDO::FETCH_ASSOC))
		{
			?>
			<option value="<?php echo $dep_sql_res['id']; ?>"><?php echo $dep_sql_res['asset']; ?></option>
			<?php
		}
		?>
		</select></td>
		<td>
		
    <input type="button" class="btn btn-success" id="new_row" name="new_row" onclick="check()" value="Add">
			  </td>
	
      </tr>
<tr>
<td>Mail ID:</td>
<td colspan="2">
<input type="text" class="form-control" id="mail_id" name="mail_id" ></td>
</tr>
<tr>
<td>Others</td>
<td colspan="2">
<input type="text" class="form-control" id="others" name="others" ></td>

</tr>
</table>
<input type="submit" name="submit" class="btn btn-primary btn-md" style="float:right;">
</form>
<script>
		function back()
    {
    $.ajax({
    type:"POST",
    url:"/Qvision/Qvision/Recruitment/hod/hod.php",
    success:function(data){
    $(".content").html(data);
    }
    })
  }
  </script>
  <!--script>
    function check() // education
    {
    var len=$('#new_tab tr').length;	
    len=len+1; 
    $('#new_tab').append('<tr class="row_'+len+'"><td><input type="text" class="form-control" class="form-control" id="asset'+len+'" name="asset[]"></td></tr>'); 
    }
    var id=$(this).val();
    var le=$('#new_tab tr').length;

    if(le==1)
    {
    alert("You Can't Delete All the Rows");
    }
    else
    {
    $('.row_'+id).remove();
    }

	</script>
	<script>
	$(document).ready(function() {
$('#department').on('change', function() {

var department_id = this.value;
//alert(department_id);
$.ajax({
url:"Recruitment/hod/find_employee.php",
type: "POST",
data: {
dep_id: dep_id
},
cache: false,
success: function(result){
$("#employee").html(result);

}
});
});
});

</script-->
