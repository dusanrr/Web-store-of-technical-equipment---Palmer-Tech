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
	<!-- STATISTIC-->
	<section class="statistic statistic2 text-center">
			<div class="container">
					<div class="row justify-content-center">
							<div class="col-md-6 col-lg-6">
									<div class="statistic__item statistic__item--blue">
										<?php
										include("../includes/connection.php");

										$query="select count(*) as total from korisnik";
										$stmt = $conn->prepare($query);
										$stmt->execute();

										$totalrow = $stmt->fetch();
										echo '<h2 class="number">'.$totalrow['total'].'</h2>';
										 ?>

											<span class="desc">Total clients</span>
											<div class="icon">
													<i class="fas fa-exclamation"></i>
											</div>
									</div>
							</div>
					</div>
			</div>
	</section>
	<!-- END STATISTIC-->
	<div class="container text-center" style="padding-bottom: 70px;">
		<h4 class="animated bounceInRight text-center" style="padding-bottom: 10px;">CLIENTS</h4>
		<table class="table" style="background: #F3F4F6;">
		<thead class="text-white" style="background: #1F2833; opacity: 0.8;">
			<tr>
				<th scope="col">NO</th>
				<th scope="col">Client name</th>
				<th scope="col">Username</th>
				<th scope="col">Password</th>
				<th scope="col">Gender</th>
				<th scope="col">Email</th>
				<th scope="col">Contact number</th>
        <th scope="col">City</th>
        <th scope="col">Delete</th>
        <th scope="col">Edit</th>
				<th scope="col">Create</th>
			</tr>
		</thead>
		<tbody>
			<?php
				include("../includes/connection.php");
				$showRecordPerPage = 5;
				if(isset($_GET['page']) && !empty($_GET['page']))
				{
					$currentPage = $_GET['page'];
				}
				else
				{
					$currentPage = 1;
				}
				$startFrom = ($currentPage * $showRecordPerPage) - $showRecordPerPage;
				$totalEmpSQL = "select count(*) as broj FROM korisnik";
				$stmt = $conn->prepare($totalEmpSQL);
				$stmt->execute();
				$totalEmployee = $stmt->fetch();
				$lastPage = ceil($totalEmployee['broj']/$showRecordPerPage);
				$firstPage = 1;
				$nextPage = $currentPage + 1;
				$previousPage = $currentPage - 1;
				$empSQL = "select * FROM korisnik order by korisnik_id ASC LIMIT $startFrom, $showRecordPerPage";
				$stmt = $conn->prepare($empSQL);
				$stmt->execute();

				while($row = $stmt->fetch())
				{
					echo "<tr>";
					echo "<td> ".$row['korisnik_id'];
					echo "<td> ".$row['korisnik_imeprezime'];
					echo "<td> ".$row['korisnik_username'];
					echo "<td> ".$row['korisnik_password'];
					echo "<td> ".$row['korisnik_pol'];
          echo "<td> ".$row['korisnik_email'];
          echo "<td> ".$row['korisnik_contact'];
          echo "<td> ".$row['korisnik_grad'];
					echo '<td><a class="btn btn-danger" href="obrisi.php?cid='.$row['korisnik_id'].'"><i class="fas fa-trash"></i></a>';
	 				echo '<td><a class="btn btn-success" href="izmeni_korisnika.php?id='.$row['korisnik_id'].'"><i class="fas fa-edit"></i></a>';
					echo '<td><a class="btn btn-info" href="" data-toggle="modal" data-target="#addnc"><i class="fas fa-user-plus"></i></a>';
					echo "</tr>";
				}
			?>
		</tbody>
	</table>
	<!--CREATE NEW CLIENT-->
	<div class="modal fade" id="addnc" tabindex="-1" role="dialog" aria-labelledby="addnc" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header bg-dark text-white d-inline-block">
					<div class="row">
						<div class="col-sm-12">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
						</div>
					</div>
					<h5 class="modal-title text-center font-weight-bold" style="" id="exampleModalLongTitle">Create new client</h5>
				</div>
				<div class="modal-body justify-content-md-center" align="center">
					<form method="POST" name="dkorisnika">
						<div class="form-group">
							<label for="recipient-name" class="col-form-label font-weight-bold">First & Last name</label>
							<input type="text" class="form-control" required id="recipient-name" name="kip">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="col-form-label font-weight-bold">Username</label>
							<input type="text" class="form-control" required id="recipient-name" name="kun">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="col-form-label font-weight-bold">Password</label>
							<input type="password" class="form-control" required id="recipient-name" name="kpw">
						</div>
						<div class="form-group">
							<label for="exampleFormControlInput1" class="col-form-label font-weight-bold">Email address</label>
							<input type="email" class="form-control" required id="exampleFormControlInput1" name="kemail" placeholder="name@example.com">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="col-form-label font-weight-bold">Mobile phone</label>
							<input type="password" class="form-control" required id="recipient-name" name="kkontakt">
						</div>
						<div class="form-group">
							<label for="recipient-name" class="col-form-label font-weight-bold">City</label>
							<input type="password" class="form-control" required id="recipient-name" name="kgrad">
						</div>
						<div class="form-group">
							<label for="exampleFormControlSelect1" class="col-form-label font-weight-bold">Gender</label>
							<select class="form-control" required id="exampleFormControlSelect1" name="kpol">
								<option selected="selected" value="-1" disabled></option>
								<option value="Muski" id='Muski'>Muski</option>
								<option value="Zenski" id='Zenski'>Zenski</option>
							</select>
						</div>
				</div>
				<div class="modal-footer bg-dark text-white justify-content-md-center">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					<input type="submit" name="potvrdi" value="Create" class="btn btn-info"/>
					</form>
				</div>
			</div>
		</div>
	</div>
	<?php
	if(isset($_POST['potvrdi']))
	{
		$K_IMEPREZIME=$_POST['kip'];
		$K_USERNAME=$_POST['kun'];
		$K_PASSWORD=$_POST['kpw'];
		$K_POL=$_POST['kpol'];
		$K_EMAIL=$_POST['kemail'];
		$K_KONTAKT=$_POST['kkontakt'];
		$K_GRAD=$_POST['kgrad'];

		include("../includes/connection.php");

		$query="insert into korisnik(korisnik_imeprezime, korisnik_username, korisnik_password, korisnik_pol, korisnik_email, korisnik_contact, korisnik_grad)
		values('$K_IMEPREZIME','$K_USERNAME','$K_PASSWORD','$K_POL','$K_EMAIL','$K_KONTAKT', '$K_GRAD')";

		$conn->exec($query);

		$_SESSION['ps'] = "You have successfully added a new client.";
		header("Location: korisnici.php");
		ob_end_flush();
	}

	?>
	<!-- PAGINATION -->
	<nav aria-label="Page navigation">
	<ul class="pagination justify-content-center">
	<?php if($currentPage != $firstPage)
	{
		?>
		<li class="page-item">
			<a class="page-link" href="?page=<?php echo $firstPage ?>" tabindex="-1" aria-label="Previous">
			<span aria-hidden="true">First</span>
			</a>
		</li>
	<?php
	}
	?>
	<?php if($currentPage >= 2)
	{
		?>
		<li class="page-item"><a class="page-link" href="?page=<?php echo $previousPage ?>"><?php echo $previousPage ?></a></li>
		<?php
	}
	?>
	<li class="page-item active"><a class="page-link" href="?page=<?php echo $currentPage ?>"><?php echo $currentPage ?></a></li>
	<?php if($currentPage != $lastPage)
	{
		?>
		<li class="page-item"><a class="page-link" href="?page=<?php echo $nextPage ?>"><?php echo $nextPage ?></a></li>
		<li class="page-item">
			<a class="page-link" href="?page=<?php echo $lastPage ?>" aria-label="Next">
				<span aria-hidden="true">Last</span>
			</a>
		</li>
	<?php
	}
	?>
	</ul>
	</nav>
	<!-- END OF PAGINATION -->
	</div>

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
