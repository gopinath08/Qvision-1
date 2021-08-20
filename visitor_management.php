<?php
require ("connect.php");


?>
<br>
<br>
<br>
<br>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Visitor</title>

        <!-- Bootstrap Core CSS -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="../css/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="../css/startmin.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
	<div class="col-md-11">
   <form method="POST" enctype="multipart/form-data">
    <!-- Post -->
    <table class="table table-bordered">
        <tr>
        <td><center><img src="../../Recruitment/image/userlog/quadsel.png" alt="quadsel" style="width:100px;height:50px;"></center></td>
        <td colspan="5"><center><b>Quadsel Systems Private Limited</b></center></td>
        </tr>
      
     
		<tr>
        <td>Visiting Date</td>
        <td colspan="5"><input type="date" class="form-control" placeholder="Select Date" id="date" name="date" ></td>
        </tr>
        
       
        <tr>
       <td>Name</td>
        <td colspan="5"><input type="text" class="form-control" placeholder="Enter your name" id="first_name" name="first_name" require></td>
        </tr>
        <tr>
        <td>Email</td>
        <td colspan="5"><input type="text" class="form-control" placeholder="Enter Email Address" id="email" name="email" ></td>
        </tr>
        
         <tr>
        <td>Mobile_number</td>
        <td colspan="5"><input type="text" class="form-control" placeholder="Enter Mobile Number"  name="mob_num" id="mob_num"></td>
        </tr>
		 <tr>
        <td>Coming From</td>
        <td colspan="5">
			<input type="text"  id="Coming_from" name="Coming_from" class="form-control"  placeholder="Enter Coming_from">
		</td>
        </tr>
			<tr>
		<td>Company:</td>
		<td colspan="5">
		<input type="text"  id="companys" name="companys" value="Quadsel Systems Private Limited" class="form-control"  readonly required="true">
		</td>
        </tr> 
		 <tr>
        <td>Purpose of Visit</td>
        <td colspan="5">
			<input type="text"  id="Purpose" name="Purpose" class="form-control"  placeholder="Enter Purpose of visit">
		</td>
        </tr>
		 <tr>
		<td>Department :</td>
		<td colspan="5">
		<select class="form-control" id="Department" name="Department" onclick="inserts_enqurie()">
		<option value="">Choose Type</option>
		<?php $stmt = $con->query("SELECT * FROM z_department_master ");
		while ($row = $stmt->fetch()) {?>
		<option value="<?php echo $row['id']; ?>"> <?php echo $row['dept_name']; ?> </option>
		<?php } ?>
		</select></td>
        </tr>
		
		<tr>
		<td>Employee :</td>
		<td colspan="5">
		 <select class="form-control" name="employee" id="employee" required>
				
					 
					
</select></td>
        </tr>
		 <tr>
        <td>Type of Vehicle</td>
        <td colspan="5">
			<input type="text"  id="vehicle" name="vehicle" class="form-control"  placeholder="Enter vehicle Type">
		</td>
        </tr>
		
		 <tr>
        <td>Vehicle No
</td>
        <td colspan="5">
			<input type="text"  id="Vehicle_No" name="Vehicle_No" class="form-control"  placeholder="Enter Vehicle No">
		</td>
        </tr>
		 <tr>
        <td>No Of Bags</td>
        <td colspan="5">
			<input type="text"  id="Bags" name="Bags" class="form-control"  placeholder="Enter No Of Bags">
		</td>
        </tr>
		<tr>
        <td>Other/Remarks</td>
        <td colspan="5">
			<input type="text"  id="Remarks" name="Remarks" class="form-control"  placeholder="Enter Remarks">
		</td>
        </tr>
		
	
		
        <td colspan="6"><input type="button" class="btn btn-success" name="save" onclick="insert_enqurie()" value="save"></td>
        </tr>
        </table>
        <!-- /.post -->
    </form>
	</div>


<script>
$(document).ready(function() {
$('#Department').on('change', function() {

var department_id = this.value;
alert(department_id);
$.ajax({
url: "Qvision/CRM/find_emp.php",
type: "POST",
data: {
department_id: department_id
},
cache: false,
success: function(result){
$("#employee").html(result);

}
});
});
});
   function inserts_enqurie()
    {
    var id=0;
	alert(id);
    var data = $('form').serialize();
//alert(data);
    $.ajax({
    type:'GET',
    data:"id="+id, data,
    url:'Qvision/CRM/insert_enqurie.php',	
    success:function(data)
    {      
        alert("Entry Successfully");
		enquiry()
		          
    }       
    });
    }

    function insert_enqurie()
    {
    var id=0;
	alert(id);
    var data = $('form').serialize();
//alert(data);
    $.ajax({
    type:'GET',
    data:"id="+id, data,
    url:'Qvision/CRM/insert_enqurie.php',	
    success:function(data)
    {      
        alert("Entry Successfully");
		enquiry()
		          
    }       
    });
    }
</script>

  
    </body>
</html>

