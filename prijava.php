<?php
  session_start();
  include("includes/connection.php");

  $unm=$_POST['usernm'];
  $pwd=$_POST['pwd'];
  $q="select * from korisnik where korisnik_username='$unm' and korisnik_password='$pwd'";
  $stmt = $conn->prepare($q);
  $stmt->execute();

  $row=$stmt->fetch();
  if(!empty($row))
  {
      $_SESSION=array();
      $_SESSION['imeprezime']=$row['korisnik_imeprezime'];
      $_SESSION['unm']=$row['korisnik_username'];
      $_SESSION['uid']=$row['korisnik_password'];
      $_SESSION['id_korisnika'] = $row['korisnik_id'];
      $_SESSION['status']=true;
      $_SESSION['ps'] = "You are successfully logged in.";
      if($_SESSION['unm']!="admin")
      {
        header("location:index.php");
      }
      else
      {
        header("location:admin/index.php");
      }
  }
  else
  {
    $_SESSION['perr'] = "Invalid User";
    header("location:index.php");
  }
?>
