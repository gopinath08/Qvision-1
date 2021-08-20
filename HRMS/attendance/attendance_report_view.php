<?php
	require '../../connect.php';

	$from_date = $_REQUEST['from_date'];
	$to_date = $_REQUEST['to_date'];
	$month = $_REQUEST['month'];
	$department_name = $_REQUEST['department_name'];
	
	class attendance_report
	{
		public $from_date;
		public $to_date;
		public $month;
		public $department_name;
		
		function Daily_Report($con,$from_date,$to_date,$month,$department_name)
		{
			$output = '<table class="dataTables-example table table-striped table-bordered table-hover" id="example1">
						<thead>
						<th>S.No</th>
						<th>Holiday Name</th>
						<th>Date</th>
						<th>Year </th>
						<th>Status</th>
						<th>Action</th>
						</thead>
						<tbody>';
			
			$attend_Daily_report_sql = $con->query("SELECT * FROM holiday_master");
			$n=1;
			while($attend_Daily_report_res = $attend_Daily_report_sql->fetch(PDO::FETCH_ASSOC))
			{
				$output .= '<tr>
							<td>'.$n.'</td>
							<td>'.$attend_Daily_report_res['leave_name'].'</td>
							<td>'.$attend_Daily_report_res['leave_date'].'</td>
							<td>'.$attend_Daily_report_res['year'].'</td>
							</tr>';
							$n++;
			}
			$output .= '</tbody>
						</table>
						</div>
						</div>
						</div>
						</div>
						</div>';
				
			return $output;
		}
	}
	
	$obj = new attendance_report();	
	$obj->Daily_Report($con,$from_date,$to_date,$month,$department_name)
	
	?>
	
	<div class="container-fluid">
	<br>
	<div class="row content">
	<div class="col-lg-12">
	<div class="panel panel-default">
	<div class="panel-heading">Daily_Report</div>
	<div class="panel-body">
	<div class="table-responsive">
	<?php
		echo $obj->Daily_Report($con,$from_date,$to_date,$month,$department_name);
	?>	
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	
	