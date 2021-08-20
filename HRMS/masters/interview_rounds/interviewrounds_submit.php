<?php
require '../../../connect.php';
?>
<?php
if(isset($_REQUEST['submit']))
{
	$name=$_REQUEST['name'];
	
	$status=$_REQUEST['status'];
	$sql=$con->query("insert into interview_rounds(name,status,created_by,created_on,modified_by,modified_on)values('$name','$status','2',now(),'2',now())");
	
	echo "insert into interview_rounds(name,status,created_by,created_on,modified_by,modified_on)values('$name','$status','2',now(),'2',now())";
if($sql)
{
	echo "<script>alert(' Inserted Updated');</script>";
	header("location:/Qvision/index.php");
}
}
?>