<?php
require '../../../connect.php';
include("../../../user.php");

?>
 <div class="card card-info">
	  <div class="card-header">
	     <h3><center>Quote/Proposal Entry Details</center></h3>
		  <div class="form-group row">
		    <div class="col-sm-10"></div>
			<div class="col-sm-2">
				<select class="form-control" id="gst" name="gst" onchange="showDiv(this)">
					<option value="">Choose Quote Type</option>
					<option value="1">INR</option>
					<option value="2">$</option>
				</select>
			</div>
		  </div>
     </div>
	<form action="" method="post" enctype="multipart/form-data">

	  <TABLE id="dataTable" width="350px" border="1" style="border-collapse:collapse;" class="table table-bordered">
		<TR>
		  <TH>
			<INPUT type="checkbox" name="select-all" id="select-all" onclick="toggle(this);">
		  </TH> 
		  <th>SPECIFICATION</th>
		  <th>QTY</th>
		  <th>UNIT RATE</th>
		  <TH formula="cost*qty" summary="sum">Amount</TH>
		  <TH>ACTION</TH>
		</TR>
		<TR>
		  <TD>
			<INPUT type="checkbox" name="chk[]">
		  </TD>
		  <TD>
			<INPUT type="text" id="item1" name="item[]" class="form-control"> </TD>
		  <TD>
			<INPUT type="text" id="qty1" name="qty[]" onchange="totalIt()" class="form-control"> </TD>
		  
		  <TD>
			<INPUT type="text" id="cost1" name="cost[]" onchange="totalIt()" class="form-control"> </TD>
		  <TD>
			<INPUT type="text" id="price1" name="price[]" readonly="readonly" value="0.00" class="form-control"> </TD>
		<td>
		 <INPUT type="button" class="btn btn-success" value="Add " onclick="addRow('dataTable')" />
	     <INPUT type="button" class="btn btn-danger" value="Delete Item(s)" onclick="deleteRow('dataTable')" />
		</td>
		</TR>
	  </TABLE>
	<div class="col-sm-6">
	   <select class="form-control" id="gst" name="gst" >
			<option value="">----- Choose GST % -----</option>
			<option value="18">18 %</option>
			<option value="28">28 %</option>
		</select>
	</div>
   <div class="col-sm-2">
	 <input type="button" class="btn btn-success" id="save" name="save" onclick="quotation_insert()"  value="Save"><br/><br/>
   </div>
	  <div class="card-body">
	    <table class="table table-bordered">
		 <tr><th colspan="2"  style="text-align:center;">TERMS & CONDITIONS</th></tr>
		  <tr>
		    <th>VALIDITY</th>
			<th>ONE WEEK FROM THE DATE OF QUOTE. PRICES PREVAILING AT THE TIME OF SUPPLY & BILLING WILL ONLY APPLY.</th>
		  </tr>
		  <tr>
		    <th>PAYMENT</th>
			<td><b>100% IN ADVANCE ALONG WITH FORMAL PURCHASE ORDER.<br/></b>
			PAYMENTS SHOULD BE MADE EITHER BY CHEQUE, DD, RTGS AND NEFT IN FAVOUR OF QUADSEL SYSTEMS PVT LTD, PAYABLE AT CHENNAI. CASH PAYMENTS WILL BE NULL & VOID.<br/>
			<b>1BANK DETAILS FOR NEFT / RTGS / IMPS<br/>
			BANK NAME :              CITY UNION BANK LTD.<br/>
			CURRENT A/C NO :            130109000092771<br/>
			IFSC CODE :           CIUB0000130 </b>
            </td>
		  </tr>
		  <tr id="hidden_div1">
		    <th >IMPORTANT</th>
			<td>YOUR PO SHOULD BE IN FAVOUR OF QUADSEL SYSTEMS PVT LTD., “QUADSEL TOWERS”, Old No.80, New No.118, Manickam Lane, Anna Salai, Guindy, Chennai – 600 032. INDIA.</td>
		  </tr>
		   <tr id="hidden_div2">
		    <th>IMPORTANT</th>
			<td>YOUR PO SHOULD BE IN FAVOUR OF QUADSEL SYSTEMS PVT LTD., “BLUE BASE SOFTWARE”, Old No.80, New No.118, Manickam Lane, Anna Salai, Guindy, Chennai – 600 032. INDIA.</td>
		  </tr>
		  <tr>
		    <th>DELIVERY</th>
			<td><b>WITHIN ….......... DAYS FROM THE DATE OF RECEIPT OF PAYMENT.</b><br/>
			SHIPPING COSTS WILL BE LEVIED IN FINAL INVOICE AS MAY BECOME APPLICABLE.</td>
		  </tr>
		  <tr>
		    <th>WARRANTY</th>
			<td>AS MENTIONED ABOVE.<br/></td>
		  </tr>
		</table>
		</div>
		<br/><br/>
	   <div class="form-group row">
			<div class="col-sm-2">
				<p><b> For QUADSEL SYSTEMS PVT. LTD.,</b></p>
				<p><b>
			<p><b> Employee Name</b></p>
        <p><b>
		 <select id="emp_id" name="emp_id">
		 <option> --- Select Employee Name ---</option>
			<?php $query = $con->query("SELECT * FROM staff_master");
				  while ($row_fetch = $query->fetch()) {?>
			<option value="<?php echo $row_fetch['id']; ?>"><?php echo $row_fetch['emp_name']; ?> </option>
			<?php } ?>
        </select>
        </b></p>
				<p id="designation"></p>
				<p id="tel_no"></p>
				<p id="email_id"></p>
			</div>
		</div>
	</form>	  
	<!-- Sub Total: <input type="text" readonly="readonly" id="total"><br><input type="submit" value="Create Invoice">-->
  </div>
			
<script>
function quotation_insert()
{
	var field=1;
	var data = $('form').serialize();
	alert(data)
	$.ajax({
		type:'GET',
		data:"field="+field, data,
		url:'Qvision/BusinessProcess/quotation/quotation_insert.php',
		success:function(data)
		{
			if(data>0)
			{
				alert("Quotation Saved Successfully");
				//window.location.href="login/logout.php";
			}
			else
			{
				alert("Quotation  has not been Submitted");
				//candidate_form();
			}	
		}       
	});
}

$("#emp_id").change(function(e){
	var value = $(this).val();
	alert(value);
	$('#designation').val('');
	
		$.ajax({ 
				type: 'POST', 
				url: 'Qvision/BusinessProcess/quotation/getemp_details.php', 
				//data: { id: value }, 
				data:"id="+value,
				dataType: 'json',
				success: function (data) {  
					if(data != null){ //alert(data);
						$.each(data, function(index, element) {
							$('#designation').val(element.position);
							$('#tel_no').val(element.mobile_num);
							$('#email_id').val(element.email_id);
						
						});
					}else{
					alert(" no data found");
					}
				}
			});
	
});


	
		
 function change_status()
    {
    var id=$('#get_id').val();
	alert(id);
    var data = $('form').serialize();
		$.ajax({
		type:'GET',
		data:"id="+id,data,
		url:'Qvision/CRM/change_status.php',
		success:function(data)
		{
		  if(data==1)
		  { 
			alert('Not');
		  }
		  else
		  {
			alert("Update Successfully");
		 enquiry()
		  }
		  }           
		});
    }
	
	</script>

<!-------Calculation Part JAVASCRIPT--------->
<script>
  function calc(idx) {
    var price = parseFloat(document.getElementById("cost" + idx).value) *
      parseFloat(document.getElementById("qty" + idx).value);
    //alert(idx+":"+price);  
    document.getElementById("price" + idx).value = isNaN(price) ? "0.00" : price.toFixed(2);
    //document.getElementById("total") = totalIt;
  }

  function totalIt() {
    var qtys = document.getElementsByName("qty[]");
    var total = 0;
    for (var i = 1; i <= qtys.length; i++) {
      calc(i);
      var price = parseFloat(document.getElementById("price" + i).value);
      total += isNaN(price) ? 0 : price;
    }
    document.getElementById("total").value = isNaN(total) ? "0.00" : total.toFixed(2);
  }

  window.onload = function() {
    document.getElementsByName("qty[]")[0].onkeyup = function() {
      calc(1)
    };
    document.getElementsByName("cost[]")[0].onkeyup = function() {
      calc(1)
    };
  }

  var rowCount = 0;

  function addRow(tableID) {

    var table = document.getElementById(tableID);

    var rowCount = table.rows.length;
    var row = table.insertRow(rowCount);

    var cell1 = row.insertCell(0);
    var element1 = document.createElement("input");
    element1.type = "checkbox";
    element1.name = "chk[]";
	element1.class = "form-control";
    cell1.appendChild(element1);


    var cell3 = row.insertCell(1);
    var element3 = document.createElement("input");
    element3.type = "text";
    element3.name = "item[]";
	element3.class = "form-control";
    element3.id = "item" + rowCount;
    cell3.appendChild(element3);
	
    var cell4 = row.insertCell(2);
    var element4 = document.createElement("input");
    element4.type = "text";
	element4.class = "form-control";
    element4.name = "qty[]";
    element4.id = "qty" + rowCount;
    element4.onkeyup = totalIt;
	
    cell4.appendChild(element4);

   

    var cell5 = row.insertCell(3);
    var element5 = document.createElement("input");
    element5.type = "text";
    element5.name = "cost[]";
    element5.id = "cost" + rowCount;
    element5.onkeyup = totalIt;
    cell5.appendChild(element5);

    var cell6 = row.insertCell(4);
    var element6 = document.createElement("input");
    element6.type = "text";
    element6.name = "price[]";
    element6.id = "price" + rowCount;
    element6.value = "0.00";
    $(element6).attr("readonly", "true");
    cell6.appendChild(element6);

  }

  function deleteRow(tableID) {
    try {
      var table = document.getElementById(tableID);
      var rowCount = table.rows.length;

      document.getElementById("select-all").checked = false;

      for (var i = 1; i < rowCount; i++) {
        var row = table.rows[i];
        var chkbox = row.cells[0].childNodes[0];
        if (null != chkbox && true == chkbox.checked) {
          table.deleteRow(i);
          rowCount--;
          i--;
        }


      }
    } catch (e) {
      alert(e);
    }
  }

</script>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.js"></script>
<script>
  $("input").blur(function() {
    if ($(this).attr("data-selected-all")) {
      //Remove atribute to allow select all again on focus        
      $(this).removeAttr("data-selected-all");
    }
  });
  
   $("input").click(function() {
    if (!$(this).attr("data-selected-all")) {
      try {
        $(this).selectionStart = 0;
        $(this).selectionEnd = $(this).value.length + 1;
        //add atribute allowing normal selecting post focus
        $(this).attr("data-selected-all", true);
      } catch (err) {
        $(this).select();
        //add atribute allowing normal selecting post focus
        $(this).attr("data-selected-all", true);
      }
    }
  });

  function toggle(source) {
    var checkboxes = document.querySelectorAll('input[type="checkbox"]');
    for (var i = 0; i < checkboxes.length; i++) {
      if (checkboxes[i] != source)
        checkboxes[i].checked = source.checked;
    }
  }

</script>
<script>

<script type="text/javascript">
function showDiv(select){
   if(select.value==2){
    document.getElementById('hidden_div2').style.display = "block";
	document.getElementById('hidden_div1').style.display = "none";
   } else{
    //document.getElementById('hidden_div1').style.display = "block";
	document.getElementById('hidden_div2').style.display = "none";
   }
} 
</script>
<style>
#hidden_div2 {
  display: none;
}
</style>