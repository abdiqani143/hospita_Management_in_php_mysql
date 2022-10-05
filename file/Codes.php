 <?php 
class Codes{
public $result,$db;
public function setConnect(){
	try{
		$this->db=new mysqli("localhost","root","","hospital");
		// $db?"connected!!":"failed";
	}catch(Exception $ex){
		die($ex->getMessage());
	}
}// end connection method
public function generateSQL($array){
	$sql="call ";
	$tiro=count($array);
	$i=1;
	foreach ($array as $key => $value) {
		if($i==1)
			$sql.=$value."(";
		else if($i==$tiro)
			$sql.="'$value')";
		else 
			$sql.="'$value',";
		$i++;
	}
	return $sql;
}// end of genrate method
public function setSQL($sql){
	try{
		$this->setConnect();
		$r=$this->db->query($sql);
		//echo $r==1?"inserted":"failed";
		if($row=$r->fetch_array(MYSQLI_NUM))
			echo $row[0];
		else
			echo "failed";
		$this->db->close();
	}catch(Exception $ex){
		die($ex->getMessage());
	}
}// end of setSQL
public function viewTable($sql){
	try{
		$this->setConnect();
		$this->result=$this->db->query($sql);
		$fields=$this->result->fetch_fields();
		?>
		<table id="example" class="table table-striped table-bordered table-condensed" 
		style="width:100%; ">
			<thead>
				<tr>
					<?php foreach ($fields as $key => $value): ?>
						<th><?php echo $value->name ?></th>
					<?php endforeach ?>
					<td >Edit</td>
					<td >Delete</td>
				</tr>
				<tbody>
					<?php 
						while($row=$this->result->fetch_array(MYSQLI_NUM)){
					?>
					<tr>
						<?php foreach ($row as $key => $value): ?>
							<td><?php echo $value; ?></td>
						<?php endforeach ?>
						<td>
<button type="button"  class="btn btn-success btn-xs glyphicon glyphicon-edit btnEdit" update="<?php echo $row[0]; ?>"><span class="text-s">Edit</span></button>                         
                  </td>

				<td>                            
 <button type="button"  class="btn btn-danger btn-xs glyphicon glyphicon-edit btnDelete" delete="<?php echo $row[0];?>"><span class="text-s">Delete</span></button> 
                  </td>

					</tr>
				<?php }// end of while ?>
				</tbody>
			</thead>
		</table>
        <div id="msg" style="margin: 10px"></div> 

		<?php
		$this->db->close();
	}catch(Exception $ex){
		die($ex->getMessage());
	}
}
public function fillCombo($sql){
	?>
		
	<?php
	try{
		$this->setConnect();
		$res=$this->db->query($sql);
		while($row=$res->fetch_array(MYSQLI_NUM)){
			?>
				<option value="<?php echo $row[0]; ?>"><?php echo $row[1]; ?></option>
			<?php
		}// end of while loop
	}catch(Exception $ex){
		die($ex->getMessage());
	}
}
public function search($sql){
	try{
		$this->setConnect();
		$this->result=$this->db->query($sql);
		if($row=$this->result->fetch_array(MYSQLI_ASSOC)){
			foreach ($row as $key => $value) {
				echo $value.",";
			}
		}
	}catch(Exception $ex){
		die($ex->getMessage());
	}

}
}
?>