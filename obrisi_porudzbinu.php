<?php
	session_start();

	include("includes/connection.php");

	$nzb = $_GET['narudzbinaid'];
	$query = "delete from narudzbine where id='$nzb' and korisnik_id='$_SESSION[id_korisnika]'";
	$conn->exec($query);
	$_SESSION['ps'] = "Order successfully deleted.";
	header("Location: index.php");
?>
