<?php
	$_SESSION["failedattempts"] = 0;
	function logIn($username, $password) {
		require_once('connect.php');
		$username = mysqli_real_escape_string($link, $username);
		$password = mysqli_real_escape_string($link, $password);
		$loginstring = "SELECT * FROM tbl_users WHERE user_name='{$username}' AND user_pass='{$password}'";
		$user_set = mysqli_query($link, $loginstring);
		if(mysqli_num_rows($user_set)){
			$founduser = mysqli_fetch_array($user_set, MYSQLI_ASSOC);
			$id = $founduser['user_id'];
			$_SESSION['user_id'] = $id;
			$_SESSION['user_name']= $founduser['user_fname'];
			date_default_timezone_set('America/Toronto');
		  $lasttime = date("d/m/y H:i:s");
			$update = "INSERT INTO tbl_slogins (slogin_name) VALUES ('{$username}')";
			mysqli_query($link, $update);
			redirect_to("admin_login.php");
		}else{
			$message = "That user doesn't exist";
			$_SESSION["failedattempts"] = $_SESSION["failedattempts"] + 1;
			if($_SESSION["failedattempts"] >= 3){
				redirect_to("lockedout.html");
			}
			return $message;
		}

		mysqli_close($link);
	}

?>
