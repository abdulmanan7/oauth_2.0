<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="robots" content="noindex">

	<title>Getting Access Token</title>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
</head>

<body>
	<div class="container">
		<div class="col-sm-6">
			<form action="<?=base_url('clients/request_key')?>" method="POST" role="form">
				<legend>Get Authorized !</legend>
				<div class="help-block">* App Name must be unique</div>
				<div class="form-group">
					<label for="">Email</label>
					<input name="username" type="text" class="form-control" placeholder="Enter Register Email">
				</div>
				<div class="form-group">
					<label for="">Password</label>
					<input name="password" type="password" class="form-control" placeholder="Enter Password">
				</div>
				<div class="form-group">
					<label for="">App Name</label>
					<input name="app_name" type="text" class="form-control" placeholder="Enter App Name">
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
			<?php if ($status == 1): ?>
				<br>
				<p class="text-danger"><?=$message?></p>
				<p>Your APP KEY: <code><?=$app_key?></code></p>
				<p>Your Secret KEY: <code><?=$secret_key?></code></p>
				<div class="panel panel-default">
					<div class="panel-body">
						<form action="<?=base_url('clients/test')?>" role="form">
							<legend>Test your api</legend>

							<div class="form-group">
								<label for="">App key</label>
								<input type="text" name="app_key" value="<?=$app_key?>" class="form-control" id="app_key" placeholder="Enter your app key">
							</div>
							<button type="submit" id="submitGetApiKey" class="btn btn-primary">TEST!</button>
						</form>
					</div>
				</div>
			<?php endif?>
		</div>
		<div class="col-sm-6">
			<h4>Genral Information</h4>
			<div class="panel panel-primary">
	<!-- <div class="panel-heading">
</div> -->
<div class="panel-body">
	<ul> <a href=""></a>
		<li>In order to get Access Token you must have default credential. or <a href="<?=base_url('registration')?>">Sign up</a> to get default credential</li>
		<li>After Entering your credentail you will get access token with default grant type "Get" you can contact Admin for higher Grant(like add , update ,delete) </li>
		<li>Custom Header : X-API-KEY e.g to set header in php :<br>
			<code>$header_data = array(<br>
				"Content-Type: application/json",<br>
				"Accept: application/json",<br>
				"X-API-KEY:3ecbcb4e62a00d2bc58080218a4376f24a8079e1",<br>
				"X-UTC:" . $utc,<br>);</code>
			</li>
			<li><a href="#">Documentation on how to use</a></li>
		</ul>
	</div>
</div>
			<div class="panel panel-primary">
<div class="panel-body">
<div class="help-block">API Response...</div>
	<p id="desplay-block"></p>
</div>
</div>
</div>
</div>
<script   src="https://code.jquery.com/jquery-1.12.4.js"   integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="   crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<script>
	$("#submitGetApiKey").click(function(){
		event.preventDefault();
		$.ajax({
			url: "<?=base_url()?>"+"clients/test/",
        // crossDomain: true,
        type: "GET",
        dataType: "html",
        data:{'app_key':$('#app_key').val()},
    }).always(function(rdata){
    	$('#desplay-block').text(rdata);
    });
});
</script>
</body>
</html>