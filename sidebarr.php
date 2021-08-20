 <?php
$username=$_SESSION['username'];
?>
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
	 <img src="dist/img/qlogo.png" alt="blogo Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
     
      <span class="brand-text font-weight-light"><b>QVISION</b></span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
          </li>
			<?php
			$userrole=$_SESSION['userrole'];
			$sql = $con->query("SELECT zmsm.id,zmsm.menu_name,zmsm.call_method FROM z_masters_menu zmsm join z_role_detail zrd on zrd.menu_id=zmsm.id WHERE zrd.code='$userrole'  and zrd.view_only='1' AND zrd.edit_only='1' AND zrd.all_only='1'group by menu_name");

			while($row = $sql->fetch(PDO::FETCH_ASSOC))
			{
			$menuid=$row['id'];
			?>

			
			
			<li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                <?php echo $row['menu_name']; ?>
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
			
			<?php 
			$sql2 = $con->query("SELECT zmsm.name,zmsm.call_method FROM z_masters_sub_menu zmsm join z_role_detail zrd on zrd.submenu_id=zmsm.id WHERE zmsm.status='1' and zrd.code='$userrole' and zrd.menu_id='$menuid' and zrd.view_only='1' AND zrd.edit_only='1' AND zrd.all_only='1'");

			while($res = $sql2->fetch(PDO::FETCH_ASSOC))
			{ 
			?>  
				
				<li class="nav-item">
				<a onclick="<?php echo $res['call_method']; ?>" class="nav-link">
				<i class="far fa-circle nav-icon"></i>
				<?php echo $res['name']; ?>
				</a>
				</li>
				<?php
			}
			?>
			</ul>			
			</li>	
			 
			<?php
			}
			
			?>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
  
  <script>
	
	function accounts_master()
	{
		$.ajax({
		type:"POST",
		url:"/Qvision/Accounts/main.php",
		success:function(data){
		  $("#page_loader").html(data);
		}
		})
	} 
  
	function password_masters()
	{
		$.ajax({
		type:"POST",
		url:"Qvision/password/password_master/password_master.php",
		success:function(data){
		  $("#main_content").html(data);
		}
		})
	}
function application()
{
	$.ajax({
    type:"POST",
    url:"Qvision/Recruitment/new.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function feedback()
{
	$.ajax({
    type:"POST",
    url:"Qvision/interview_feedback/new.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function user_role()
{
	$.ajax({
    type:"POST",
     url:"Qvision/user_role/role.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function ctc_approval()
{
	$.ajax({
    type:"POST",
    url:"Qvision/ctcapproval/CTC_view.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function interview_reports()
{
	$.ajax({
    type:"POST",
    url:"Qvision/interviewreports/interviewreports.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function department_reports()
{
	$.ajax({
    type:"POST",
    url:"Qvision/departmentreports/departmentreports.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function ctc_reports()
{
	$.ajax({
    type:"POST",
    url:"Qvision/ctc_reports/ctc_reports.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function role()
{
	$.ajax({
    type:"POST",
     url:"Qvision/role/role.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function staff_report()
{
	$.ajax({
    type:"POST",
    url:"Qvision/staff_report/staff_list_report.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function leave_master()
{
	$.ajax({
    type:"POST",
    url:"Qvision/leave_master/main.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function scale_master()
{
	$.ajax({
    type:"POST",
    url:"scale_master/main.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
 function leave_management()
{
	$.ajax({
    type:"POST",
    url:"/Qvision/Leave_Management/main.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
} 
 function emp_leave()
{
	$.ajax({
    type:"POST",
    url:"Qvision/employees_leave/main.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
} 
function employess()
{
	$.ajax({
    type:"POST",
    url:"Qvision/employees/main.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
} 
function employee_allowance()
{
	$.ajax({
    type:"POST",
    url:"Qvision/departmentreports/departmentreports.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function addition_allowance()
{
	$.ajax({
    type:"POST",
    url:"Qvision/addittion_allowance/main.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function employee_payroll()
{
	$.ajax({
    type:"POST",
    url:"Qvision/departmentreports/departmentreports.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function question_managements()
{ 

//alert("bala");
$.ajax({
    type:"POST",
    url:"Qvision/Question_Management/new.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })

}
function candicate_results()
{ 

//alert("bala");
$.ajax({
    type:"POST",
    url:"Qvision/Question_Management/candicate_results.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })

}
function question()
{
	//alert("gopi");
$.ajax({
    type:"POST",
    url:"Qvision/Question_Management/aptitude.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function candidate_form()
{
	$.ajax({
    type:"POST",
    url:"Qvision/candidate/candidate_form.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}

function department_master()
{
	$.ajax({
    type:"POST",
    url:"Qvision/masters/department_master/department_master.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}

function devision_master()
{
	$.ajax({
    type:"POST",
    url:"Qvision/masters/devision_master/devision_master.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}

function designation_master()
{
	$.ajax({
    type:"POST",
    url:"Qvision/masters/designation_master/designation_master.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function interview_rounds()
{
	$.ajax({
    type:"POST",
    url:"Qvision/masters/interview_rounds/interview_rounds.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function interview_rounds_mapping()
{
	$.ajax({
    type:"POST",
    url:"Qvision/masters/interview_rounds_mapping/interview_rounds_mapping.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function department_mapping()
{
	
	$.ajax({
    type:"POST",
    url:"Qvision/masters/department_mapping/department_mapping.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function company_master()
{
	$.ajax({
    type:"POST",
    url:"Qvision/masters/company_master/company_master.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
} 
function candidate_details()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/applicationform/view.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
//assesment 
function assesment_question()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/assesment_question/assesment_question.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function question_name()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/assesment/question_name.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function section_master()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/assesment/section_master.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function assessment_employee()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/assessment_candidate/assessment_emp_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function emp_assessment_question()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/assesment_question/empwise_assesment_qn.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function assessment_result()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/assesment_question/candidate_results.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function Payoll_generation()
{  
	$.ajax({
    type:"POST",
    url:"payroll_process/payroll_generation.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}

function leaves()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/payroll/leaves.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function holidays()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/payroll/holiday.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function od()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/payroll/od.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function reports()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/payroll/payroll_reports.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function Payroll_close()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/payroll/payroll_close.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}

function deduction()
{  
	$.ajax({
    type:"POST",
    url:"deduction/main.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function Attendance()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/attendance/attendance.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function pay_slip()
{  
	$.ajax({
    type:"POST",
    url:"payroll_process/payslip/payslip_main.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function document_approve()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/Qvision/document_view_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function staff_list()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/Recruitment/staff/staff_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function staff_asset()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/Recruitment/staff_asset/staff_asset.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function staff_asset_master()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/Recruitment/staff_asset_master/staff_asset_master.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function hod()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/Recruitment/hod/hod.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function enquiry()
{  

	$.ajax({
    type:"POST",
    url:"Qvision/CRM/enquiry.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function cost_sheet_approval()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/CRM/cost_sheet_approval.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}

function client_master()
{
	$.ajax({
    type:"POST",
    url:"Qvision/masters/client_master/client_master.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
} 
function lead()
{  

	$.ajax({
    type:"POST",
    url:"Qvision/CRM/proposal.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function Cost_sheet()
{  

	$.ajax({
    type:"POST",
    url:"Qvision/BusinessProcess/quotation/cost_sheet_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function Cost_sheet_upload()
{  

	$.ajax({
    type:"POST",
    url:"Qvision/BusinessProcess/quotation/cost_sheet_upload_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function Cost_sheet_approve()
{  

	$.ajax({
    type:"POST",
    url:"Qvision/BusinessProcess/quotation/cost_sheet_view.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function Cost_sheet_revise()
{  

	$.ajax({
    type:"POST",
    url:"Qvision/BusinessProcess/quotation/costsheet_revise_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function Quotation()
{  

	$.ajax({
    type:"POST",
    url:"Qvision/BusinessProcess/quotation/quatation_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}

function Quotation_approve()
{  

	$.ajax({
    type:"POST",
    url:"Qvision/BusinessProcess/quotation/quotation_view.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function Quotation_send()
{  

	$.ajax({
    type:"POST",
    url:"Qvision/BusinessProcess/quotation/quotation_send_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function Quotation_revise()
{  

	$.ajax({
    type:"POST",
    url:"Qvision/BusinessProcess/quotation/quotation_revise_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function quotation_regenerate()
{  

	$.ajax({
    type:"POST",
    url:"Qvision/BusinessProcess/quotation/quotation_reg_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function interview_candidate_list()
{  

	$.ajax({
    type:"POST",
    url:"Qvision/candidate/candidate_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function Product_master()
{  

	$.ajax({
    type:"POST",
    url:"Qvision/masters/Product_master/product.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function service_master()
{  

	$.ajax({
    type:"POST",
    url:"Qvision/masters/Service_master/service.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function calls_master()
{  

	$.ajax({
    type:"POST",
    url:"Qvision/masters/Calls_master/calls.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}

function resource_master()
{  

	$.ajax({
    type:"POST",
    url:"Qvision/masters/Resource_master/resource.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}

function feedback_master()
{  

	$.ajax({
    type:"POST",
    url:"Qvision/masters/Feedback_master/feedback.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function vendor_master()
{  

	$.ajax({
    type:"POST",
    url:"Qvision/BusinessProcess/doller_vendor_master/vendor.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}

function resource_form()
{
	$.ajax({
    type:"POST",
    url:"Qvision/resource/resource_form/resource_form.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function resource_list()
{
	$.ajax({
    type:"POST",
    url:"Qvision/resource/resource_form/resource_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function jobdescription_form()
{
	$.ajax({
    type:"POST",
    url:"Qvision/Resource/jobdescription_form/jobdescription_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function job_description()
{
	$.ajax({
    type:"POST",
    url:"Qvision/masters/job_description/job_description_master.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function jobdescription_list()
{
	$.ajax({
    type:"POST",
    url:"Qvision/Resource/jobdescription_form/jobdescription_allocated_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function finance_po_approve()
{
	$.ajax({
    type:"POST",
    url:"Qvision/BusinessProcess/po_approval/po_approve_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function service_po_approve()
{
	$.ajax({
    type:"POST",
    url:"Qvision/BusinessProcess/po_approval/service_po_approve_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function marketing_po_approve()
{
	$.ajax({
    type:"POST",
    url:"Qvision/BusinessProcess/po_approval/marketing_po_approve_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function po_status()
{
	$.ajax({
    type:"POST",
    url:"Qvision/BusinessProcess/po_approval/po_status.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function po_upload()
{
	$.ajax({
    type:"POST",
    url:"Qvision/BusinessProcess/po_approval/po_upload.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}

function staff_resignation_form()
{
	$.ajax({
    type:"POST",
    url:"Qvision/Recruitment/staff_resignation/staff_resignation_form.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function staff_resignation_list()
{
	$.ajax({
    type:"POST",
    url:"Qvision/Recruitment/staff_resignation/staff_resignation_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function hr_resignation_approve()
{
	$.ajax({
    type:"POST",
    url:"Qvision/Recruitment/staff_resignation/hr_resignation_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function staff_resignation_status()
{
	$.ajax({
    type:"POST",
    url:"Qvision/Recruitment/staff_resignation/staff_resignation_status.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function candidate_reject_list()
{
	$.ajax({
    type:"POST",
    url:"Qvision/candidate/candidate_reject_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function candidate_qn()
{
	$.ajax({
		type:"POST",
		url:"Qvision/candidate/candidwise_assesment_qn.php",
		success:function(data)
		{
			$("#main_content").html(data);
		}
	})
}
function prefix_code()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/masters/Prefixcode_master/prefixcode.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function consultant_master()
{
	$.ajax({
    type:"POST",
    url:"Qvision/consultant_master/consultant.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function quotation_text()
{
	$.ajax({
    type:"POST",
    url:"Qvision/consultant_master/consultant.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}


function asset_master()
{
	$.ajax({
    type:"POST",
        type:"POST",
    url:"Qvision/masters/asset_master/asset.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function asset_form()
{
	$.ajax({
    type:"POST",
        type:"POST",
    url:"Qvision/assets/asset_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function sim_master()
{
	$.ajax({
    type:"POST",
        type:"POST",
    url:"Qvision/assets/sim_master/sim_master.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function sim_mapping()
{
	$.ajax({
    type:"POST",
        type:"POST",
    url:"Qvision/assets/sim_mapping/sim_mapping.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function staff_asset_allocate()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/Recruitment/staff_asset/staff_asset_allocate_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function staff_asset_accept()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/Recruitment/staff_asset/staff_asset_accept_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function staff_asset_approve()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/Recruitment/staff_asset/staff_asset_approve_list.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function staff_assets_view_md()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/Recruitment/staff_asset/staff_asset_list_md.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function staff_assets_return()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/Recruitment/staff_asset/staff_assets_return_hr.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function staff_assets_recollect()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/Recruitment/staff_asset/staff_assets_recollect.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function additional_activities()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/performance_analysis/additional_activities.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function performance_review()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/performance_analysis/performance_review.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function weekly_review()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/performance_analysis/weekly_review.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function site_master()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/masters/site_master/site_master.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}
function location_master()
{  
	$.ajax({
    type:"POST",
    url:"Qvision/masters/location_master/location_master.php",
    success:function(data){
      $("#main_content").html(data);
    }
  })
}

</script>