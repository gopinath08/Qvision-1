<?php
require '../../../connect.php';
Session_start();
?>
<?php
$user_id =$_SESSION['userid'];
if(isset($_REQUEST['submit']))
{
	$company_id    = $_REQUEST['company_name'];
	$department_id = $_REQUEST['Department'];
	$employee_id   = $_REQUEST['employee'];
	$org_name      = $_REQUEST['txt_org_name'];
	$org_type      = $_REQUEST['client_type'];
	$client_name   = $_REQUEST['txt_client_name'];
	$client_desig  = $_REQUEST['txt_client_desig'];
	$mobile1       = $_REQUEST['txt_mobile1'];
	$mobile2       = $_REQUEST['txt_mobile2'];
	$land_lineno   = $_REQUEST['txt_landno'];
	$mailid1       = $_REQUEST['txt_mail_id1'];
	$mailid2       = $_REQUEST['txt_mail_id2'];
	$address1      = $_REQUEST['txt_address1'];
	$address2      = $_REQUEST['txt_address2'];
	$area          = $_REQUEST['txt_area'];
	$town_city     = $_REQUEST['txt_town'];
	$pincode       = $_REQUEST['txt_pincode'];
	$district      = $_REQUEST['txt_district'];
	$state         = $_REQUEST['txt_state'];
	$country       = $_REQUEST['txt_country'];
	$gst_no        = $_REQUEST['txt_gst_no'];
	$website       = $_REQUEST['txt_website'];
	$status        = $_REQUEST['status'];
	
	$insert_sql=$con->query("insert into client_master(company_id,department_id,employee_id,client_name,org_name,org_type,designation,mobile_no1,mobile_no2,land_line_no,email_id1,email_id2,address1,
	address2,area,town_city,pincode,district,state,country,gst_no,website,status,flow,created_by,created_on)
	values('$company_id','$department_id','$employee_id','$client_name','$org_name','$org_type','$client_desig','$mobile1','$mobile2','$land_lineno','$mailid1','$mailid2','$address1','$address2','$area','$town_city','$pincode','$district','$state','$country','$gst_no','$website','$status','1','$user_id',NOW())");
	echo "insert into client_master(company_id,department_id,employee_id,client_name,org_name,org_type,designation,mobile_no1,mobile_no2,land_line_no,email_id1,email_id2,address1,
	address2,area,town_city,pincode,district,state,country,gst_no,website,status,flow,created_by,created_on)
	values('$company_id','$department_id','$employee_id','$client_name','$org_name','$org_type','$client_desig','$mobile1','$mobile2','$land_lineno','$mailid1','$mailid2','$address1','$address2','$area','$town_city','$pincode','$district','$state','$country','$gst_no','$website','$status','1','$user_id',NOW())";
if($insert_sql)
{
	echo "<script>alert('Client Details Saved Successfuly');</script>";
	header("location:/HRMS/index.php");
}
}
?>