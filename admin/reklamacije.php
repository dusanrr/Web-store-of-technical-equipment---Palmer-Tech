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
									<div class="statistic__item statistic__item--grey">
										<?php
										include("../includes/connection.php");

										$query="select count(*) as total from reklamacije";
										$stmt = $conn->prepare($query);
										$stmt->execute();

										$totalrow = $stmt->fetch();
										echo '<h2 class="number">'.$totalrow['total'].'</h2>';
										 ?>

											<span class="desc">Total reclamations</span>
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
		<h4 class="animated bounceInRight text-center" style="padding-bottom: 10px;">PRODUCTS</h4>
		<table class="table" style="background: #F3F4F6;">
		<thead class="text-white" style="background: #1F2833; opacity: 0.8;">
			<tr>
				<th scope="col">NO</th>
				<th scope="col">Client name - ID</th>
				<th scope="col">Product</th>
				<th scope="col">Status</th>
				<th scope="col">Description</th>
				<th scope="col">Delete</th>
				<th scope="col">Change status</th>
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
				$totalEmpSQL = "select count(*) as broj FROM reklamacije";
				$stmt = $conn->prepare($totalEmpSQL);
				$stmt->execute();
				$totalEmployee = $stmt->fetch();
				$lastPage = ceil($totalEmployee['broj']/$showRecordPerPage);
				$firstPage = 1;
				$nextPage = $currentPage + 1;
				$previousPage = $currentPage - 1;
				$empSQL = "select * FROM reklamacije order by reklamacija_id ASC LIMIT $startFrom, $showRecordPerPage";
				$stmt = $conn->prepare($empSQL);
				$stmt->execute();

				while($row = $stmt->fetch())
				{
					echo "<tr>";
					echo "<td> ".$row['reklamacija_id'];
					echo "<td> ".$row['reklamirao']." ID (".$row['korisnik_id'].")";
					echo "<td> ".$row['proizvod_za_reklamaciju'];
					echo "<td> ".$row['status_reklamacije'];
					echo "<td> ".$row['opis_reklamacije'];
					echo '<td><a class="btn btn-danger" href="obrisi.php?rid='.$row['reklamacija_id'].'"><i class="fas fa-trash"></i></a>';
	 				echo '<td><a class="btn btn-success" href="promeni_status.php?id='.$row['reklamacija_id'].'"><i class="fas fa-edit"></i></a>';
					echo "</tr>";
				}
			?>
		</tbody>
	</table>
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
	ob_end_flush();
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
