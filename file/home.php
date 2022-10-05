<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
</head>
<body >
<div class="container-fluid">
                        <div class="row clearfix">
                            
                            <!-- imprestion, goal, impect start -->
                            <div class="col-xl-3 col-md-12">
                                <div class="card comp-card">
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col">
                                                <h6 class="mb-25"><h1>Employee</h1></h6>
                                                <h3 class="fw-700 text-blue">
                             <?php
                           require"dbconnection.php";
                            $query = "SELECT em_no FROM employee ORDER BY em_no";  
                            $query_run = mysqli_query($connection, $query);
                            $row = mysqli_num_rows($query_run);
                            echo '<h2>  '.$row.'</h2>';
                        ?>
                                                   
                                                </h3>
                                                
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-users bg-blue"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                           <div class="col-xl-3 col-md-12">
                                <div class="card comp-card">
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col">
                                                <h6 class="mb-25"><h1>Patient</h1></h6>
                                                <h3 class="fw-700 text-green">
                                                   <?php
                           require"dbconnection.php";
                            $query = "SELECT p_no FROM patient ORDER BY p_no";  
                            $query_run = mysqli_query($connection, $query);
                            $row = mysqli_num_rows($query_run);
                            echo '<h2>  '.$row.'</h2>';
                        ?>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-tags bg-green"></i>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-12">
                                <div class="card comp-card">
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col">
                                                <h6 class="mb-25"><h1>Visit</h1></h6>
                                                <h3 class="fw-700 text-yellow">
                                               <?php
                           require"dbconnection.php";
                            $query = "SELECT v_no FROM visit ORDER BY v_no";  
                            $query_run = mysqli_query($connection, $query);
                            $row = mysqli_num_rows($query_run);
                            echo '<h2>  '.$row.'</h2>';
                        ?>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-hand-paper bg-yellow"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-12">
                                <div class="card comp-card">
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col">
                                                <h6 class="mb-25"><h1>Checkment</h1></h6>
                                                <h3 class="fw-700 text-yellow">
                                                <?php
                           require"dbconnection.php";
                            $query = "SELECT ck_no FROM checkment ORDER BY ck_no";  
                            $query_run = mysqli_query($connection, $query);
                            $row = mysqli_num_rows($query_run);
                            echo '<h2>  '.$row.'</h2>';
                        ?>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-hand-paper bg-yellow"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- imprestion, goal, impect end -->
                        </div>
                       
                    </div>
</body>
</html>