<?php session_start();

	include("includes/connection.php");

	$korisnikID = $_SESSION['id_korisnika'];
	$korisnikImePrezime = $_SESSION['imeprezime'];
	$artikalID = $_GET['aid'];
	$artikalNAZIV = $_GET['aime'];
	$artikalCena = $_GET['acena'];
	$datum = date("d-m-Y");
	$kategorija = $_GET['apodkategorija'];

	$guery= "select * from korpa where korisnik_id=".$korisnikID." and artikal_id=".$artikalID."";
	$stmt = $conn->prepare($guery);
	$stmt->execute();
	$no = $stmt->fetch();
	if($no > 0)
	{
			$sql = "update korpa set kolicina=kolicina+1 where artikal_id='$artikalID' && korisnik_id='$korisnikID'";
			$stmt = $conn->prepare($sql);
			$stmt->execute();
			header("Location: korpa.php");
	}
	else if(artikal_prodaja > 0)
	{
		//echo "Nema artikla";
	}
	else
	{
		$query1 = "insert into korpa(korisnik_id, korisnik_imeprezime, artikal_id, artikal_naziv, artikal_cena, kolicina, datum, kategorija_id, uspesno) values('$korisnikID', '$korisnikImePrezime','$artikalID', '$artikalNAZIV', '$artikalCena','1', '$datum', '$kategorija','1')";
		$conn->exec($query1);
		$_SESSION['ps'] = "Item successfully added to cart.";
		header("Location: korpa.php");
	}





?>
