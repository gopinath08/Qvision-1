<?php
require '../../connect.php';
$cid=$_REQUEST['id'];
$sql=$con->query("select * from candidate_form_details c join company_master cm on c.company_name=cm.id join designation_master d on c.position=d.id join z_department_master dm on c.department=dm.id where c.id='$cid' order by c.id desc limit 1");
$fet=$sql->fetch();
?>
<div class="content-wrapper" style="padding-left: 50px;">
   <form method="POST" enctype="multipart/form-data">
    <!-- Post -->
    <table class="table table-bordered">
        <tr>
        <td><center><img src="../../Recruitment/image/userlog/quadsel.png" alt="quadsel" style="width:100px;height:50px;"></center></td>
        <td colspan="5"><center><b>Quadsel Systems Private Limited</b></center></td>
        </tr>
        <tr>
        <td colspan="6"><center><b>Application for Candidate</b></center></td>
        </tr>
		 <tr>
		<td>Company: *</td>
		<td colspan="5">
		<input type="text" class="form-control" id="companys" name="companys" value="<?php echo $fet['companyname'];?>" readonly>
		 </td>
        </tr>
        <tr>
        <td>Post Applied for: *</td>
        <td colspan="2">
		<input type="text" class="form-control" id="companys" name="companys" value="<?php echo $fet['designation_name'];?>" readonly>
		</td>
		<td>Department: *</td>
		<td colspan="2">
		<input type="text" class="form-control" id="companys" name="companys" value="<?php echo $fet['dept_name'];?>" readonly>
		</td>
        </tr>
        <tr>
        <td colspan="6"><center><b>Personal Details</b></center></td>
        </tr>
        <tr>
        <td>First Name: *</td>
        <td colspan="2"><input type="text" class="form-control" id="first_name" name="first_name" value="<?php echo $fet['first_name'];?>" readonly ></td>
		<td>Last Name: *</td>
        <td colspan="2"><input type="text" class="form-control" id="last_name" name="last_name" value="<?php echo $fet['last_name'];?>" readonly></td>
        </tr>
        <tr>
		<td>Gender:</td>
		<?php 
		if($fet['gender']="female")
		{
			?>
			<td colspan="5"> 
		
		<label>
		<input type="radio" name="gender" value="female" checked="true">&nbsp;Female</label>
		</td>
		<?php
		}
		else
		{
			?>
			<td colspan="5"> 
		<label>
		<input type="radio" name="gender" value="male" checked>&nbsp;Male</label>
		
		</td>
		<?php
		}
		?>
		
		</tr>
        <tr>
        <td>Father's Name:</td>
        <td colspan="5"><input type="text" class="form-control" id="father_name" name="father_name" value="<?php echo $fet['father_name'];?>"readonly></td>
        </tr>
        <tr>
        <td>Date of Birth:</td>
        <td colspan="5"><input type="date" class="form-control" id="dob" name="dob" value="<?php echo $fet['dob'];?>"readonly></td>
        </tr>
        <tr>
        <td>Address Communication: *</td>
        <td colspan="5"><input type="text" class="form-control" id="address" name="address" value="<?php echo $fet['address'];?>"readonly></td>
        </tr>
        <tr>
        <td>Permanent Address:</td>
        <td colspan="5"><input type="text" class="form-control" id="paddress" name="paddress" value="<?php echo $fet['paddress'];?>" readonly></td>
        </tr>
        <tr>
        <td>Mobile Number: *</td>
        <td colspan="5"><input type="text" class="form-control" id="phone" name="phone" value="<?php echo $fet['phone'];?>" readonly></td>
        </tr>
       <tr>
        <td>Alternate Mobile Number: </td>
        <td colspan="5"><input type="text" class="form-control" id="a_phone" name="a_phone" value="<?php echo $fet['alternative_phone'];?>"readonly></td>
        </tr>
        <tr>
        <td>Email ID : *</td>
        <td colspan="5"><input type="text" class="form-control" id="mail" name="mail" value="<?php echo $fet['mail'];?>"readonly></td>
        </tr>
        <tr>
        <td>Aadhar Number: *</td>
        <td colspan="4"><input type="text" class="form-control" id="adharnumber" name="adharnumber" ovalue="<?php echo $fet['adharnumber'];?>"readonly></td>
        </tr>
        <tr>
        <td>Pan Number:</td>
        <td colspan="4"><input type="text" class="form-control" id="pannumber" name="pannumber" value="<?php echo $fet['pannumber'];?>"readonly></td>
        </tr>
        <tr>
        <td>Voter ID:</td>
        <td colspan="4"><input type="text" class="form-control" id="voternumber" name="voternumber" value="<?php echo $fet['voternumber'];?>"readonly></td>
        </tr>
		<tr>
        <td>Educational Details: *</td>
        <td colspan="4"><input type="text" class="form-control" id="educationalDetails" name="educationalDetails" value="<?php echo $fet['educationalDetails'];?>"readonly></td>
        </tr>
			<?php 
		if($fet['EmployeeStatus']="new")
		{
			?>
			<tr>
        <td>Employement Status:</td>
        <td colspan="4">	
			<input type="text" class="form-control" id="empstats" name="empstats" value="<?php echo "Fresher";?>"readonly>
				
		</td>
        </tr><tr id='employee_new'>
		<td>Year of Passout </td>
        <td colspan="4"><input type="text" class="form-control" id="year_of_pass" name="year_of_pass" value="<?php echo $fet['year_of_pass'];?>"readonly></td>
        </tr>
			<?php 
		}
		else
		{
			?>
			<tr>
        <td>Employement Status:</td>
        <td colspan="4">	
			<input type="text" class="form-control" id="empstats" name="empstats" value="<?php echo "Experience";?>"readonly>
				
		</td>
        </tr>
		<tr id='employee_status'>
        <td>Company Name:</td>
        <td colspan="2"><input type="text" class="form-control" id="companyname" name="companyname" value="<?php echo $fet['companyname'];?>"readonly></td>
		<td>No of Year Experience:</td>
        <td colspan="2"><input type="number" class="form-control" id="no_of_year" name="no_of_year" value="<?php echo $fet['no_of_year'];?>"readonly></td>
        </tr>
			<?php 
		}
			?>
        		
<tr>
<td>Round </td>
 <td colspan="2">
		<select class="form-control" id="round_type" name="round_type" onchange="get_qn(this.value)" >
		<!--?php 
		
		$qns=$con->query("SELECT * FROM question_name_master ");
		$qndis = $qns->fetch(PDO::FETCH_ASSOC)
		?-->
		<option value="">Select round</option>
		<?php $stmt22 = $con->query("SELECT * FROM interview_rounds where status=1");
		while ($row22 = $stmt22->fetch()) 
		{
		?>
		<option value="<?php echo $row22['id'];?>"> <?php echo $row22['name'];?></option>
		<?php 
		}
		?>
		</select>
		</td>
</tr>
				
        <tr>  
        <td colspan="6"><input type="button" class="btn btn-success" name="save" onclick="candidate_formS()" style="float:right;" value="save"></td>
        </tr>
        </table>
        <!-- /.post -->
    </form>
    </div>
</div>

<script>
function candidate_formS()
{
	var field=1;
	var data = $('form').serialize();
	$.ajax({
		type:'GET',
		data:"field="+field, data,
		url:'/Qvision/Qvision/candidate/candidate_submit.php',
		success:function(data)
		{
			if(data==0)
			{
				alert("Form Data has been Submitted ... Hr will contact you please wait");
				window.location.href="login/logout.php";
			}
			else
			{
				alert("Form Data has not been Submitted");
				candidate_form();
			}	
		}       
	});
}

function get_qn(v)
{
	var id=v,
	
	$.ajax({
		type:"GET",
		url:"/Qvision/Qvision/candidate/get_qn.php?id=" +v,
		success:function(data)
		{
			
		}
		
	})
}
</script>