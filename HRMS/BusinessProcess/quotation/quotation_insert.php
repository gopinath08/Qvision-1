<?php
require '../../../connect.php';
require '../../../user.php';
$user_id =$_SESSION['userid'];

//$id=$_REQUEST['get_id'];

$specification = $_REQUEST['item'];
 $row_count   = count($specification);
$qty         = $_REQUEST['qty'];
$unit_rate   = $_REQUEST['cost'];
$total       = $_REQUEST['price'];
$gst         = $_REQUEST['gst'];


 for($i=0;$i<$row_count;$i++)
{
	
 $specifications = $specification[$i];
 $qtys           = $qty[$i];
 $unit_rates     = $unit_rate[$i];
 $totals         = $total[$i];


  $sql1=$con->query("insert into quotation_entry(specification,qty,unit_rate,amount,gst_percentage,status,created_by,created_on) 
   values('$specifications','$qtys','$unit_rates','$totals','$gst','1','$user_id',NOW())");  

}





?>






