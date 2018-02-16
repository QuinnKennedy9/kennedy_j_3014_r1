<?php
	require_once('admin/phpscripts/config.php');
	confirm_logged_in();
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to your admin panel</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<div class="container">
	<?php echo "<h2>Welcome to the Admin Panel {$_SESSION['user_name']}</h2>
							<h3>There really isn't that much to do on this page</h3>"  ?>
	</div>
	<script src="js/main.js"></script>
</body>
</html>
