
<?php  include("includes/header.php"); ?>

<div class="py-5">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="card shadow">
          <div class="card-header">

            <h4>Register Form</h4>
          </div>
           <div class="card-body">
             <form action="">
  <div class="form-group">
    <label for="exampleInputEmail1">Name</label>
    <input type="text" class="form-control" id="exampleInputname1" aria-describedby="emailHelp" placeholder="Enter Name">
    
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Phone</label>
    <input type="number" class="form-control" id="exampleInputphone1" aria-describedby="emailHelp" placeholder="Enter Number">
    
  </div>
   <div class="form-group">
    <label for="exampleInputEmail1">Email</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">Confirm Password</label>
    <input type="password" class="form-control" id="exampleInputConfirmPassword1" placeholder="Confirm Password">
  </div>
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" name="register_btn" class="btn btn-primary">Submit</button>
  <a href="login.php">LogIn</a>
</form>
           </div>
        </div>
      </div>
    </div>
  </div>
</div>


<?php  include("includes/footer.php"); ?>