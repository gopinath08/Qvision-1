<?php
require '../connect.php';
?>
<style>
.menu-bar{
background: rgb(0 97 16);
text-align: center;
}
.menu-bar ul{
display: inline-flex;
list-style: none;
color: #fff;
margin-bottom: 0rem;
}

.menu-bar ul li{
width: 160px;
padding: 15px;
margin: 15px;
}
.menu-bar ul li a
{
text-decoration: none;
color: #fff;
}
.menu-bar .fa{
margin-right: 10px;
}

.active ,.menu-bar ul li:hover{
background: #2bab2b;
border-radius: 3px;
}
.sub-menu-1
{
display: none;
}
.menu-bar ul li:hover .sub-menu-1
{
display: block;
position: absolute;
background: rgb(0,100,0);
margin-top:15px;
margin-left: -15px;

}

.menu-bar ul li:hover .sub-menu-1 ul 
{
display: block;
margin: 10px;

}

.menu-bar ul li:hover .sub-menu-1 ul li
{
width: 200px;
padding: 10px;
border-bottom: 1px dotted #fff;
background: transparent;
border-radius: 0;
text-align: left;
}

.menu-bar ul li:hover .sub-menu-1 ul li:last-child
{
border-bottom: none;
}

.menu-bar ul li:hover .sub-menu-1 ul li a:hover
{
color:#b2ff00;
}



</style>

<!-- Default box -->
<div class="card" >
	<div class="menu-bar">
		<ul>
			<li><a href="#"><i class="fa fa-user"></i>Masters</a>
				<div class="sub-menu-1">
					<ul>
						<li><a id="2" onClick="moreOption(this.id)">Account Master</a></li>
						<li><a id="3" onClick="moreOption(this.id)">Asset & Liability List</a></li>
						<li><a id="4" onClick="moreOption(this.id)">Profit & Loss List</a></li>
						<li><a id="5" onClick="moreOption(this.id)">Ledger Master</a></li>
						<li><a id="6" onClick="moreOption(this.id)">Bank Master</a></li>
					</ul>   
				</div>
			</li>
			<li><a href="#"><i class="fa fa-user"></i>Transactions</a>
				<div class="sub-menu-1">
					<ul>
						<li><a id="11" onClick="moreOption(this.id)">New Voucher</a></li>
						<li><a id="12" onClick="moreOption(this.id)">Voucher List</a></li>
					</ul>   
				</div>
			</li>
			<li><a href="#"><i class="fa fa-user"></i>Reports</a>
				<div class="sub-menu-1">
					<ul>
						<li><a id="31" onClick="moreOption(this.id)">Daybook</a></li>
					</ul>   
				</div>
			</li>
		</ul>
	</div>
	<div id="main_page" >
	</div>
</div>
<!-- /.card -->



<script>
function moreOption(id)
{
	if(id==2)
	{
		$.ajax({
		url:'Accounts/accounts_page.php',
		success:function(data){
		$('#main_page').html(data);
		}
		});    
	}
	else if(id==3)
	{
		$.ajax({
		url:'Accounts/accounts_asset_liablities_page.php',
		success:function(data){
		$('#main_page').html(data);
		}
		});    
	}
	else if(id==4)
	{
		$.ajax({
		url:'Accounts/accounts_profit_loss_page.php',
		success:function(data){
		$('#main_page').html(data);
		}
		});    
	}
	else if(id==5)
	{
		$.ajax({
		url:'Accounts/ledger_page.php',
		success:function(data){
		$('#main_page').html(data);
		}
		});    
	}
	else if(id==6)
	{
		$.ajax({
		url:'Accounts/accounts_bank_page.php',
		success:function(data){
		$('#main_page').html(data);
		}
		});    
	}

	else if(id==11)
	{
		$.ajax({
		url:'Accounts/new_voucher/voucher_cat.php',
		success:function(data){
		$('#main_page').html(data);
		}
		});    
	}
	else if(id==12)
	{
		$.ajax({
		url:'Accounts/new_voucher/voucher_home.php',
		success:function(data){
		$('#main_page').html(data);
		}
		});    
	}
}
</script>