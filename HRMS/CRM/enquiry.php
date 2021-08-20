<?php
require '../../connect.php';
require '../../user.php';
$candidateid=$_SESSION['candidateid'];
$userrole=$_SESSION['userrole'];
?>
<div class="content-wrapper" style="padding-left: 50px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Enquiry List</h1>
          </div>
          <div class="col-sm-6">
		  <a onclick="return add_enquree()" style="float: right;" data-toggle="modal" class="btn btn-primary"><i class="fa fa-plus"></i> ADD</a>
          </div>
        </div>
      </div><!-- /.container-fluid -->
	</section>
    <!-- Main content -->
    <section class="content">
    <div class="container-fluid">
    <div class="row">
    <div class="col-md-12">
    <!-- Profile Image -->
    <div class="card card-primary card-outline">
    <div class="card-body box-profile">
    <table id="example1" class="table table-bordered">
      <thead>
	  <th>#</th>
      <th>Call</th>
      <th>Date</th>
      <th>Company Name</th>
      <th>Location</th>
      <th>Contact Number</th>
      <th>Mail Id</th>
      <th>Feedback</th>
     <th>Foll UP Date </th>
	 <th> Company</th>
	<th>Department</th>
	<th>Employee</th>
	<th>Action</th>
      </thead>
      <tbody>
      <?php
$candidateid=$_SESSION['candidateid'];
$userrole=$_SESSION['userrole'];

	 if($userrole=='ROLE-007' ){
		 $datas=$con->query("SELECT enquiry.id as enquiry_id,enquiry.mail as enquiry_mailid,enquiry.*,calls_master.*,z_department_master.*,candidate_form_details.*  FROM `enquiry`
	   INNER JOIN calls_master ON enquiry.Call_type=calls_master.id
	  INNER join z_department_master ON enquiry.Department=z_department_master.id
	  INNER JOIN candidate_form_details ON enquiry.employee=candidate_form_details.id  where enquiry.employee='$candidateid'");
	 } else {
      $datas=$con->query("SELECT enquiry.id as enquiry_id,enquiry.mail as enquiry_mailid,enquiry.*,calls_master.*,z_department_master.*,candidate_form_details.*  FROM `enquiry`
	   INNER JOIN calls_master ON enquiry.Call_type=calls_master.id
	  INNER join z_department_master ON enquiry.Department=z_department_master.id
	  INNER JOIN candidate_form_details ON enquiry.employee=candidate_form_details.id");
	 }
     $cnt=1;
      while($enquiry = $datas->fetch(PDO::FETCH_ASSOC))
	  {
		  ?>
      <tr>
	  <td><?php echo $cnt;?>.</td>
      <td><?php echo $enquiry['name']; ?></td>
      <td><?php echo $enquiry['date']; ?></td>
      <td><?php echo $enquiry['Company_name']; ?></td>
      <td><?php echo $enquiry['Location']; ?></td>
      <td><?php echo $enquiry['Mobile']; ?></td>
      <td><?php echo $enquiry['enquiry_mailid']; ?></td>
      <td><?php echo $enquiry['Feedback']; ?></td>
	    <td><?php echo $enquiry['Follup']; ?></td>
		<td><?php echo $enquiry['companys']; ?></td>
		 
	   <td><?php echo $enquiry['dept_name']; ?></td>
	    <td><?php echo $enquiry['first_name']; ?></td>
	
    
	
	
		<td>				
		<button class="btn btn-info" data-id="<?php echo $enquiry['enquiry_id']; ?>" onclick="ctc_view(<?php echo $enquiry['enquiry_id']; ?>)"><i class="fa fa-eye"></i></button>
	</td>
	
      </tr>
      <?php
	  $cnt=$cnt+1;
      }
      ?>
      </tbody>
      </table>
    
<!-- /.card -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </div><!-- /.container-fluid -->
</section>
<!-- /.content -->
</div>

<script>
		function add_enquree()
    {
    $.ajax({
    type:"POST",
    url:"Qvision/CRM/enquiry_add.php",
    success:function(data){
    $(".content").html(data);
    }
    })
  }
  function ctc_view(v){
	  //alert(v);
	$.ajax({
	type:"POST",
	url:"Qvision/CRM/enquiry_view.php?id="+v,
	success:function(data)
	{
		$(".content").html(data);
	}
	})
}
function back_ctc()
	{
		enquiry()
	}
    </script>
</script>