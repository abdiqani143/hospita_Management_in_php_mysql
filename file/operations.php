<?php 
include "config.php";
// echo $co->generateSQL($_REQUEST);
 $co->setSQL($co->generateSQL($_REQUEST));
?>