<?php
	ob_start();
	session_start();
?>
<!DOCTYPE html>
<html lang="en">
		<head>
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link href="images/palmertech.jpg" rel="icon" type="image/x-icon" />
			<link rel="stylesheet" href="css/bootstrap.min.css">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
			<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
			<link href="css/animate.css" rel="stylesheet" type="text/css" />
			<link href="css/aos.css" rel="stylesheet" type="text/css" />
			<link href="css/style.css" rel="stylesheet" type="text/css" />
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
			<script src="js/bootstrap.min.js"></script>
			<script src="js/js.js"></script>
			<script src="js/aos.js"></script>
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
		</head>
	<body onload="myFunction()" style="margin:0;">
	<!--PRELOADER-->
	<!--<div id="preloader">
		<div id="loader"></div>
	</div>
	<div style="display:none;" id="myDiv" class="animate-bottom">-->

	<!--LOGIN & SEARCH NAV-->
	<nav class="navbar navbar-light bg-dark" style="border-bottom:2px solid #FF5722;">
			<?php
				if(isset($_SESSION['status']))
				{
					echo'<div class="navbar brand">
						<form class="form-inline" method="GET" action="pretrazivanje.php">
							<input class="form-control mr-sm-2" type="search" placeholder="Search" required aria-label="Search" name="s">
							<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
						</form>
					</div>';
				}
				else
				{
							echo'<div class="navbar brand">
								<form class="form-inline" action="prijava.php" method="POST">
									<div class="input-group">
										<input type="text" class="form-control mr-sm-2" placeholder="Username" required aria-label="Username" name="usernm">
										<input type="password" class="form-control mr-sm-2" placeholder="Password" required aria-label="Password" name="pwd">
										<button class="btn btn-primary mr-sm-2" type="submit">Login</button>
								</div>
								</form>
							</div>
							<div class="navbar brand">
								<form class="form-inline" method="GET" action="pretrazivanje.php">
									<input class="form-control mr-sm-2" type="search" placeholder="Search" required aria-label="Search" name="s">
									<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
								</form>
							</div>';
				}
			?>
	</nav>

	<!--JUMBOTRON-->
	<div class="jumbotron text-center" style="margin-bottom:0">
	<img class="img-fluid rounded-circle animated zoomInDown" style="height:190px; width:190px;" src="images/palmertech.jpg"><br><br>
	<h1 class="display-3 animated bounceInLeft">PALMER TECH</h1>
	<h4 class="animated bounceInRight">Welcome to PALMER TECH store!</h4>
	</div>

	<!--MAIN NAV-->
	<nav class="navbar justify-content-center sticky-top navbar-icon-top navbar-expand-lg navbar-dark bg-dark">

		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

	<div class="collapse navbar-collapse justify-content-md-center" id="navbarSupportedContent">
		<a class="navbar-brand" href="#">
			<img src="images/palmertech.jpg" width="40" height="40" class="d-inline-block align-top rounded-circle" alt="">
			PalmerTech
		</a>
		<ul class="navbar-nav">
			<?php
			include("includes/connection.php");
			$qq1 = "select count(*) \"ukorpi\" from korpa where korisnik_id='$_SESSION[id_korisnika]'";
			$stmt = $conn->prepare($qq1);
			$stmt->execute();
			$ukorpi=$stmt->fetch();

			$qqq1 = "select count(*) \"reklamacije\" from reklamacije where reklamirao='$_SESSION[imeprezime]'";
			$stmt = $conn->prepare($qqq1);
			$stmt->execute();
			$reklamacije=$stmt->fetch();

			if(isset($_SESSION['status']))
			{
				echo'<li class="nav-item active">
					<a class="nav-link" href="index.php">
						<i class="fa fa-home"></i>
						Home
						<span class="sr-only">(current)</span>
						</a>
				</li>
				<li class="nav-item">
					<a class="nav-link text-white" href="korpa.php">
						<i class="fab fa-opencart"></i>
						My cart
						<span class="badge badge-success">'.$ukorpi['ukorpi'].'</span>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link text-white" href="moje_porudzbine.php">
						<i class="fab fa-jedi-order"></i>
						My orders
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link text-white" href="reklamacija.php">
						<i class="fas fa-exclamation-circle"></i>
						Complain
					</a>
				</li>
				<li class="nav-item active">
					<a class="nav-link" href="moje_reklamacije.php">
						<i class="fas fa-registered"></i>
						Reclamations
						<span class="badge badge-warning">'.$reklamacije['reklamacije'].'</span>
						</a>
				</li>';
		}
		else
		{
			echo'<li class="nav-item active">
				<a class="nav-link" href="index.php">
					<i class="fa fa-home"></i>
					Home
					<span class="sr-only">(current)</span>
					</a>
			</li>
			<li class="nav-item active">
				<a class="nav-link" href="#" data-toggle="modal" data-target="#exampleModalCenter">
					<i class="fas fa-user-plus"></i>
					Sign Up
					<span class="sr-only">(current)</span>
					</a>
			</li>';
		}
		?>
		</ul>
	</div>
	</nav>

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
					<a class="dropdown-item text-muted" href="odjava.php"><i class="fas fa-sign-out-alt"> Logout</i></a>
				</div>
			</div>
		</div>
	</nav>';
}
	?>
	<br><br><br>
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
	<div class="container" style="padding-bottom: 70px;">
	<table class="table table-hover text-center text-secondary">
	<thead>
		<tr>
			<th>NO</th>
			<th>Client name - ID</th>
			<th>Product</th>
			<th>Status</th>
			<th>Description</th>
		</tr>
	</thead>
	<tbody>
		<?php
		include("includes/connection.php");

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
		$totalEmpSQL = "select count(*) as broj FROM reklamacije where korisnik_id='$_SESSION[id_korisnika]'";
		$stmt = $conn->prepare($totalEmpSQL);
		$stmt->execute();
		$totalEmployee = $stmt->fetch();
		$lastPage = ceil($totalEmployee['broj']/$showRecordPerPage);
		$firstPage = 1;
		$nextPage = $currentPage + 1;
		$previousPage = $currentPage - 1;
		$empSQL = "select * FROM reklamacije where korisnik_id='$_SESSION[id_korisnika]' order by reklamacija_id ASC LIMIT $startFrom, $showRecordPerPage";
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
			echo "</tr>";
		}
		$conn = null;
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
	?>
	</ul>
	</nav>
	<!-- END OF PAGINATION -->
	</div>
	<!--SIGN UP-->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
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
				<h5 class="modal-title text-center font-weight-bold" style="" id="exampleModalLongTitle">SIGN UP</h5>
			</div>
			<div class="modal-body justify-content-md-center" align="center">
				<img src="images/palmertech.jpg" width="200" height="200" class="rounded-circle" alt="">
				<form method="POST" name='registration'>
					<div class="form-group">
						<label for="recipient-name" class="col-form-label font-weight-bold">First & Last name</label>
						<input type="text" class="form-control" required id="recipient-name" name="fnm">
					</div>
					<div class="form-group">
						<label for="recipient-name" class="col-form-label font-weight-bold">Username</label>
						<input type="text" class="form-control" required id="recipient-name" name="unm">
					</div>
					<div class="form-group">
						<label for="recipient-name" class="col-form-label font-weight-bold">Password</label>
						<input type="password" class="form-control" required id="recipient-name" name="pwd">
					</div>
					<div class="form-group">
						<label for="recipient-name" class="col-form-label font-weight-bold">Confirm password</label>
						<input type="password" class="form-control" required id="recipient-name" name="cpwd">
					</div>
					<div class="form-group">
						<label for="exampleFormControlInput1" class="col-form-label font-weight-bold">Email address</label>
						<input type="email" class="form-control" required id="exampleFormControlInput1" name="mail" placeholder="name@example.com">
					</div>
					<div class="form-group">
						<label for="recipient-name" class="col-form-label font-weight-bold">Mobile phone</label>
						<input type="text" class="form-control" required id="recipient-name" name="contact">
					</div>text
					<div class="form-group">
						<label for="recipient-name" class="col-form-label font-weight-bold">City</label>
						<input type="text" class="form-control" required id="recipient-name" name="city">
					</div>
					<div class="form-group">
						<label for="exampleFormControlSelect1" class="col-form-label font-weight-bold">Gender</label>
						<select class="form-control" required id="exampleFormControlSelect1" name="gender">
							<option selected disabled></option>
							<option value="Male">Male</option>
							<option value="Female">Female</option>
						</select>
					</div>
			</div>
			<div class="modal-footer bg-dark text-white justify-content-md-center">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<input type="submit" name="register" value="Sign Up" class="btn btn-info"/>
				</form>
			</div>
		</div>
	</div>
	</div>
	<?php
	if(isset($_POST['register']))
	{
		$fnm=$_POST['fnm'];
		$unm=$_POST['unm'];
		$pwd=$_POST['pwd'];
		$email=$_POST['mail'];
		$contact=$_POST['contact'];
		$city=$_POST['city'];
		$gender=$_POST['gender'];

		include("includes/connection.php");

		$query="INSERT INTO korisnik (korisnik_imeprezime, korisnik_username, korisnik_password, korisnik_pol, korisnik_email, korisnik_contact, korisnik_grad)
		values('$fnm','$unm','$pwd','$gender','$email','$contact','$city')";
		$conn->exec($query);

		$_SESSION['ps'] = "You are successfully registered.";
		header("Location: index.php");
	}
	ob_end_flush();
	?>
	<!--FOOTER-->
	<section class="footers bg-light pt-5 pb-3" >
	 <div class="container pt-5">
			 <div class="row" data-aos="fade-up"
	data-aos-anchor-placement="bottom-bottom">
					 <div class="col-xs-12 col-sm-6 col-md-4 footers-one">
						<div class="footers-logo">
								<img src="images/palmertech.jpg" alt="Logo" style="width:120px;">
						</div>
						<div class="footers-info mt-3">
								<p>Cras sociis natoque penatibus et magnis Lorem Ipsum tells about the compmany right now the best.</p>
						</div>
						<div class="social-icons">
								<a href="https://www.facebook.com/"><i id="social-fb" class="fab fa-facebook"></i></a>
								<a href="https://twitter.com/"><i id="social-tw" class="fab fa-twitter"></i></a>
							<a href="https://plus.google.com/"><i id="social-gp" class="fab fa-google-plus"></i></a>
							<a href="mailto:dule.tagoe@gmail.com"><i id="social-em" class="far fa-envelope"></i></a>
					</div>
				</div>
				 <div class="col-xs-12 col-sm-6 col-md-2 footers-two">
						<h5>Palmer Tech</h5>
						<ul class="list-unstyled">
							 <li><a href="#">#Link1</a></li>
							 <li><a href="#">#Link2</a></li>
							 <li><a href="#">#Link3</a></li>
							 <li><a href="#">#Link4</a></li>
							 <li><a href="#">#Link5</a></li>
						</ul>
				</div>
				 <div class="col-xs-12 col-sm-6 col-md-2 footers-three">
						<h5>Palmer Tech</h5>
						<ul class="list-unstyled">
							 <li><a href="#">#Link1</a></li>
							 <li><a href="#">#Link2</a></li>
							 <li><a href="#">#Link3</a></li>
							 <li><a href="#">#Link4</a></li>
							 <li><a href="#">#Link5</a></li>
						</ul>
				</div>
				 <div class="col-xs-12 col-sm-6 col-md-2 footers-four">
						<h5>Palmer Tech</h5>
						<ul class="list-unstyled">
							 <li><a href="#">#Link1</a></li>
							 <li><a href="#">#Link2</a></li>
							 <li><a href="#">#Link3</a></li>
							 <li><a href="#">#Link4</a></li>
							 <li><a href="#">#Link5</a></li>
						</ul>
				</div>
				 <div class="col-xs-12 col-sm-6 col-md-2 footers-five">
						<h5>Palmer Tech</h5>
						<ul class="list-unstyled">
							 <li><a href="#">#Link1</a></li>
							 <li><a href="#">#Link2</a></li>
							 <li><a href="#">#Link3</a></li>
							 <li><a href="#">#Link4</a></li>
							 <li><a href="#">#Link5</a></li>
						</ul>
				</div>

			 </div>
	</div>
	</section>
	<section class="disclaimer bg-light border">
		<div class="container">
				<div class="row ">
						<div class="col-md-12 py-2">
								<small>
									 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum
							 </small>
						</div>
				</div>
		</div>
	</section>
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
	<script src="js/aos.js"></script>
	<script>
	AOS.init({
	duration : 1000,
	});
	</script>
</body>
</html>
