<?php
include "conn.php";
session_start();
	if(!isset($_SESSION["adminemail"]))
	{
		
		header('Location:index.php');   
	}   

?>

<!DOCTYPE html>
	<html>
	<head>
		<title>Register user</title>
		<link rel="stylesheet" type="text/css" href="style.css">
		<link rel="stylesheet" type="text/css" href="hstyle.css">
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
		<h2>Registered Users</h2>
		<br>
		<hr>
		<br>
	<?php
	ob_start();
	$query = mysqli_query($con,"select * from registration");
	$count = mysqli_num_rows($query);
	if($count>0)
	{
		?>
	<form method='POST'>
	<table align="center" border=2px>
	<tr>
	<th class="details">First Name</th>
	<th class="details">Last Name</th>
	<th class="details">User Name</th>
	<th class="details">Email</th>
	<th class="details">Contact No.</th>
	<th class="details">Car No.</th>
	<th class="details">Password</th>
	</tr>
	<?php
	while($row=mysqli_fetch_array($query))
	{ 
	?>
	<tr align="center">
	<td class="details"><?php echo $row['fname'];?> </td>
	<td class="details"><?php echo $row['lname'];?> </td>
	<td class="details"><?php echo $row['username'];?> </td>
	<td class="details"><?php echo $row['email'];?> </td>
	<td class="details"><?php echo $row['contact'];?> </td>
	<td class="details"><?php echo $row['carno'];?> </td>
	<td class="details"><?php echo $row['password'];?> </td>
	<?php
	$panding="PENDING";
	$id=$row['id'];
	?>			  
	</tr>
	<?php } ?>
	
	</table>
	
	</form>
	<?php } ?>
		</main>
	</div>
	</body>
	</html>
