<?php include "../file/config.php" ;
$co->setConnect();
?>
<!DOCTYPE html>
<html>
<head>
<title>Patient Report</title>
<style type="text/css">
	table{width: 100%}
	table,th,td{border:1px solid blue; border-collapse: collapse;}
	th,td{padding: 4px; text-align: center;} 
	thead{background-color: gray; color: white}
</style>
 <style>
    .header img{
      width: 100%;
      height: 150px; 
      margin-top: 10px;
    }
    th,td{padding: 6px; text-align: center;} 
    body{
      background-color: #f3f4f5;
    }
    .container{
      background-color: white;
      width: 100%;
      margin: auto;
      /*height: 900px;*/
    }
  </style>
  <!-- <link rel="stylesheet" href="bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css"> -->

</head>

<body>
<div class="container">
  <div class="header">
    <img src="reciepts.jpg">
  </div>	
	<table id="example" class="table table-striped table-bordered table-condensed" >
		<br>
		 <!-- <tr><h6 class="text-center"><b>All REPORT</b></h6></tr> -->
		<thead>
		<tr><th>NO</th><th>Bukaan</th><th>Account_Name</th><th>Money</th><th>Tarikhda</th><</tr>
		</thead>
		<tbody>
			<?php 
				$sql=mysqli_query($co->db,"SELECT * FROM `receipt_view`"); 
				while ($row=mysqli_fetch_array($sql)) {
					?>
					<tr>
						<td><?php echo $row[0]; ?></td>
						<td><?php echo $row[1]; ?></td>
						<td><?php echo $row[2]; ?></td>
						<td><?php echo $row[3]; ?></td>
						<td><?php echo $row[4] ;?></td>
						
						
					</tr>
				<?php
				}
			 ?>
		</tbody>
	</table>
<h4>Signature:__________________________________</h4>
</div>
<script src="bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
</body>

<!-- ----------------------------------------------------------------------------------------- -->


</html>