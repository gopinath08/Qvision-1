<?php
require '../../connect.php';
require '../../user.php';
$candidateid=$_SESSION['candidateid'];
$sql=$con->query("select * from candidate_form_details  
INNER JOIN designation_master ON candidate_form_details.position = designation_master.id where candidate_form_details.id='$candidateid'");

/*echo "select * from candidate_form_details  
INNER JOIN designation_master ON candidate_form_details.position = designation_master.id where candidate_form_details.id='$candidateid'";*/

//echo "select * from candidate_form_details  where id='$candidateid'";
$data=$sql->fetch();
?>


<div class="content-wrapper" style="padding-left: 50px;">
   <section class="content">
<div class="container-fluid">
<div class="row">
<div class="col-md-12">
<div class="card">
<div class="card-header p-2">
<ul class="nav nav-pills">
<li class="nav-item"><a class="nav-link active" href="#for_employment" data-toggle="tab">Application for Employment</a></li>
<li class="nav-item"><a class="nav-link" href="#education_qualification" data-toggle="tab">Educational Qualifications</a></li>
<li class="nav-item"><a class="nav-link" href="#certification_details" data-toggle="tab">Certification Details</a></li>
<li class="nav-item"><a class="nav-link" href="#employment_details" data-toggle="tab">Employment Details</a></li>
</ul>
</div><!-- /.card-header -->
<div class="card-body">
<div class="tab-content">
    <div class="active tab-pane" id="for_employment">
	
	
	   <form id="fupForm" enctype="multipart/form-data">

    <!-- Post -->
    <table class="table table-bordered">
        <tr>
        <td><center><img src="../../Recruitment/image/userlog/quadsel.png" alt="quadsel" style="width:100px;height:50px;"></center></td>
        <td colspan="5"><center><b>Quadsel Systems Private Limited</b></center></td>
        </tr>
        <tr>
        <td colspan="6"><center><b>Application for Employment</b></center></td>
        </tr>
        <tr>
        <td>Post Applied for:</td>
        <td colspan="5"><input type="text" class="form-control" id="position" name="position" value="<?php echo $data['designation_name'];?>"  ></td>
        </tr>
        <tr>
        <td colspan="6"><center><b>Personal Details</b></center></td>
        </tr>
        <tr>
        <td>Name of the candidate:</td>
        <td colspan="5"><input type="text" class="form-control" id="name" name="name" value="<?php echo $data['first_name']."". $data['last_name'];?>" ></td>
        </tr>
        <tr>
        <td>Father's Name:</td>
        <td colspan="5"><input type="text" class="form-control" id="fathers_name" name="fathers_name" value="<?php echo $data['father_name'];?>"  ></td>
        </tr>
        <tr>
        <td>Date of Birth:</td>
        <td colspan="5"><input type="date" class="form-control" id="DOB" name="DOB" value="<?php echo $data['dob'];?>" ></td>
        </tr>
        <tr>
        <td>Address Communication:</td>
        <td colspan="5"><input type="text" class="form-control" id="communication_address" name="communication_address" value="<?php echo $data['address'];?>"  ></td>
        </tr>
        <tr>
        <td>Permanent Address:</td>
        <td colspan="5"><input type="text" class="form-control" id="permanent_address" name="permanent_address" value="<?php echo $data['paddress'];?>" ></td>
        </tr>
        <tr>
        <td>Telephone no. (Mobile/others):</td>
        <td colspan="5"><input type="text" class="form-control" id="mobile_num" name="mobile_num" value="<?php echo $data['phone'];?>" ></td>
        </tr>
        <tr>
        <td>Category (Email ID if any):</td>
        <td colspan="5"><input type="text" class="form-control" id="email_id" name="email_id" value="<?php echo $data['mail'];?>" ></td>
        </tr>
       
	    <tr>
        <td>Aadhar Number:</td>
		
		<td colspan="4"><input type="text" class="form-control" id="adharnumber" name="adharnumber" value="<?php echo $data['adharnumber'];?>" ></td>
                <td colspan="4">
				<input type="file" class="form-control" id="file" name="files[]" multiple />
				</td>
        </tr>
		
		<tr>
        <td>Pan Number:</td>
        <td colspan="4"><input type="text" class="form-control" id="pannumber" name="pannumber" value="<?php echo $data['pannumber'];?>"></td>
        <td colspan="4">
				<input type="file" class="form-control" id="file1" name="files1[]" multiple />
				</td>
		
		<!--<td colspan="1"><input type="file" class="form-control" id="panupload" name="panupload" >
		</td>-->
       
	   </tr>
	   
	   <tr>
        <td>Voter ID:</td>
        <td colspan="4"><input type="text" class="form-control" id="voternumber" name="voternumber" value="<?php echo $data['voternumber'];?>" ></td>
                <td colspan="4">
								<input type="file" class="form-control" id="file2" name="files2[]" multiple />

				</td>

		</tr>
   
	   <tr>
        <td>Resume:</td>
        <td colspan="5">
		<input type="file" class="form-control" id="file3" name="files3[]" multiple />
		</td>
        </tr>
		
		
        <tr>  
        <td colspan="6">
                   <input type="hidden" name="cid" id="cid" value="<?php echo $candidateid;?>">
		
		        <input type="submit" name="submit" class="btn btn-success submitBtn" value="SUBMIT"/>
		</td>
		</tr>
        </table>
        <!-- /.post -->
    </form>
    </div>
	
	<script>
$(document).ready(function(){
    // Submit form data via Ajax
    $("#fupForm").on('submit', function(e){
        e.preventDefault();
        $.ajax({
            type: 'POST',
            url: '/Qvision/Qvision/Recruitment/submit.php',
            data: new FormData(this),
            dataType: 'json',
            contentType: false,
            cache: false,
            processData:false,
           
            success: function(response){
      if(response==0)
      { 
        alert('Application form Entry Successfully Completed.Then fill out the educational qualifications');
        application();
      }
      else
      {
        alert("Entry Unsuccessfull");
		application();
      }
      
    }   
        });
    });
	
    // File type validation
    var match = ['application/pdf', 'application/msword', 'application/vnd.ms-office', 'image/jpeg', 'image/png', 'image/jpg'];
    $("#file").change(function() {
        for(i=0;i<this.files.length;i++){
            var file = this.files[i];
            var fileType = file.type;
			
            if(!((fileType == match[0]) || (fileType == match[1]) || (fileType == match[2]) || (fileType == match[3]) || (fileType == match[4]) || (fileType == match[5]))){
                alert('Sorry, only PDF, DOC, JPG, JPEG, & PNG files are allowed to upload.');
                $("#file").val('');
                return false;
            }
        }
    });
});
</script>

    <script>
    function employee_personal()
    {
    var id=0;
    var data = $('form').serialize();
	alert(data);
    $.ajax({
    type:'GET',
    data:"id="+id, data,
    url:'/Qvision/Qvision/Recruitment/employee_personal_insert.php',
    success:function(data)
    {
      if(data!='')
      { 
        alert('Entry Successfully');
       // add_employee()
      }
      else
      {
        alert("No Data choose");
      }
      
    }       
    });
    }
    </script>

    <div class="tab-pane" id="education_qualification">
	<form id="fupForm1" class="form-horizontal" method="POST" enctype="multipart/form-data">
    <table class="table table-bordered" id="new_tab">
    <tr>
    <td colspan="6"><center><b>Educational Qualifications (In descending order of qualifications attained)</b></center></td>
    </tr>
    <tr>
      <th>#</th>
      <th>Education</th>
      <th>Name of Institution/University</th>
      <th>Degree</th>
      <th>Field of Specialization</th>
      <th>Year of Passing</th>
      <th>Percentage</th>
      <th>Attachement</th>
    </tr>
    
    
    <tr>
      <td><input type="checkbox" class="chk" name="chk[]" id="chk_1" value="1" style="width:15px;height:20px;"/></td>
      <td><input type="text" class="form-control" id="Examination_passed_1" name="examination_passed[]"></td>
      <td><input type="text" class="form-control" id="instute_1" name="instute[]"></td>
      <td><input type="text" class="form-control" id="degree_1" name="degree[]"></td>
      <td><input type="text" class="form-control" id="field_1" name="field[]"></td> 	
      <td><input type="text" class="form-control" id="passing_1" name="passing[]"></td>
      <td><input type="text" class="form-control" id="percentage_1" name="percentage[]"></td>
	  
	 
		
      <td>
	  <input type="file" class="form-control" id="attachment_1" name="attachment[]" multiple />
	  </td>
      <td><input type="button" class="btn btn-success" id="new_row" name="new_row" onclick="check()" value="Add">
      <input type="button" class="btn btn-danger" id="certificate_row_remove"  value="Remove">
    </td>
    </tr>
   
    
    </table>
    <table>
    <tr> <td colspan="6">
		<input type="hidden" name="cid" id="cid" value="<?php echo $candidateid;?>">
				        <input type="submit" name="submit" class="btn btn-success submitBtn" value="SUBMIT"/>

    </table>
    </form>
    <!-- /.tab-pane -->
    </div>
	
	<script>
$(document).ready(function(){
    // Submit form data via Ajax
    $("#fupForm1").on('submit', function(e){
        e.preventDefault();
        $.ajax({
            type: 'POST',
            url: '/Qvision/Qvision/Recruitment/employee_educational_insert.php',
            data: new FormData(this),
            dataType: 'json',
            contentType: false,
            cache: false,
            processData:false,
           
            success: function(data){
      if(data==0)
      { 
        alert('Educational qualifications form entry Successfully Completed.Then fill out the certifications details');
        application();
      }
      else
      {
        alert("Entry Unsuccessfull");
		application();
      }
      
    }   
        });
    });
	
    // File type validation
    var match = ['application/pdf', 'application/msword', 'application/vnd.ms-office', 'image/jpeg', 'image/png', 'image/jpg'];
    $("#file").change(function() {
        for(i=0;i<this.files.length;i++){
            var file = this.files[i];
            var fileType = file.type;
			
            if(!((fileType == match[0]) || (fileType == match[1]) || (fileType == match[2]) || (fileType == match[3]) || (fileType == match[4]) || (fileType == match[5]))){
                alert('Sorry, only PDF, DOC, JPG, JPEG, & PNG files are allowed to upload.');
                $("#file").val('');
                return false;
            }
        }
    });
});
</script>


    <script>
    function check() // education
    {
    var len=$('#new_tab tr').length;	
    len=len+1; 
    $('#new_tab').append('<tr class="row_'+len+'"><td><input type="checkbox" class="chk" name="chk[]" id="chk_'+len+'" value="'+len+'"</td><td><input type="text" class="form-control" id="Examination Passed_'+len+'" name="examination_passed[]"></td><td><input type="text" class="form-control" id="instute_'+len+'" name="instute[]"></td><td><input type="text" class="form-control" id="degree_'+len+'" name="degree[]"></td><td><input type="text" class="form-control" id="field_'+len+'" name="field[]"></td><td><input type="text" class="form-control" id="passing_'+len+'" name="passing[]"></td><td><input type="text" class="form-control" id="percentage_'+len+'" name="percentage[]"></td><td><input type="file" class="form-control" id="attachment_'+len+'" name="attachment[]"></td></tr>'); 
    }


    $('#certificate_row_remove').click(function(){
    $('input:checkbox:checked.chk').map(function(){
    var id=$(this).val();
    var le=$('#new_tab tr').length;

    if(le==1)
    {
    alert("You Can't Delete All the Rows");
    }
    else
    {
    $('.row_'+id).remove();
    }

    });
    });
	</script>
	
	
	
   <div class="tab-pane" id="certification_details" >
       <form   method="POST" id="emp_education"  enctype="multipart/form-data">

    <table class="table table-bordered" id="new_tab1">
	
    <tr>
    <td colspan="6"><center><b>Certification Details</b></center></td>
    </tr>
    <tr>
      <th>#</th>
      <th>Certification Name:</th>
      <th>Certification Number:</th>
      <th>Validity From:</th>
      <th>Validity To:</th>
	  <th>Attachement</th>
    </tr>
    
    <tr>
      <td><input type="checkbox" class="chk" name="chk[]" id="chk_1" value="1" style="width:15px;height:20px;"/></td>
     <td><input type="text" class="form-control" id="certifcatename_1" name="certifcatename[]"></td>
      <td><input type="text" class="form-control" id="certifcatnumber_1" name="certifcatenumber[]"></td>
      <td><input type="date" class="form-control" id="validityfrom_1" name="validityfrom[]"></td>
      <td><input type="date" class="form-control" id="validityto_1" name="validityto[]"></td>
      <td><input type="file" class="form-control" id="certifcatefile_1" name="certifcatefile[]"></td>
      <td><input type="button" class="btn btn-success" id="new_row1" name="new_row1" onclick="check1()" value="Add">
      <input type="button" class="btn btn-danger" id="certificate_row1_remove" onclick="certificate_row1_remove()" value="Remove">
    </td>
    </tr>   
     </table>
    <table>
    <tr><td><input type="hidden" name="cid" id="cid" value="<?php echo $candidateid;?>">
	 <input type="submit" name="submit" class="btn btn-success submitBtn" value="SUBMIT"/>
	</td></tr>
    </table>
    </form>
    <!-- /.tab-pane -->
    </div>
    <!-- /.tab-pane -->
	
	<script>
$(document).ready(function(){
    // Submit form data via Ajax
    $("#emp_education").on('submit', function(e){
        e.preventDefault();
        $.ajax({
            type: 'POST',
            url: '/Qvision/Qvision/Recruitment/employee_certificate_insert.php',
            data: new FormData(this),
            dataType: 'json',
            contentType: false,
            cache: false,
            processData:false,
           
            success: function(response){
      if(response==0)
      { 
        alert('Certification Details form entry Successfully Completed.Then fill out the Employement details');
        application();
      }
      else
      {
        alert("Entry Unsuccessfull");
		application();
      }
      
    }   
        });
    });
	
    // File type validation
    var match = ['application/pdf', 'application/msword', 'application/vnd.ms-office', 'image/jpeg', 'image/png', 'image/jpg'];
    $("#file").change(function() {
        for(i=0;i<this.files.length;i++){
            var file = this.files[i];
            var fileType = file.type;
			
            if(!((fileType == match[0]) || (fileType == match[1]) || (fileType == match[2]) || (fileType == match[3]) || (fileType == match[4]) || (fileType == match[5]))){
                alert('Sorry, only PDF, DOC, JPG, JPEG, & PNG files are allowed to upload.');
                $("#file").val('');
                return false;
            }
        }
    });
});
</script>

	<script>
	function check1() // Certificate
	{
		//alert("hii");
	var len1=$('#new_tab1 tr').length;	
	len1=len1+1; 
	$('#new_tab1').append('<tr class="row_'+len1+'"><td><input type="checkbox" class="chk" name="chk[]" id="chk_'+len1+'" value="'+len1+'"</td><td colspan="1"><input type="text" class="form-control" id="certifcatename_'+len1+'" name="certifcatename[]"></td><td colspan="1"><input type="text" class="form-control" id="certifcatenumber'+len1+'" name="certifcatenumber[]"></td><td colspan="1"><input type="date" class="form-control" id="validityfrom_'+len1+'" name="validityfrom[]"></td><td colspan="1"><input type="date" class="form-control" id="validityto_'+len1+'" name="validityto[]"></td><td colspan="1"><input type="file" class="form-control" id="certifcatefile_'+len1+'" name="certifcatefile[]"></td></tr>'); 
	}

    $('#certificate_row1_remove').click(function(){
    $('input:checkbox:checked.chk').map(function(){
    var idd=$(this).val();
    var lee=$('#new_tab1 tr').length;

    if(lee==1)
    {
    alert("You Can't Delete All the Rows");
    }
    else
    {
    $('.row_'+idd).remove();
    }

    });
    });
</script>


    <div class="tab-pane" id="employment_details" >
	       <form method="POST" id="emp_educations"  enctype="multipart/form-data">

    <table class="table table-bordered" id="new_tab2">
    <tr>
    <td colspan="10"><center><b>Employment Details</b></center></td>
    </tr>
    <tr>
	<th>#</th>
    <th>Name of the Organization</th>
    <th colspan="2">Designation (With Specific field Mentioned where Worked/working)</th>
    <th>From</th>
    <th>To</th>
    <th>Total Years of Experience</th>
    </tr>
    <tr>
	<td><input type="checkbox" class="chk" name="chk[]" id="chk_1" value="1" style="width:15px;height:20px;"/></td>
    <td><input type="text" class="form-control" id="organization_1" name="organization[]"></td>
    <td colspan="2"><input type="text" class="form-control" id="Designation_1" name="designation[]"></td>
    <td><input type="date" class="form-control" id="From_1" name="from[]"></td>
    <td><input type="date" class="form-control" id="to_1" name="to[]"></td>
    <td><input type="text" class="form-control" id="yearofexperience_1" name="yearofexperience[]" ></td>
   <td><input type="button" class="btn btn-success" id="new_row" name="new_row" onclick="check2()" value="Add">
	   <input type="button" class="btn btn-danger" id="certificate_row2_remove" onclick="certificate_row2_remove()" value="Remove">
	   </td>
    
    </tr>

    </table>
    <table class="table table-bordered">
    <tr>		
    <td> Overall Experience :</td>
    <td colspan="5"><input type="text" class="form-control" id="overallexp" name="overallexp"></td>
    </tr>
    </table>
    <table class="table table-bordered">
    <tr>		
    <td> Reference Name & Number :</td>
    <td colspan="5"><input type="text" class="form-control" id="reference" name="reference"></td>
    </tr>
    <tr>		
    <td>Signature:</td>
    <td colspan="5"><input type="text" class="form-control" id="signature" name="signature"></td>
    </tr>
    <tr>		
    <td>Date:</td>
    <td colspan="5"><input type="date" class="form-control" id="interview_date" name="interview_date"></td>
    </tr>
    </table>
		 <tr><td><input type="hidden" name="cid" id="cid" value="<?php echo $candidateid;?>">
		 <input type="submit" name="submit" class="btn btn-success submitBtn" value="SUBMIT"/>

	</td></tr>
  </form>
  
  <script>
$(document).ready(function(){
    // Submit form data via Ajax
    $("#emp_educations").on('submit', function(e){
        e.preventDefault();
        $.ajax({
            type: 'POST',
            url: '/Qvision/Qvision/Recruitment/employee_employment_insert.php',
            data: new FormData(this),
            dataType: 'json',
            contentType: false,
            cache: false,
            processData:false,
           
            success: function(response){
      if(response==0)
      { 
        alert('Application form Entry Successfully Completed.');
        application();
      }
      else
      {
        alert("Entry Unsuccessfull");
		application();
      }
      
    }   
        });
    });
	
    // File type validation
    var match = ['application/pdf', 'application/msword', 'application/vnd.ms-office', 'image/jpeg', 'image/png', 'image/jpg'];
    $("#file").change(function() {
        for(i=0;i<this.files.length;i++){
            var file = this.files[i];
            var fileType = file.type;
			
            if(!((fileType == match[0]) || (fileType == match[1]) || (fileType == match[2]) || (fileType == match[3]) || (fileType == match[4]) || (fileType == match[5]))){
                alert('Sorry, only PDF, DOC, JPG, JPEG, & PNG files are allowed to upload.');
                $("#file").val('');
                return false;
            }
        }
    });
});
</script>

    </div>
    <!-- /.tab-pane -->
    </div>
    <!-- /.tab-content -->
    </div><!-- /.card-body -->
    </div>
    <!-- /.nav-tabs-custom -->
    
    <!-- /.col -->
    </div>
    <!-- /.row -->
    </div><!-- /.container-fluid -->
    </div><!-- /.container-fluid -->
    </section>
	</div>
	
	
		<script>
 function check2() // Experience
{
	//alert("jjj");
	 var len2=$('#new_tab2 tr').length;	
	len2=len2+1; 
	$('#new_tab2').append('<tr class="row_'+len2+'"><td><input type="checkbox" class="chk" name="chk[]" id="chk_'+len2+'" value="'+len2+'"></td><td><input type="text" class="form-control" id="organization_'+len2+'" name="organization[]"></td><td colspan="2"><input type="text" class="form-control" id="Designation_'+len2+'" name="designation[]"></td><td><input type="date" class="form-control" id="From_'+len2+'" name="from[]"></td><td><input type="date" class="form-control" id="to_'+len2+'" name="to[]"></td><td colspan="1"><input type="text" class="form-control" id="yearofexperience_'+len2+'" name="yearofexperience[]" ></td></tr>');  
}
 $('#certificate_row2_remove').click(function(){
    $('input:checkbox:checked.chk').map(function(){
    var id1=$(this).val();
    var le1=$('#new_tab1 tr').length;

    if(le1==1)
    {
    alert("You Can't Delete All the Rows");
    }
    else
    {
    $('.row_'+id1).remove();
    }

    });
    }); 
	</script>
	
	
<script> 
function printDiv(divName) {
     var printContents = document.getElementById(divName).innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();

     document.body.innerHTML = originalContents;
}
    </script> 
	



