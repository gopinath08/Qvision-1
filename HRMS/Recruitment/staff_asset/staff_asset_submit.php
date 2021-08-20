<?php
require '../../../connect.php';
?>
<?php
if(isset($_REQUEST['submit']))
{
	$emp_name=$_REQUEST['emp_name'];
	$stationaries=$_REQUEST['stationaries'];
	//$stat_hod=$_REQUEST['stat_hod'];
	$system_or_laptop=$_REQUEST['system_or_laptop'];
	//$sys_hod=$_REQUEST['sys_hod'];
	$id_card=$_REQUEST['id_card'];
	$cug=$_REQUEST['cug'];
	$access_card=$_REQUEST['access_card'];
	$erp_access=$_REQUEST['erp_access'];
	$mail_id=$_REQUEST['mail_id'];
	$sql=$con->query("insert into staff_asset(emp_name,stationaries,system_or_laptop,id_card,cug,access_card,erp_access,mail_id,created_by,created_on,modified_by,modified_on)values('$emp_name','$stationaries','$system_or_laptop','$id_card','$cug','$access_card','$erp_access','$mail_id','2',now(),'2',now())");
	
	echo "insert into staff_asset(emp_name,stationaries,system_or_laptop,id_card,cug,access_card,erp_access,mail_id,created_by,created_on,modified_by,modified_on)values('$emp_name','$stationaries','$system_or_laptop','$id_card','$cug','$access_card','$erp_access','$mail_id','2',now(),'2',now())";
if($sql)
{
	echo "<script>alert(' Inserted Updated');</script>";
	header("location:/Qvision/index.php");
}
}
?>