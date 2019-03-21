<?php
  session_start();
  include("../includes/connection.php");
  //BRISANJE REKLAMACIJE
  if(isset($_GET['rid']))
  {
  		$query="delete from reklamacije where reklamacija_id =".$_GET['rid'];
  		$conn->exec($query);
      $_SESSION['ps'] = "You have successfully deleted a reclamation.";
  		header("location:reklamacije.php");
  }
  //BRISANJE ARTIKLA
  else if(isset($_GET['aid']))
  {
    $obrisiartikal=$_GET['aid'];

    $query="delete from artikli where artikal_id='$obrisiartikal'";

    $conn->exec($query);
    $_SESSION['ps'] = "You have successfully deleted the product.";
    header("location:artikli.php");
  }
  //BRISANJE KATEGORIJE
  else if(isset($_GET['kid']))
  {
    $delcat=$_GET['kid'];

    $query="delete from kategorija where kategorija_id ='$delcat' ";
    $query1="delete from podkat where glavnakat_id ='$delcat' ";

    $conn->exec($query);
    $conn->exec($query1);

    $_SESSION['ps'] = "You have successfully deleted the category.";
    header("location:kategorije.php");
  }
  //BRISANJE POTKATEGORIJE
  else if(isset($_GET['pid']))
  {
    $pid=$_GET['pid'];

    $q="delete from podkat where podkat_id = $pid";

    $conn->exec($q);

    $q1 = "delete from artikli where artikal_podkat = ".$pid;
    $conn->exec($q1);

    $_SESSION['ps'] = "You have successfully deleted the subcategory.";
    header("location:potkategorije.php");;

  }
  //BRISANJE KORISNIKA
  else if(isset($_GET['cid']))
  {
    $obrisikorisnika=$_GET['cid'];

    $query="delete from korisnik where korisnik_id ='$obrisikorisnika' ";
    $conn->exec($query);

    $_SESSION['ps'] = "You have successfully deleted the client.";
    header("location:korisnici.php");
  }
  //BRISANJE NARUDZBINE
  else if(isset($_GET['nid']))
  {
    $nzb = $_GET['nid'];

  	$query = "delete from narudzbine where id='$nzb'";
  	$conn->exec($query);

    $_SESSION['ps'] = "You have successfully deleted the order.";
  	header("Location: narudzbine.php");
  }
?>
