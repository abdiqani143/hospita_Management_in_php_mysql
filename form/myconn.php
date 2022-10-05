<?php

//Database Connection
$servername= "localhost";
$username = "root";
$password = "";
$databasename = "bd";

// Create connection

$conn = mysqli_connect($servername, $username, $password, $databasename);

if(!$conn)
{

 die("Connection failed: " . mysqli_connect_error());

}
echo "Connected successfully";
?>