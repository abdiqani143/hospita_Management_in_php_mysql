<?php include_once ("controller.php"); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form In PHP</title>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
<div id="container">
<h2>Login</h2>
        <p>It's quick and easy.</p>
        <div id="line"></div>
        <form action="log.php" method="POST" autocomplete="off">
        <?php
            if($errors > 0){
                foreach($errors AS $displayErrors){
                ?>
                <div id="alert"><?php echo $displayErrors; ?></div>
                <?php
                }
            }
            ?>
            <input type="text" class="username" name="txtuser" placeholder="Enter User-Name"><br>
            <input type="password" nclass="password" name="txtpass" placeholder="Enter a Password"><br>
            <input type="submit" name="login" value="Login">
            <a href="forgot.php" id="forgot">Forgot Your Password?</a>
            <h3>Don't hava a account? <a href="registration.php">Sign Up</a></h3>
        </form> 
</div>    
</body>
</html>