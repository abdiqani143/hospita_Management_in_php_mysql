<!--  -->

<?php 
session_start();
if(isset($_SESSION['id'])){
?>
<!doctype html>
<html class="no-js" lang="en">
   
   <head>
       <?php include"file/head.php"; ?>
   </head>

    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <div class="wrapper">
            <header class="header-top" header-theme="light">
                <?php include"file/header.php"; ?>
            </header>

            <div class="page-wrap">
                <?php include"file/sidebar.php"; ?>
                <div class="main-content">
                    <?php include"file/home.php"; ?>
                </div>

               

                <footer class="footer">
                   <?php include"file/footer.php"; ?>
                </footer>
                
            </div>
        </div>
        
        
        

      
       <?php include"file/scripts.php"; ?>

    </body>
</html>

<?php 
}
else
    echo "tuug bax";
?>