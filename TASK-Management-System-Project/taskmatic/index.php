<?php
require 'authentication.php'; // admin authentication check 

// auth check
if(isset($_SESSION['admin_id'])){
  $user_id = $_SESSION['admin_id'];
  $user_name = $_SESSION['admin_name'];
  $security_key = $_SESSION['security_key'];
  if ($user_id != NULL && $security_key != NULL) {
    header('Location: task-info.php');
  }
}//  Author Name: Mayuri K. 
 // for any PHP, Codeignitor, Laravel OR Python work contact me at mayuri.infospace@gmail.com  
 //Visit website : www.mayurik.com

if(isset($_POST['login_btn'])){
 $info = $obj_admin->admin_login_check($_POST);
}

$page_name="Login";
include("include/login_header.php");

?>
<div class="ad-auth-wrapper">

		<div class="well col-md-6" style="position:relative;">
			<div class="row" style="
">
				<div class="col-md-6">
					<img src="assets/img/Taskko.png" width="90%" style="margin-top: 90px;">
			</div>
	<div class="col-md-6">
			<form class="row " action="" method="POST">
			  <div class="form-heading">
			
			    <h2 class="text-left">Login Panel</h2>
			    <p class="text-left">Task Management System by Mayuri K.</p>
			  </div>
			  
			  <!-- <div class="login-gap"></div> -->
			  <?php if(isset($info)){ ?>
			  <h5 class="alert alert-danger"><?php echo $info; ?></h5>
			  <?php } ?>
			  <div class="input-group form-group ">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
    <input  type="text" class="form-control" name="username" placeholder="Username">
  </div>
			 <!--  <div class="form-group">
			    <input type="text" class="form-control" placeholder="Username" name="username" required/>
			  </div> -->
			  <div class="input-group form-group" ng-class="{'has-error': loginForm.password.$invalid && loginForm.password.$dirty, 'has-success': loginForm.password.$valid}">
    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
    <input  type="password" class="form-control" name="admin_password" placeholder="Password">
  </div>
			 <!--  <div class="form-group" >
			    <input type="password" class="form-control" placeholder="Password" name="" required/>
			  </div> -->
			  <div class="text-left">
			  <button type="submit" name="login_btn" class="btn btn-primary ">Login</button>
			</div>
			</form>
		</div>
		</div>
		</div>
	</div>
<!-- 
//  Author Name: Mayuri K. 
 // for any PHP, Codeignitor, Laravel OR Python work contact me at mayuri.infospace@gmail.com  
 //Visit website : www.mayurik.com -->
<?php

include("include/footer.php");

?>
