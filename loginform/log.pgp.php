<?php 
session_start();
$user=$_REQUEST['txtuser'];
$pass=$_REQUEST['txtpass'];
$sql="select * from login where username='$user' and password='$pass'";
include "config.php";
$co->setConnect();
$res=$co->db->query($sql);
if($row=$res->fetch_array(MYSQLI_ASSOC)){
	$_SESSION['id']=$row['id'];
	$_SESSION['username']=$row['username'];
	header("location:theme/index.php");
}
else
	echo "invalid username or password";
?>