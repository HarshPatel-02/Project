<?php
ob_start();
include('conn.php');
session_start();
	if(!isset($_SESSION["adminemail"]))
	{
		
		header('Location:index.php');   
	}  
	
 ?>

<!doctype html>
<html>

<head>
<link rel="stylesheet" type="text/css" href="hstyle.css">
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
		<h1>Lots Details</h1>
		<br>
		<hr>
		<br>
		<h3>Lots</h3>
			
							<?php
							$query = mysqli_query($con,"select * from lots ");
							 $count = mysqli_num_rows($query);
							 if($count>0)
							{
											echo '<table border=1>';
											echo '<form method="POST">';
												echo "<tr class='text-center'>";
												   
													while($row=mysqli_fetch_array($query))
													{         
													echo "<td  class='details'>" .$row['2']. "</td>";
													
													
													
													echo "<td  class='details'><button class='ud' type='submit	' name='btn-update' value='".$row['id']."'>Update</button></td>";
													echo "<td  class='details'><button class='ud1' name='delete'value='".$row['id']."'><span>Delete</span></button></td>";
													
													
													echo "</button></td>";
												echo "</tr>";
													 }
												
										
												echo "</table>";
												echo "</form>";
							} ?>
</html>

<?php

if(isset($_POST["delete"]))
{
	
    
    $id=$_POST['delete'];

    $sql = "DELETE FROM lots WHERE id=$id";

    if (mysqli_query($con, $sql)) 
	{
        echo "<script>alert('Loat Deleted')</script>";
    } 
	else 
	{
        echo "<script>alert('Loat is not Deleted ')</script>";
    }
    sleep(1);
	header('Location:manage-lots.php');  

}


if(isset($_POST["btn-update"]))
{
	
	$query1 = mysqli_query($con,"select lots from lots where id='".$_POST['btn-update']."'");
	$count = mysqli_num_rows($query);
											
	if($count>0)
	{
		while($row=mysqli_fetch_array($query1))
		{
		
			$resulta=$row['lots'];
			$_SESSION["lotsa"]=$resulta;
			$aa= $row['lots'];
			$_SESSION['lotidd']=$id;
		}
	
	header('Location:update-lots.php'); 
	
	}
}
?>