	<?php
require('../../configuration.php');
require('../../user.php');
$user=$_SESSION['user'];

require('../main_process.php');

	$memsql=mysql_query("SELECT concat('VOU-',id+1) as v_code FROM voucher order by id desc limit 0,1");
	$check=mysql_num_rows($memsql);	
	if($check>0)
	{
		$mem_res=mysql_fetch_array($memsql);
		$v_code=$mem_res['v_code'];
	}
	else
	{
		$v_code='VOU-001';
	}
	
$cashvoucher=new voucher_process();
$amounts=$_REQUEST['amount'];

	$cashvoucher->code=$v_code;
	$cashvoucher->date=date("Y-m-d",strtotime($_REQUEST['date']));

	$cashvoucher->slip_no=$_REQUEST['slip_no'];
	$cashvoucher->reference_no=$_REQUEST['slip_no'];

	$cashvoucher->ledger_code=$_REQUEST['ledger_code'];
	$cashvoucher->amount=$amounts;

	$cashvoucher->voucher_category_code=$_REQUEST['cash_cat_code'];
	$cashvoucher->voucher_purpose_code=$_REQUEST['voucher_purpose_code'];
	$cashvoucher->description="Adjustment Slip Against Ledger";
	$cashvoucher->narration="Cash Voucher";
	$cashvoucher->created_by=$user;


$cashvoucher->voucher_entry();

	$ledgers_code=array($_REQUEST['ledger_code']);
	$ledgers_amount=array($amounts);
	$ledgers_type=array('debit');

$cashvoucher->voucher_details($ledgers_code,$ledgers_amount,$ledgers_type);



/* 
$vc_sql="SELECT code FROM voucher ORDER BY id DESC";

	$check=mysql_num_rows(mysql_query($vc_sql));

	if($check==0)
	{
	$voucher_code='VOU-001';
	
	}
	else
	{
	$vc_row=mysql_fetch_array(mysql_query($vc_sql));
	$code=$vc_row['code'];
	$split_data=explode("-",$code);
	$num=$split_data[1];
		$num=$num+1;
		if($num<100)
		{
			$num=str_pad($num,3,'0',STR_PAD_LEFT);
		}
	$voucher_code=$split_data[0]."-".$num;
	
	}


mysql_query("INSERT INTO voucher
				(code,date,voucher_category_code,slip_no,ledger_code,amount,description,status,created_by,created_on)
				VALUES
				('$voucher_code','$date','$voucher_category_code','$slip_no','$ledger_code','$amount','$description','1','$user',NOW())
			");
			
	
			//==================Voucher Detail=================
			
			
		/* $voucherDetail_sql="SELECT code FROM voucher_detail ORDER BY id DESC";
		$voucherDetail_row=mysql_query($voucherDetail_sql);
		$voucherDetail_check=mysql_num_rows($voucherDetail_row);
		
		if($voucherDetail_check<1)
		{
			$voucher_detail_code='VOUDET-001';
		}
		else
		{
			$voucherDetail_res=mysql_fetch_array($voucherDetail_row);
			$voucherDetail_code=$voucherDetail_res['code'];
			$vd_splitValue=explode("-",$voucherDetail_code);
			$num=$vd_splitValue[1];
			$num=$num+1;
			if($num<100)
			{
				$num=str_pad($num,3,"0",STR_PAD_LEFT);
			}
			
			$voucher_detail_code=$vd_splitValue[0]."-".$num;
		} 
			
mysql_query("INSERT INTO voucher_detail
				(voucher_code,sequence,ledger_code,description,amount,status,type,created_by,created_on)
				VALUES
				('$voucher_code',1,'$ledger_code','This is spend cash for some expenses','$amount','credit','1','$user',NOW())
			");
			
			
		//===========================Accounts Part============================//
		
		$account_sql="SELECT code FROM account_entry ORDER BY id DESC";
		$account_row=mysql_query($account_sql);
		$check=mysql_num_rows($account_row);
		
		if($check<1)
		{
			$account_entry_code='ACC-001';
		}
		else
		{
			$account_res=mysql_fetch_array($account_row);
			$account_code=$account_res['code'];
			$splitValue=explode("-",$account_code);
			$num=$splitValue[1];
			$num=$num+1;
			if($num<100)
			{
				$num=str_pad($num,3,"0",STR_PAD_LEFT);
			}
			
			$account_entry_code=$splitValue[0]."-".$num;
		}
		
	$suc=mysql_query("INSERT INTO account_entry
						(code,sequence,main_entity,main_entity_type,reference,search_no,date,ledger_code,amount,type,created_by,created_on)
					VALUES
						('$account_entry_code',1,'Cash Voucher','Cash Payment','$voucher_code','$slip_no','$date','$ledger_code','$amount','debit','$user',NOW())
					");
			
			if($suc)
			{
				echo 1;

			} */
			?>