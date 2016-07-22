<!DOCTYPE html>
<html class='no-js' lang='en'>
	<head>
		<meta charset='utf-8'>
		<meta content='IE=edge,chrome=1' http-equiv='X-UA-Compatible'>
		<title>Registration</title>
		<meta content='lab2023' name='author'>
		<meta content='' name='description'>
		<meta content='' name='keywords'>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	</head>
	<body class='login'>
		<!-- <div class='wrapper'> -->
		<div class="container-fluid">
			<!-- <div class='row'>
				<div class='col-lg-12'>
					<div class='brand text-center'>
						<h1>
						<div class='logo-icon'>
							<img alt="logo here" class="logo-img"/>
						</div>
						Registration
						</h1>
					</div>
				</div>
			</div> -->
			<section class="container registration">
				<div class="container-page">
					<div class="col-md-6">
					<?php echo isset($message) ? $message : '';?>
						<form action="<?php echo base_url('registration/sign_up');?>" method="POST" role="form">
							<legend><h3 class="dark-grey">Registration</h3></legend>
							<div class="form-group col-lg-12">
								<label>Username</label>
								<?php echo form_input($username);?>
							</div>
							<div class="form-group col-lg-6">
								<label>Password</label>
								<?php echo form_input($password);?>
							</div>
							<div class="form-group col-lg-6">
								<label>Repeat Password</label>
								<?php echo form_input($password_confirm);?>
							</div>
							<div class="form-group col-lg-6">
								<label>Email Address</label>
								<?php echo form_input($email);?>
							</div>
						<div class="col-md-6 info-block">
							<h6 class="dark-grey">By pressing register you agree with our term and conditions</h6>
							<button type="submit" class="btn btn-primary">Register</button>
						</div>
						</div>
					</form>
				</div>
			</section>
		</div>
		<!-- </div> -->
		<!-- Footer -->
		<!-- Javascripts -->
	</body>
</html>