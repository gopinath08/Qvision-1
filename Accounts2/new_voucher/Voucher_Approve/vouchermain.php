<?php
require('../../configuration.php');
require('../../user.php');
$user_id=$_SESSION['user'];

$voucher_code=$_REQUEST['voucher_code'];
$voucher_detail=mysql_fetch_array(mysql_query("select * from voucher where code='$voucher_code'"));
$date=$voucher_detail['date'];
$member_no=$voucher_detail['member_no'];	
$branch_code=$voucher_detail['branch_code'];	
$category_code=$voucher_detail['voucher_category_code'];
$purpose_code=$voucher_detail['voucher_purpose_code'];
$total_amount=$voucher_detail['amount'];
$reference_no=$voucher_detail['reference_no'];
$reference_voucher=$voucher_detail['reference_voucher'];

echo $voucher_code,'<br>',$date,'<br>',$member_no,'<br>',$branch_code,'<br>',$category_code,'<br>',$purpose_code,
'<br>',$total_amount,'<br>',$reference_no,'<br>',$reference_voucher;




	$vd_sql=mysql_query("select * FROM voucher_detail WHERE voucher_code='$voucher_code'");

	while($vd_res=mysql_fetch_array($vd_sql))
	{
		$ledger_code[]=$vd_res['ledger_code'];
		$amount[]=$vd_res['amount'];
		$type[]=$vd_res['type'];
		$reference[]=$vd_res['reference'];
		$narration[]=$vd_res['narration'];
		
	}
	
	//new member
	if($category_code=='CAT-004' && $purpose_code=='PUR-001')
	{
		$sql=mysql_query("UPDATE member SET voucher_code='$voucher_code' WHERE member_no='$member_no'");
	}


	mysql_query("UPDATE voucher SET status=2 WHERE code='$voucher_code'");
	mysql_query("UPDATE voucher_detail SET status=2 WHERE voucher_code='$voucher_code'");

	if($purpose_code=='PUR-003') //ADJUSTMENT COLLECTION
	{
		$demand_month_sql="SELECT month_no FROM	demand_month WHERE flag_id=7 ORDER BY id ASC";
		$demand_month_row=mysql_query($demand_month_sql);
		$demand_month_res=mysql_fetch_array($demand_month_row);
		$demand_month_no=$demand_month_res['month_no'];	
		
		$adj_col_sql="SELECT code FROM adjustment_collection ORDER BY id DESC";
		$adj_col_row=mysql_query($adj_col_sql);
		$adj_col_check=mysql_num_rows($adj_col_row);

		if($adj_col_check==0)
		{
		$adj_col_code='ADJCOL-001';
		}
		else
		{
		$adj_col_res=mysql_fetch_array($adj_col_row);
		$adj_col_code=$adj_col_res['code'];
		$adjCol_split_data=explode("-",$adj_col_code);
		$adjCol_num=$adjCol_split_data[1];
		$adjCol_num=$adjCol_num+1;
		if($adjCol_num<100)
		{
		$adjCol_num=str_pad($adjCol_num,3,'0',STR_PAD_LEFT);
		}
		$adj_col_code=$adjCol_split_data[0]."-".$adjCol_num;	
		}
		
		$adj_col_ins_sql=mysql_query("INSERT INTO adjustment_collection(code,date,demand_month_no,reference_no,member_no,branch_code,amount,created_by,created_on) VALUES('$adj_col_code','$date','$demand_month_no','$voucher_code','$member_no','$branch_code','$total_amount','$user_id',NOW())");
	}
	if($purpose_code=='PUR-004') //BULK COLLECTION
	{
		$bulk_col_sql="SELECT code FROM bulk_collection ORDER BY id DESC";
		$bulk_col_row=mysql_query($bulk_col_sql);
		$bulk_col_check=mysql_num_rows($bulk_col_row);

		if($bulk_col_check==0)
		{
		$bulk_col_code='BULKCOL-001';
		}
		else
		{
		$bulk_col_res=mysql_fetch_array($bulk_col_row);
		$bulk_col_code=$bulk_col_res['code'];
		$bulkCol_split_data=explode("-",$bulk_col_code);
		$bulkCol_num=$bulkCol_split_data[1];
		$bulkCol_num=$bulkCol_num+1;
		if($bulkCol_num<100)
		{
		$bulkCol_num=str_pad($bulkCol_num,3,'0',STR_PAD_LEFT);
		}
		$bulk_col_code=$bulkCol_split_data[0]."-".$bulkCol_num;	
		}
						
		$bulk_col_ins_sql=mysql_query("INSERT INTO bulk_collection		(code,date,reference_no,member_no,branch_code,amount,created_by,created_on)VALUES		('$bulk_col_code','$date','$voucher_code','$member_no','$branch_code','$total_amount','$user_id',NOW())");
	
	}
	
	if($purpose_code=='PUR-020')//fd int pay
	{
		$memsql=mysql_query("SELECT concat('FDINTTRN-',id+1) as code FROM fd_interest_transaction order by id desc limit 0,1");
		$check=mysql_num_rows($memsql);	
		if($check>0)
		{
			$mem_res=mysql_fetch_array($memsql);
			$code=$mem_res['code'];
		}
		else
		{
			$code='FDINTTRN-001';
		}
		
		$fd_int_pay=mysql_query("INSERT INTO fd_interest_transaction(code,member_no, branch_code, fdr_no, date, interest_amount,reference,created_by,created_on) VALUES ('$code','$member_no','$branch_code','$reference_no','$date','$total_amount','$voucher_code','$user_id',NOW())");
	}



$length=count($ledger_code);

echo $length;
echo '<br>';

require('main_process.php');

$vou_obj=new voucher_approve();

for($i=0;$i<$length;$i++)
{
	
	$i;
	$amount[$i];
	$ledger_code[$i];
	
	
	$memsql=mysql_query("SELECT concat('ACC-',id+1) as acc_code FROM account_entry order by id desc limit 0,1");	 
	$mem_res=mysql_fetch_array($memsql);
	$acc_code=$mem_res['acc_code'];	

	
	if($category_code=='CAT-004' && $purpose_code!='PUR-001')
	{
		$sql="INSERT INTO account_entry(code,sequence,main_entity,main_entity_type,reference,search_no,date,	ledger_code,amount,type,bank_code,cheque_no,cheque_date,narration,created_by,created_on,flag)VALUES('$acc_code','$i','VOUCHER','ADJUSTMENT RECEIPT','$voucher_code','$reference[$i]','$date','$ledger_code[$i]','$amount[$i]','$type[$i]','','',NOW(),'$narration[$i]','$user_id',NOW(),'$narration[$i]')";
		
	}
	else if($category_code=='CAT-005')
	{		
		$sql="INSERT INTO account_entry(code,sequence,main_entity,main_entity_type,reference,search_no,date,ledger_code,amount,type,bank_code,cheque_no,cheque_date,narration,created_by,created_on)VALUES('$acc_code','$i','VOUCHER','ADJUSTMENT SLIP','$voucher_code','$reference[$i]','$date','$ledger_code[$i]','$amount[$i]','$type[$i]','','','','$narration[$i]','$user_id',NOW())";
	}
	else if($category_code=='CAT-001')
	{
		$sql="INSERT INTO account_entry(code,sequence,main_entity,main_entity_type,reference,search_no,date,ledger_code,amount,type,bank_code,cheque_no,cheque_date,narration,created_by,created_on)VALUES('$acc_code','$i','Cash Voucher','Cash Payment','$voucher_code','$reference[$i]','$date','$ledger_code[$i]','$amount[$i]','debit','','','','$narration[$i]','$user_id',NOW())";
	}
	else if($category_code=='CAT-002')
	{
		$sql="INSERT INTO account_entry(code,sequence,main_entity,main_entity_type,reference,search_no,date,ledger_code,amount,type,bank_code,cheque_no,cheque_date,narration,created_by,created_on)VALUES('$acc_code','$i','Cash Voucher ','Cash Receipt','$voucher_code','$reference[$i]','$date','$ledger_code[$i]','$amount[$i]','credit','','','','$narration[$i]','$user_id',NOW())";
	}
	
	mysql_query($sql) or die("account_entry ".mysql_error());
	
	if($category_code=='CAT-004' && $purpose_code!='PUR-001') // Check the new member or not 
	{
		if($ledger_code[$i]=='E003') 		//srf data
		{
			$vou_obj->vou_date=$date;
			$vou_obj->srf_member_no=$reference[$i];
			$vou_obj->srf_ledger_code=$ledger_code[$i];
			$vou_obj->srf_type=$type[$i];
			$vou_obj->srf_amount=$amount[$i];
			$vou_obj->voucher_code=$voucher_code;			
			
			if($purpose_code=='PUR-001')
			{				
				$vou_obj->narration='OPN BAL';
			}
			else if($purpose_code=='PUR-004')
			{				
				$vou_obj->narration='BULK. COL';
				
				mysql_query("UPDATE bulk_collection SET srf='$amount[$i]' where reference='$voucher_code'");
			}
			
			$vou_obj->srf_insert(); 
			
			
		}
		else if($ledger_code[$i]=='A003') 	//thrift data
		{
			$vou_obj->vou_date=$date;
			$vou_obj->thrift_member_no=$reference[$i];
			$vou_obj->thrift_ledger_code=$ledger_code[$i];
			$vou_obj->thrift_type=$type[$i];
			$vou_obj->thrift_amount=$amount[$i];
			$vou_obj->voucher_code=$voucher_code;
			
			if($purpose_code=='PUR-001')
			{				
				$vou_obj->narration='OPN BAL';
			}
			else if($purpose_code=='PUR-004')
			{				
				$vou_obj->narration='BULK. COL';
				
				mysql_query("UPDATE bulk_collection SET thrift_deposit='$amount[$i]' where reference_no='$voucher_code'");
			}
			
			$vou_obj->thrift_insert(); 
		}
		else if($ledger_code[$i]=='D001')	//share data
		{
			$vou_obj->vou_date=$date;
			$vou_obj->share_member_no=$reference[$i];
			$vou_obj->share_ledger_code=$ledger_code[$i];
			$vou_obj->share_type=$type[$i];
			$vou_obj->share_amount=$amount[$i];
			$vou_obj->voucher_code=$voucher_code;
			if($purpose_code=='PUR-001')
			{				
				$vou_obj->narration='OPN BAL';
			}			
			
			$vou_obj->share_insert(); 
		}
		else if($ledger_code[$i]=='F001')	//surety_int
		{
			$vou_obj->vou_date=$date;
			$vou_obj->voucher_code=$voucher_code;
			$vou_obj->surety_int_member_no=$reference[$i];
			$vou_obj->surety_int_ledger_code=$ledger_code[$i];
			$vou_obj->surety_int_type=$type[$i];
			$vou_obj->surety_int_amount=$amount[$i];
			
			if($purpose_code=='PUR-003')
			{				
				$vou_obj->narration='ADJ. COL';
				
				mysql_query("UPDATE adjustment_collection SET demand_surety_interest='$amount[$i]',surety_interest='$amount[$i]' where reference_no='$voucher_code'");
				
			}
			else if($purpose_code=='PUR-004')
			{				
				$vou_obj->narration='BULK. COL';
				
				mysql_query("UPDATE bulk_collection SET surety_interest='$amount[$i]' where reference_no='$voucher_code'");
			}
			$vou_obj->surety_int_insert();  
		}
			else if($ledger_code[$i]=='G001')	//surety_pri
		{
			$vou_obj->vou_date=$date;
			$vou_obj->voucher_code=$voucher_code;
			$vou_obj->surety_member_no=$reference[$i];	
			$vou_obj->surety_ledger_code=$ledger_code[$i];
			$vou_obj->surety_type=$type[$i];
			$vou_obj->surety_amount=$amount[$i];
			if($purpose_code=='PUR-003')
			{				
				$vou_obj->narration='ADJ. COL';
				
				mysql_query("UPDATE adjustment_collection SET demand_surety_principal='$amount[$i]',surety_principal='$amount[$i]' where reference_no='$voucher_code'");
			}
			else if($purpose_code=='PUR-004')
			{				
				$vou_obj->narration='BULK. COL';
				mysql_query("UPDATE bulk_collection SET surety_reg_balance='$amount[$i]' where reference_no='$voucher_code'");
			}
			$vou_obj->surety_insert(); 
		}
		
		else if($ledger_code[$i]=='F002')	//fest_int data
		{ 
			$vou_obj->vou_date=$date;
			$vou_obj->voucher_code=$voucher_code;
			$vou_obj->fest_int_type=$type[$i];			
			$vou_obj->fest_int_ledger_code=$ledger_code[$i];			
			$vou_obj->fest_int_member_no=$reference[$i];
			$vou_obj->fest_int_amount=$amount[$i];
			
			if($purpose_code=='PUR-003')
			{				
				$vou_obj->narration='ADJ. COL';
				mysql_query("UPDATE adjustment_collection SET demand_festival_interest='$amount[$i]',festival_interest='$amount[$i]' where reference_no='$voucher_code'");
				
			}
			else if($purpose_code=='PUR-004')
			{				
				$vou_obj->narration='BULK. COL';
				
				mysql_query("UPDATE bulk_collection SET festival_interest='$amount[$i]' where reference_no='$voucher_code'");
			}
			$vou_obj->fest_int_insert(); 
			
		}
		else if($ledger_code[$i]=='G002')	//fest data
		{
			$vou_obj->vou_date=$date;
			$vou_obj->fest_member_no=$reference[$i];
			$vou_obj->fest_ledger_code=$ledger_code[$i];
			$vou_obj->fest_type=$type[$i];
			$vou_obj->fest_amount=$amount[$i];
			$vou_obj->voucher_code=$voucher_code;
			
			if($purpose_code=='PUR-003')
			{				
				$vou_obj->narration='ADJ. COL';
				mysql_query("UPDATE adjustment_collection SET demand_festival_principal='$amount[$i]',festival_principal='$amount[$i]' where reference_no='$voucher_code'");
			}
			else if($purpose_code=='PUR-004')
			{				
				$vou_obj->narration='BULK. COL';
				
				mysql_query("UPDATE bulk_collection SET festival_reg_balance='$amount[$i]' where reference_no='$voucher_code'");
			} 
			$vou_obj->fest_pri_insert(); 
		}
		else if($ledger_code[$i]=='I002')	//scr data
		{
			$vou_obj->vou_date=$date;
			$vou_obj->scr_member_no=$reference[$i];
			$vou_obj->scr_ledger_code=$ledger_code[$i];
			$vou_obj->scr_type=$type[$i];
			$vou_obj->scr_amount=$amount[$i];
			$vou_obj->voucher_code=$voucher_code;
			$vou_obj->narration='SUNDRY CREDITOR';
			
			$vou_obj->scr();
			
			if($purpose_code=='PUR-004')
			{				
				mysql_query("UPDATE bulk_collection SET scr='$amount[$i]' where reference_no='$voucher_code'");
			}
			
		}
		else if($ledger_code[$i]=='I001')	//sdr data
		{
			$vou_obj->vou_date=$date;
			$vou_obj->reference_voucher=$reference_voucher;
			$vou_obj->voucher_code=$voucher_code;
			$vou_obj->branch_code=$branch_code;
			$vou_obj->sdr(); 
		}
		else									//other data
		{
			$other_member_no[]=$reference[$i];
			$other_ledger_code[]=$ledger_code[$i];
			$other_type[]=$type[$i];
			$other_amount[]=$amount[$i];	
			$vou_obj->voucher_code=$voucher_code;
			//$vou_obj->other();	
		}
	} 
	
}

if($purpose_code=='PUR-004') //BULK COLLECTION After Demand Affect
{
	$dem_msql=mysql_fetch_array(mysql_query("SELECT month_no FROM `demand_month` where flag_id=8 order by id desc"));	
	$demand_month_no=$dem_msql['month_no'];
	$sql=mysql_query("SELECT * FROM `demand` WHERE `demand_month_no` = '$demand_month_no' and `member_no`='$member_no' and flag_id=8");	
	$check=mysql_num_rows($sql);
	if($check>0)
	{
		$vou_obj->after_demand($member_no,$demand_month_no);
	}	
}


?>