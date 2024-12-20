<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="icon" href="nvc.png">
	<style>
		body{
			margin-top:60px;
		}
	</style>
</head>
<body class="body-login">
	<?php include "inc/navbar.php";?>
    <div class="black-fill"><br /> <br />
    	<div class="d-flex justify-content-center align-items-center flex-column">
    	<form class="login" 
    	      method="post"
    	      action="req/login.php">

    		<div class="text-center">
    			<img src="nvc.png"
    			     width="100">
    		</div>
    		<h3>SIGN IN</h3>
    		<?php if (isset($_GET['error'])) { ?>
    		<div class="alert alert-danger" role="alert">
			  <?=$_GET['error']?>
			</div>
			<?php } ?>
		  <div class="mb-3">
		    <label class="form-label">Username</label>
		    <input type="text" 
		           class="form-control"
		           name="uname">
		  </div>
		  
		  <div class="mb-3">
		    <label class="form-label">Password</label>
		    <input type="password" 
		           class="form-control"
		           name="pass">
		  </div>

		  <div class="mb-3">
		    <label class="form-label">Sign In As</label>
		    <select class="form-control"
		            name="role">
		    	<option value="3">Student</option>
		    </select>
		  </div>

		  <button type="submit" class="btn btn-primary">Sign In</button>
		</form>
    	</div>
    </div>
    <script src="js/bootstrap.bundle.min.js"></script>		
</body>
</html>










