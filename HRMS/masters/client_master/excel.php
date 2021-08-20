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
<form enctype="multipart/form-data" method="post" action="Qvision/masters/client_master/excel.php"   role="form">

		<div class="control-group">
			
			
	<br>
 <div class="has-feedback">
	  <a href='/qvision/Qvision/masters/client_master/client.csv' target="_blank" style="color:blue;">Client Templete</a>
		</div>
    <div class="form-group">
        <label for="exampleInputFile">File Upload</label>
        <input type="file" name="file" id="file" size="150">
        <p class="help-block">Only Excel/CSV File Import.</p>
    </div>
    <button type="submit" class="btn btn-success" name="submit" value="submit">Upload</button>
	<div id="branch">

			</div>
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
	  echo $path="/qvision/Qvision/masters/client_master/".$file;
          $handle = fopen($file, "r");
          $c = 0;
          /* while(($filesop = fgetcsv($handle, 1000, ",")) !== false)
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
								$ins=$con->query("insert into client_master(client_name,org_name,designation,mobile_no1,mobile_no2,land_line_no,email_id1,email_id2,address1,address2,area,town_city,pincode,district,state,country,gst_no,website,status)values('$filesop[1]','$filesop[2]','$filesop[3]','$filesop[4]','$filesop[5]','$filesop[6]','$filesop[7]','$filesop[8]','$filesop[9]','$filesop[10]','$filesop[11]','$filesop[12]','$filesop[13]','$filesop[14]','$filesop[15]','$filesop[16]','$filesop[17]','$filesop[18]',1)");
								
							echo "insert into client_master(client_name,org_name,designation,mobile_no1,mobile_no2,land_line_no,email_id1,email_id2,address1,address2,area,town_city,pincode,district,state,country,gst_no,website,status)values('$filesop[1]','$filesop[2]','$filesop[3]','$filesop[4]','$filesop[5]','$filesop[6]','$filesop[7]','$filesop[8]','$filesop[9]','$filesop[10]','$filesop[11]','$filesop[12]','$filesop[13]','$filesop[14]','$filesop[15]','$filesop[16]','$filesop[17]','$filesop[18]',1)";	
							}
							
						}
						$c++;
					}
					
					if($ins)
					{
						?>
						<script>
						alert("insert succcessfully");
						//window.location="/qvision/index.php";
						</script>						
						<?php 
					}
					else
					{	?>
						<script>
						alert("insert succcessfully");
						//window.location="/qvision/index.php";
						</script>						
						<?php 
						
					} */
					
}				
?>

