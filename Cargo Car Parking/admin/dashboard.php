<?php
include('conn.php');
session_start();
	if(!isset($_SESSION["adminemail"]))
	{
		
		header('Location:index.php');   
	}   

?>
<!DOCTYPE html>
	<html>
	<head>
		<title>Admin</title>
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>
	<body>
		
	<div class="sidebar">
		<?php
		include "sidebar.php";
		include "header1.php";
		?>
	</div>
	<div class="main-content">
		<main>
			<h1>Dashboard</h1>
		<br>
			<hr>
		<br>
			<div class="cards">
				<div class="card-single">
					<div>
						<?php 
							$query = mysqli_query($con,"select * from registration");
							$count = mysqli_num_rows($query);
						 
						echo "<h1>".$count."</h1>";?>
						<span>Register User</span><br/><br/><br/>
						<a href="reg-user.php">Full Detail</a>
					</div>
				</div>

				<div class="card-single">
					<div>
						<?php
							$query = mysqli_query($con,"select * from booking");
							$totalbooking = mysqli_num_rows($query);
						 
						echo "<h1>".$totalbooking."</h1>";?>
						<span>Total Booking</span><br/><br/><br/>
						<a href="manage-booking.php">Full Detail</a>
					</div>
				</div>

				<div class="card-single">
					<div>
						<?php 
							$query = mysqli_query($con,"select * from lots");
							$totallots = mysqli_num_rows($query);

						echo "<h1>".$totallots."</h1>";?>
						<span>Total Parking Lots</span><br/><br/><br/>
						<a href="manage-lots.php">Full Detail</a>
					</div>
				</div>
			</div>
		</main>
	</div>
	</body>
	</html>
	<head></head>