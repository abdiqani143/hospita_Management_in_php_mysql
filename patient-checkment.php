<?php include"file/config.php"; ?>

<!doctype html>
<html class="no-js" lang="en">
   
   <head>
       <?php include"file/head.php"; ?>
       <!-- <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css"> -->
       <link rel="stylesheet" type="text/css" href="file/data.css">

       <style type="text/css">
        table{width: 100%}
        table,th,td{border:1px solid blue;border-collapse: collapse;}
        th,td{padding: 8px; text-align: center;}
        thead{background-color: teal; color: white;}
        tbody tr:nth-child(even){
            background-color: lightpink;
        }
        tbody tr:hover{background-color: green;}
    </style>
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
                <?php include"Modal/Patient-CheckmentModal.php"; ?>
                <?php include"file/sidebar.php"; ?>
                <div class="main-content">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#demoModal">Add-Patient-Checkment</button><br> <br>
                    <div class="container-fluid">
                      <!--   <h1>hello</h1> -->
                        <?php $co->viewTable("select * from patient_checkment_view") ?>
                       
                    </div>
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

      
       <?php include"file/scripts.php"; ?>

        <script >
         var id=null;
           $(document).ready(function() {
    $('#example').DataTable();
} );
                     // Start Insert //
 $(".bs").click(function(){
 
$.post("file/operations.php",$("#fmAdd").serialize()+"&oper=insert&id="+id, function(res){
  alert(res);
  window.location='patient-checkment.php';
receipts
});

});
           // End Inert//

             // Update //

$(".btnEdit").click(function(){
   id=$(this).attr("update");
    $("#editModal").modal('show');
    var sql="select * from patient_checkment where pc_no= '"+id+"' ";
    $.post("file/search.php","qry="+sql,function(res){

        var array=res.split(",");

       
        id=($.trim(res[0]));
        $("#txt1").val(array[1]);
        $("#txt2").val(array[2]);
        $("#txt3").val(array[3]);
        $("#txt4").val(array[4]);
        
        
        
        
       
    })

$(".bu").click(function(){
 
$.post("file/operations.php",$("#fmEdit").serialize()+"&oper=update&id="+id, function(res){
  alert(res);
  window.location='patient-checkment.php';

});

});

})
            //End Update //

             // Start Detele //
 $(".btnDelete").click(function(){
id=$(this).attr("delete");
 if (confirm("Are you Sure to permentely Delete!") == true) {
  
$.post("file/operations.php",$("#fmEdit").serialize()+"&oper=delete&id="+id, function(res){
  alert(res);
  window.location='patient-checkment.php';

});
  
    }
 })         

         //End Delete//
       </script>

    </body>
</html>
