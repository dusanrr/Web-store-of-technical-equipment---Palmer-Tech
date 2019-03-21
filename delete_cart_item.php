<?php session_start();

	include("includes/connection.php");

	$azabrisanje = $_GET['id'];
	$query = "delete from korpa where artikal_id='$_GET[aid]'";
	$conn->exec($query);
	$_SESSION['ps'] = "Item successfully deleted from cart.";
	header("Location: korpa.php");

?>
