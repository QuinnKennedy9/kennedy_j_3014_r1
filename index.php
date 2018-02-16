<?php
  require_once('admin/phpscripts/config.php');
  $ip = $_SERVER['REMOTE_ADDR'];
  if(isset($_POST['submit'])){
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		if($username !== "" && $password !== ""){
			$result = logIn($username, $password, $ip);
			$message = $result;
		}else{
			$message = "Please fill out the required fields.";
		}
	}

  date_default_timezone_set('America/Toronto');
  $thetime = date("H:i:s");
  $greeting = "";
  if($thetime > "17:00:00"){

    $greeting = "I hope you are having a good evening.";

  } elseif ("05:00:00" > $thetime && $thetime > "0:00:00"){

    $greeting = "I don't know why you need to log in so late but I assume it's very important.";

  } elseif ("12:00:00" > $thetime && $thetime > "05:00:00"){

    $greeting = "Good morning, I hope you have a good day.";

  } elseif ("17:00:00" > $thetime && $thetime > "12:00:00"){

    $greeting = "Good Afternoon.";

  }else {
    $greeting ="we are experiencing time related errors";
  }

  	$row=mysqli_fetch_array(getlastlogin());

 ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link rel="stylesheet" href="css/main.css">
</head>
<body>
  <div class="container">
  <h2 id="welcome">Welcome to the login page! </h2>
    <?php echo "<h2 id=\"greeting\"> {$greeting}</h2>"?>
    <?php echo "<h2 id=\"lasttime\"> The date and time of the last succesful login was {$row['slogin_date']}</h2>"?>
    <?php echo "<h2 id=\"message\"> {$message}</h2>"?>
    <form action="index.php" method="post">
		    <label>Username:</label>
		    <input type="text" name="username" value="" placeholder="User Name Goes Here">
		    <br>
		    <label>Password:</label>
		    <input type="password" name="password" value="" placeholder="Password Goes Here">
		    <br><br>
		    <input type="submit" name="submit" value="Sign In" id="submit">
	 </form>
  </div>
  <script src="js/main.js"></script>
</body>
</html>
