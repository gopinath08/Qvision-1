<?php
require('../../configuration.php');
require('../../user.php');
$user_id=$_SESSION['user'];

$voucher_code=$_REQUEST['voucher_code'];

$voucher=mysql_fetch_array(mysql_query("SELECT code,date,voucher_category_code,voucher_purpose_code,slip_no,reference_voucher,member_no, name,branch_code,reference_no,ledger_code,amount,bank_code,cheque_no,cheque_date,description,narration,status FROM voucher 
WHERE code='$voucher_code'"));
$date=$voucher['date'];
$voucher_purpose_code=$voucher['voucher_purpose_code'];
$vou_pur_code=mysql_fetch_array(mysql_query("SELECT name from voucher_purpose where code='$voucher_purpose_code'"));
$vou_pur_name=$vou_pur_code['name'];
?>
<script>
function printData()
{
   var divToPrint=document.getElementById("voucher_view");
   newWin= window.open("");
   newWin.document.write(divToPrint.outerHTML);
   newWin.print();
   newWin.close();
}

$('#print').on('click',function(){
printData();
})

function Reject(a)
{
	alert("Reject");
	var data=$('form').serialize();
	$.get('new_voucher/Voucher_Approve/voucherreject.php',data);	
	new_voucher();
}
</script>
<form style="font-family:Times New Roman; font-weight:200px;font-size:16px;">
<input type="hidden" name="voucher_code" id="voucher_code" value="<?php echo $voucher_code;?>">

<div style="margin-bottom: 1px;text-align:right; margin-top:10px;">
	<div class="col-sm-12">
	<div class="col-sm-3">
		<input class="btn btn-danger" type="button" name="Reject_vou" id="Rejects" onclick="Reject(1)" value="Reject"/>
		<input class="btn btn-warning" type="button" name="Print" id="Print" onclick="printData()" value="Print" style="" />
		<input type="hidden" id="vouch_purpose_code" value="<?php echo $voucher_purpose_code; ?>">
	</div>
	<div class="col-sm-9">
		<input type="button" style="margin-right:20px;" name="approve" id="approve" class="btn btn-primary" onclick="voucher_approve()" value="Approve"/>
	</div>
</div>
</div>

<div id="voucher_view">
<table class="table table-bordered table-hover" style="margin:1px;" >

<thead style="FONT-SIZE: 14px;font-family: none;">
<center>
	<h4>UCO</h4>
	(UCO BANK EMPLOYEES' CO-OP THRIFT & CREDIT SOCIETY LTD..,MSCS/CR/42/94.)<br/>
</center>
</thead>

<tbody>
<tr>
<td>Voucher Code</td><td><?php echo $voucher_code;?></td><td>Date</td><td><?php echo $date;?></td>
</tr>
<tr>
<td>Member No - Name</td><td><?php echo $voucher['member_no'].'-'.$voucher['name']; ?></td>
<td>Branch </td><td><?php echo $voucher['branch_code'];?></td>
</tr>

<tr>
<td>Amount</td><td style="text-align:right"><?php echo round($voucher['amount']); ?></td>
<td>Bank <br> Cheque No</td><td><?php echo $voucher['bank_code']; ?><br><?php echo $voucher['cheque_no']; ?></td>
</tr>
<tr>
<td>Voucher Purpose</td><td colspan='2'><?php echo $vou_pur_name;?></td></td>
</tr>
<tr><th colspan="2">Ledger Code</th><th>Receipt</th><th>Payment</th></tr>
<?php

$v_sql=mysql_query("SELECT ledger_code,reference,amount,type,narration,status FROM voucher_detail WHERE 
voucher_code='$voucher_code'");

$credit_t=0;
$debit_t=0;

while($vou_det=mysql_fetch_array($v_sql))
{
	$ledger=$vou_det['ledger_code'];	
	$led_name=mysql_fetch_array(mysql_query("SELECT name FROM ledger WHERE code='$ledger'"));
	$ledger_name=$led_name['name'];
?>
<tr>	
	<td colspan="2"><?php echo $ledger.'-'.$ledger_name; ?></td>	
	<td style="text-align:right">
	<?php 
	if($vou_det['type']=='credit')
	{
		$credit=$vou_det['amount'];
		echo round($credit);
		$credit_t=$credit_t+$credit;
	}
	?>
	</td>
		
	<td style="text-align:right">
	<?php
	if($vou_det['type']=='debit')
	{
		$debit=$vou_det['amount'];
		echo round($debit);
		$debit_t=$debit_t+$debit;
	}
	?>
	</td>
</tr>		
	
<?php
}
?>
<tr><td colspan="2">Total</td><td style="text-align:right"><?php echo $credit_t; ?></td>
								<td style="text-align:right"><?php echo $debit_t; ?></td>
								</tr>
</tbody>
</table>
</div>
</form>

<script>
function voucher_approve()
{
	let isBoss = confirm("voucher can be approved");
	alert(isBoss);
	if( isBoss == true ) 
	{
		var vouch_purpose_code=$('#vouch_purpose_code').val();
		var voucher_code="<?php echo $voucher_code; ?>";
		var id=1;
		var data=$('form').serialize();
		$('#voucher_view').html('<br><div style="text-align: center;"><img src="/UCO/images/loader/loader.gif"></div>');	
		
		if(vouch_purpose_code!='PUR-010')
		{
		$.ajax({
				type: "GET",
				data: "id="+id, data,
				url: "new_voucher/Voucher_Approve/vouchermain.php",
				success: function(data){
					alert("VOUCHER APPROVED SUCCESSFULLY");
					new_voucher();
				}
			});
		}
		else
		{
			$.ajax({
				type: "GET",
				data: "voucher_code="+voucher_code, 
				url: "new_voucher/Voucher_Approve/fd_loan_collection_insert.php",
				success: function(data){
					alert("VOUCHER APPROVED SUCCESSFULLY");
					new_voucher();
				}
			});
		}
	}
}
</script>