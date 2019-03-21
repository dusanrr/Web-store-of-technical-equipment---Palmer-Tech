<?php
ob_start();
session_start();
?>
	<!DOCTYPE html>
	<html lang="en">
			<head>
				<meta name="viewport" content="width=device-width, initial-scale=1">
				<link href="../images/palmertech.jpg" rel="icon" type="image/x-icon" />
				<link rel="stylesheet" href="../css/bootstrap.min.css">
				<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
				<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
				<link href="../css/animate.css" rel="stylesheet" type="text/css" />
				<link href="../css/aos.css" rel="stylesheet" type="text/css" />
				<link href="css/style.css" rel="stylesheet" type="text/css" />
				<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
				<script src="../js/bootstrap.min.js"></script>
				<script src="../js/js.js"></script>
				<script src="../js/aos.js"></script>
				<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
				<script>
					var myVar;

					function myFunction() {
					    myVar = setTimeout(showPage, 3000);
					}

					function showPage() {
					  document.getElementById("loader").style.display = "none";
						document.getElementById("preloader").style.display = "none";
					  document.getElementById("myDiv").style.display = "block";


					}
				</script>
				<style media="screen">
					.lele:hover
					{
						transition: transform 1.2s; /* Animation */
						transform: scale(1.5);
					}
				</style>
			</head>
<body onload="myFunction()" style="margin:0;">
	<!--PRELOADER-->
	<!--<div id="preloader">
		<div id="loader"></div>
	</div>
	<div style="display:none;" id="myDiv" class="animate-bottom">-->
	<!--JUMBOTRON-->
	<div class="jumbotron text-center bg-dark" style="margin-bottom:0; border-radius: 0 !important;">
		<img class="img-fluid rounded-circle animated zoomInDown" style="height:190px; width:190px;" src="../images/palmertech.jpg"><br><br>
		<h1 class="display-5 animated bounceInLeft text-white">PALMER TECH - ADMIN PANEL</h1>
	</div>
	<!--MAIN NAV-->
	<nav class="navbar justify-content-center sticky-top navbar-icon-top navbar-expand-lg navbar-dark bg-dark">

		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

	<div class="collapse navbar-collapse justify-content-md-center" id="navbarSupportedContent">

		<ul class="navbar-nav">
			<!-- Example single danger button -->
			<div class="btn-group pmenu">
				<button type="button" class="btn btn-outline-light btn-sm" onclick="document.location.href='index.php'">
					<i class="fas fa-home" style="font-size:20px;"></i> Home
				</button>
			</div>
			<div class="btn-group pmenu">
				<button type="button" class="btn btn-outline-light btn-sm" onclick="document.location.href='korisnici.php'">
					<i class="fas fa-users" style="font-size:20px;"></i> Clients
				</button>
			</div>
			<div class="btn-group pmenu">
				<button type="button" class="btn btn-outline-light btn-sm" onclick="document.location.href='artikli.php'">
					<i class="fab fa-product-hunt" style="font-size:20px;"></i> Products
				</button>
			</div>
			<div class="btn-group pmenu">
				<button type="button" class="btn btn-outline-light btn-sm" onclick="document.location.href='kategorije.php'">
					<i class="fab fa-contao" style="font-size:20px;"></i> Categories
				</button>
			</div>
			<div class="btn-group pmenu">
				<button type="button" class="btn btn-outline-light btn-sm" onclick="document.location.href='potkategorije.php'">
					<i class="fab fa-speakap" style="font-size:20px;"></i> Subcategories
				</button>
			</div>
			<div class="btn-group pmenu">
				<button type="button" class="btn btn-outline-light btn-sm" onclick="document.location.href='narudzbine.php'">
					<i class="fas fa-hand-holding-usd" style="font-size:20px;"></i> Orders
				</button>
			</div>
			<div class="btn-group pmenu">
				<button type="button" class="btn btn-outline-light btn-sm" onclick="document.location.href='reklamacije.php'">
					<i class="fas fa-exclamation" style="font-size:20px;"></i> Reclamations
				</button>
			</div>
		<?php
		if(isset($_SESSION['status']))
		{
			$user = $_SESSION['imeprezime'];
			echo '<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample08" aria-controls="navbarsExample08" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			<div class="collapse navbar-collapse justify-content-end" id="navbarsExample08">
				<div class="btn-group">';
					echo "<button type=\"button\" class=\"btn btn-success dropdown-toggle\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">
						Welcome $user;
					</button>";
					echo'<div class="dropdown-menu">
						<a class="dropdown-item text-muted"><i class="fas fa-user-circle"> '.$user.'</i></a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item text-muted" href="../odjava.php"><i class="fas fa-sign-out-alt"> Logout</i></a>
					</div>
				</div>
			</div>
		</nav>';
	}
		?>
		</ul>
	</div>
	</nav>
	<!-- ALERTS -->
	<?php if(isset($_SESSION['ps']))
	{ ?>
		<script type="text/javascript">
		swal("Success!", "<?php echo $_SESSION['ps']; unset($_SESSION['ps']); ?>", "success");
		</script>';
	<?php
	} ?>
	<?php if(isset($_SESSION['perr']))
	{ ?>
		<script type="text/javascript">
		swal("Error!", "<?php echo $_SESSION['perr']; unset($_SESSION['perr']); ?>", "error");
		</script>';
	<?php
	} ?>
	<!-- END ALERTS -->
	<div class="container">
		<div class="row bg-dark" style="border-bottom: 3px solid green; height:40px; width:100%; border-bottom-right-radius: 45px; border-bottom-left-radius: 45px;">
		</div>
	</div>

	<br><br><br>
	<div class="container text-center" style="padding-bottom: 70px;">
		<h4 class="animated bounceInRight" style="padding-bottom: 40px;">Edit category</h4>
	<form method='POST' enctype="multipart/form-data" name="izmeniK">
		<div class="form-group">
			<?php
				include("../includes/connection.php");

				$query = "select * FROM kategorija where kategorija_id='$_GET[kid]'";
				$stmt = $conn->prepare($query);
				$stmt->execute();

				$row = $stmt->fetch();

				echo '<div class="form-group">
								<label for="exampleFormControlTextarea1">Name</label><br>
								<input type="text" class="text-center" required name="ik" style="width:500px;" value="'.$row['kategorija_ime'].'">
							</div>';
				echo '<div class="form-group">
								<label for="exampleFormControlTextarea1">Image</label><br>
								<input type="file" class="text-center" name="slikakategorije" size="35">
							</div>';
			?>
		</div>
		<input type="submit" name='dugme' value="Save changes" class="btn btn-outline-success"/>
</form>
	</div>
	<!-- EDIT PRODUCT -->
  <?php
  if(isset($_POST['dugme']))
  {
		include("../includes/connection.php");

		if(!(strtoupper(substr($_FILES['slikakategorije']['name'],-4))==".JPG" || strtoupper(substr($_FILES['slikakategorije']['name'],-5))==".JPEG"|| strtoupper(substr($_FILES['slikakategorije']['name'],-4))==".GIF" || strtoupper(substr($_FILES['slikakategorije']['name'],0))==""))
		{
			$_SESSION['perr'] = "Allowed extensions are .jpg, .jpeg, gif.";
			header("Location: kategorije.php");
		}
		else
		{
			move_uploaded_file($_FILES['slikakategorije']['tmp_name'],"../upload_image/".$_FILES['slikakategorije']['name']);
			$K_SLIKA = "upload_image/".$_FILES['slikakategorije']['name'];

			$K_NAZIV=$_POST['ik'];

			$KID=$_GET['kid'];

			if($_FILES['slikakategorije']['name'] == NULL)
			{
				$queryq = "update kategorija SET kategorija_ime=? WHERE kategorija_id=?";
				$stmt= $conn->prepare($queryq);
				$stmt->execute([$K_NAZIV, $KID]);

				$_SESSION['ps'] = "You have successfully edited the category.";
				header("Location: kategorije.php");
			}
			else
			{
        $queryq = "update kategorija SET kategorija_ime=?, kategorija_slika=? WHERE kategorija_id=?";
				$stmt= $conn->prepare($queryq);
				$stmt->execute([$K_NAZIV, $K_SLIKA, $KID]);

				$_SESSION['ps'] = "You have successfully edited the category.";
				header("Location: kategorije.php");
			}
		}
  }
	ob_end_flush();
  ?>
	<!--FOOTER-->
	<section class="copyright border bg-dark">
		<div class="container">
				<div class="row">
						<div class="col-md-6 pt-3 text-left">
								<p class="text-white">Palmer Tech | All rights reserved | © 2019</p>
						</div>
						<div class="col-md-6 pt-3 text-right">
								<p class="text-white">Design and coded by <a href="" class="btn-link" style="text-decoration:none;"><kbd>Dusan Rajkovic</kbd></a></p>
						</div>
				</div>
		</div>
	</section>
	</div>
	<script src="../js/aos.js"></script>
	<script>
	AOS.init({
	duration : 1000,
	});
	</script>
</body>
</html>
