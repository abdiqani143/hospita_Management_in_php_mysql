
<!doctype html>
<html class="no-js" lang="en">
   
   <head>
       <?php include"file/head.php"; ?>
       <!-- <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css"> -->
       <link rel="stylesheet" type="text/css" href="file/data.css">

      <!--  <style type="text/css">
        table{width: 100%}
        table,th,td{border:1px solid blue;border-collapse: collapse;}
        th,td{padding: 8px; text-align: center;}
        thead{background-color: teal; color: white;}
        tbody tr:nth-child(even){
            background-color: lightpink;
        }
        tbody tr:hover{background-color: green;}
    </style> -->
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
                <?php include"Modal/PrescriptionModal.php"; ?>
                <?php include"file/sidebar.php"; ?>
                <div class="main-content">
                    
                    
                        <p style="margin-left: 12%;">
      <select style="width:200px; height:40px" id="patient">
          <option selected disabled value="">Select Visit</option>
          <?php $co->FillCombo("SELECT `Bukan` , `Bukan` FROM `patient_view`");?>
      </select>

       <input type="Submit" value="Show All" id="all" class="btn btn-success"> &#160; &#160;
       <input type="Submit" value="Print" id="print" class="btn btn-info" >
      
   </p>
                      <!--   <h1>hello</h1> -->
        
                       
                   
                    <div id="divTable" style="width: 100%;"></div>
                  
                </div>

               

                <footer class="footer">
                   <?php include"file/footer.php"; ?>
                </footer>
                
            </div>
        </div>
        
        
       <!--  <script src="file/https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="file/https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script> -->
         <script src="file/jquery.js"></script>
        <script src="file/dataTable.js"></script>
        <script src="file/jQuery.print.js"></script>


      
       <?php include"file/scripts.php"; ?>

       <script >

 $(document).ready(function() {
    $('#example').DataTable();
    $("#divTable").load("reports/patients_report_all.php");

} );

 

  

 //.......................

 $("#print").click(function(){
    $("#divTable").print();
 })
 // ------------------------------------
 $("#all").click(function(){
    $("#divTable").load("reports/patients_report_all.php");
 })
 // ................Start Statement 1......./
 $("#patient").change(function(){
    var name=$(this).val();
    $.post("reports/Statement.php","name="+name,function(res){
       $("#divTable").html(res); 
    })
 })
 // .....End Statement 1.....//
 
// ......... Statement 2
 $("#patient").change(function(){
    var name=$(this).val();
    $.post("reports/dayax.php","name="+name,function(res){
       $("#divTable").html(res); 
    })
 })
 // .....End Statement 2.....//


       </script>

    </body>
</html>
