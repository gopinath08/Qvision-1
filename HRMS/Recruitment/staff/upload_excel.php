<?php
require '../../../connect.php';
include("../../../user.php");
$userrole=$_SESSION['userrole'];
?>

<div class="container-fluid">
<div class="card mb-3">
<div class="card-header">
<i class="fa fa-table"></i> 
<a onclick=" back_ctc()" style="float: right;" data-toggle="modal" class="btn btn-primary"><i class="fa fa-plus"></i>Back</a>
</div>
<form enctype="multipart/form-data" method="post" action="Qvision/recruitment/staff/upload_excel.php" >
<input type="hidden" name="userrole" id="userrole" value="<?php echo  $userrole; ?>">
<table class="table table-bordered">

<tr>	
                      <a href='Qvision/recruitment/staff/staff_master.csv' target="_blank" style="color:blue;">Staff Templete</a>
                    </tr>
    <tr class="form-group">
        <label for="exampleInputFile">File Upload</label>
        <input type="file" name="file" id="file" size="150">
        <p class="help-block">Only Excel/CSV File Import.</p>
    </tr>
	<tr>
    <button type="submit" class="btn btn-success" name="submit" value="submit">Upload</button>
	</tr>

</table>

</form>
<script>
/* function back_ctc()
{
  $.ajax({
    type:"POST",
    url:"/Qvision/Qvision/masters/client_master/client_master.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
} */

</script>
<?php 
if(isset($_REQUEST['submit']))
{
	echo "hii";
         $file = $_FILES['file']['name'];
	  echo $path="/qvision/Qvision/recruitment/staff/".$file;
          $handle = fopen($file, "r");
          $c = 0;
          while(($filesop = fgetcsv($handle, 1000, ",")) !== false)
                    {
						echo $c;
						//echo"<pre>";print_r($filesop);
						if($c !=0)
						{
							$sq=$con->query("select * from staff_master where prefix_code='$filesop[1]' and emp_code='$filesop[2]' and status=1");
							$fet=$sq->fetch();
							
							if($fet)
							{
								$updat=$con->query("update staff_master set candid_id='$filesop[0]',emp_name='$filesop[3]',dep_id='$filesop[4]',div_id='$filesop[5]',design_id='$filesop[6]' where prefix_code='$filesop[1]' and emp_code='$filesop[2]' and status=1");
								echo "update staff_master set candid_id='$filesop[0]',emp_name='$filesop[3]',dep_id='$filesop[4]',div_id='$filesop[5]',design_id='$filesop[6]' where prefix_code='$filesop[1]' and emp_code='$filesop[2]' and status=1";
							}
							else
							{
								$ins=$con->query("insert into staff_master(prefix_code,emp_code,emp_name,client,status)values('$filesop[1]','$filesop[2]','$filesop[3]','$filesop[4]',1)");
								
							}
							
						}
						$c++;
					}
					
					if($ins)
					{
						?>
						<script>
						alert("insert succcessfully");
						window.location="/qvision/index.php";
						</script>						
						<?php 
					}
					else
					{	?>
						<script>
						alert("insert succcessfully");
						window.location="/qvision/index.php";
						</script>						
						<?php 
						
					}
}
?>
<!--script>
		$(document).ready(function() {
			$('#Department').on('change', function() {
				var department_id = this.value;
				//alert(department_id);
				$.ajax({
				url: "/Qvision/Qvision/masters/client_master/find_emp.php",
				type: "POST",
				data: {
				department_id: department_id
				},
				cache: false,
				success: function(result){
				$("#employee").html(result);
				}
				});
			});
	    });

</script>

<script>
$("#form").submit(function(e){
			var dupgst = Number($('#txt_duplicate_gstno').val());
			if(dupgst > 0){
				alert("Sorry, This GST Number Already Exist. Duplicate Entry does not Allowed");
				e.preventDefault();
				return false;
			}
});

$("#txt_gst_no").change(function(e){
	var value = $(this).val();
	//alert(value)
	$('#txt_duplicate_gstno').val('');
	var maxLength = $(this).attr("maxLength");
	if(value.length != maxLength) {
		alert("Sorry, Invalid GST Number. Please Enter Valid GST Number");
		e.preventDefault();
		return false;
	}else {
		$.ajax({ 
			type: 'POST', 
			url: 'Qvision/masters/client_master/check_gstno.php', 
			data: { gst: value }, 
			success: function (data) {  //alert(data);
				var Res = Number(data);
				if(Res > 0){
					alert("Sorry, This GST Number Already Exist. Duplicate Entry does not Allowed");
					$('#txt_duplicate_gstno').val(Res);
					$('#txt_gst_no').val('');
				}
			}
		});
	}
});
</script-->