<?php
  @session_start();
  if (isset($_SESSION['username']) && $_SESSION['username']==true) {
    
  } else {
    echo "<script>window.location = 'index.php'</script>";
  }
?>