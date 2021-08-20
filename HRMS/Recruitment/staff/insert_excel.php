<?php
require '../../../connect.php';
 echo "hii";
         $file = $_FILES['file']['name'];
	  echo $path="/qvision/Qvision/recruitment/staff/".$file;
          $handle = fopen($file, "r");
          $c = 0;
          while(($filesop = fgetcsv($handle, 1000, ",")) !== false)
                    {
						echo $c;
						//echo"<pre>";print_r($filesop);
						if($c !=0)
						{
							$sq=$con->query("select * from staff_master where prefix_code='$filesop[1]' and emp_code='$filesop[2]' and status=1");
							$fet=$sq->fetch();
							
							if($fet)
							{
								$updat=$con->query("update staff_master set candid_id='$filesop[0]',emp_name='$filesop[3]',dep_id='$filesop[4]',div_id='$filesop[5]',design_id='$filesop[6]' where prefix_code='$filesop[1]' and emp_code='$filesop[2]' and status=1");
								echo "update staff_master set candid_id='$filesop[0]',emp_name='$filesop[3]',dep_id='$filesop[4]',div_id='$filesop[5]',design_id='$filesop[6]' where prefix_code='$filesop[1]' and emp_code='$filesop[2]' and status=1";
							}
							else
							{
								$ins=$con->query("insert into staff_master(prefix_code,emp_code,emp_name,status)values('$filesop[1]','$filesop[2]','$filesop[3]',1)");
								
							}
							
						}
						$c++;
					}
					
					if($ins)
					{
						?>
						<script>
						alert("insert succcessfully");
						staff_list();
						</script>						
						<?php 
					}
					else
					{	?>
						<script>
						alert("insert succcessfully");
						staff_list();
						</script>						
						<?php 
						
					}
					 
					?>