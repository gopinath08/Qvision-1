<?php
require '../../../connect.php';
?>
<?php
if(isset($_REQUEST['submit']))
{
	$id=$_REQUEST['id'];
	echo "222". $name=$_REQUEST['name'];
	$status=$_REQUEST['status'];
	$sql=$con->query("update interview_rounds set name='$name',status='$status' where id='$id'");
	echo "update interview_rounds set name='$name',status='$status' where id='$id'";
	if($sql)
{
	echo "<script>alert(' Updated Updated');</script>";
	header("location:/Qvision/index.php");
}
}?>
