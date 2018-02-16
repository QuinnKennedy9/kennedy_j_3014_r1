<?php

	function getlastlogin (){
		include('connect.php');
		$loginquery = "SELECT slogin_date FROM tbl_slogins ORDER BY  slogin_id DESC LIMIT 1;";
		$login = mysqli_query($link, $loginquery);
		return $login;
	}

?>
