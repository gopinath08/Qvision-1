<?php
require '../../../connect.php';
include("../../../user.php");
//$user_id =$_SESSION['userid'];

$emp_id	=	$_POST[id];
 $stmt = $con->query("select a.id,b.position,b.mobile_num,b.email_id from staff_master a join emp_personal_details b on (b.emp_id = a.candid_id) where a.id  = '$emp_id' ");
/* 
		
	while ($row = $stmt->fetch()) {
			$rows[] = $List;
		}
	
echo json_encode($rows); */
//echo $select_query;
?> 