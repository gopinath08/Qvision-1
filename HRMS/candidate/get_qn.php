<?php
$roundid=$_REQUEST['id'];
$sql=$con->query("seelct * from interview_rounds where id='$roundid'");
$fet=$sql->fetch();
$roundname=$fet['name'];
if($roundname="Assessment")
{
	?>
	<tr>
<td> </td>
 <td colspan="2">
		<select class="form-control" id="qn_type" name="qn_type" onchange="get_qn(this.value)" >
		<!--?php 
		
		$qns=$con->query("SELECT * FROM question_name_master ");
		$qndis = $qns->fetch(PDO::FETCH_ASSOC)
		?-->
		<option value="">Select round</option>
		<?php $stmt22 = $con->query("SELECT * FROM question_name_master where status=1");
		while ($row22 = $stmt22->fetch()) 
		{
		?>
		<option value="<?php echo $row22['id'];?>"> <?php echo $row22['name'];?></option>
		<?php 
		}
		?>
		</select>
		</td>
</tr>
<?php	
}

else
{
	?>
	<tr>
<td> </td>
 <td colspan="2">
		<select class="form-control" id="qn_type" name="qn_type" onchange="get_qn(this.value)" >
		<!--?php 
		
		$qns=$con->query("SELECT * FROM question_name_master ");
		$qndis = $qns->fetch(PDO::FETCH_ASSOC)
		?-->
		<option value="">Select round</option>
		<?php $stmt22 = $con->query("SELECT * FROM interview_rounds_mapping where status=1 and round_id='$roundid'");
		while ($row22 = $stmt22->fetch()) 
		{
		?>
		<option value="<?php echo $row22['id'];?>"> <?php echo $row22['person_name'];?></option>
		<?php 
		}
		?>
		</select>
		</td>
</tr>
<?php
}
?>