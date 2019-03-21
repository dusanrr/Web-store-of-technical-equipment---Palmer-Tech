<?php session_start();

		$_SESSION=array();		//session_destroy();
		$_SESSION['ps'] = "You are successfully logged out.";
		header("location:index.php");

?>
