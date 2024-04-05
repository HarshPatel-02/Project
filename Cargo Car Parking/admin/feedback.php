<?php
ob_start();
include 'sidebar.php';
include 'conn.php';
session_start();
	if(!isset($_SESSION["adminemail"]))
	{
		
		header('Location:index.php');   
	}

 ?>

<!doctype html>
<html>

<head>
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
		<h1>Feedback</h1>
		<br>
		<hr>
		<br>
		<form method="POST">
							<table>
						<tr>
							<td colspan="4"><h2>Manage Contact Us Queries</h2></td>
						</tr>
						<tr>
							<td colspan="4"><h3>User queries</h3></td>
						</tr>
						<tr>
							<th class='details'>Name</th>
							<th class='details'>Email</th>
							<th class='details'>Message</th>
							<th class='details'>Delete</th>
						</tr>							
							<?php $sql = "SELECT * from  feedback ";
								$query=mysqli_query($con,$sql);
								$result=mysqli_num_rows($query);
								if($result>0)
								{
									while($row=mysqli_fetch_array($query))
									{     
								?>    
						<tr>
							<td class='details'><?php echo $row['name'];?></td>
							<td class='details'><?php echo $row['email'];?></td>
							<td class='details'><?php echo $row['message'];?></td>
							<td class='details'><button type='submit' name='dlt' value="<?php echo $row['id'];?>"><img src='../image/cancle.jpg' id='book'></button>
							</button></td>
						</tr>
						<?php
							}
						}
						?>
				</table>
		</form>
</body>
</html>

<?php

if(isset($_POST["dlt"]))
{
	$dltid = $_POST['dlt'];
	$sql="DELETE FROM feedback where id='".$dltid."'";
	$result=mysqli_query($con,$sql);
	if($result>0)
	{
		echo "<script>alert('Messege Deleted')</script>";
		header('location:feedback.php');
	}else{
		echo "<script>alert('Messege is Not Deleted')</script>";
	}
	
}

?>