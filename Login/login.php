
<?php  include("includes/header.php"); ?>

<div class="py-5">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="card shadow">
          <div class="card-header">

            <h4>LogIn Form</h4>
          </div>
           <div class="card-body">
             <form action=" " >
 
   <div class="form-group">
    <label for="exampleInputEmail1">Email</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
    
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>

  
    <a href="forget.php">Forget Password</a>
     
 
   <a href="register.php">Sign Up</a>
      
  
</form>
           </div>
        </div>
      </div>
    </div>
  </div>
</div>


<?php  include("includes/footer.php"); ?>