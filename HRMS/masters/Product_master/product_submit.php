<?php
require '../../../connect.php';
include("../../../user.php");


$product_name=$_REQUEST['product_name'];







$sql11=$con->query("insert into products_master(`Product_name`) values('$product_name')"); 

echo "insert into products_master(`Product_name`) values('$product_name')";
?>