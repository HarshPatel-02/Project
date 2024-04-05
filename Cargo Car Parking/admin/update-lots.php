<?php
ob_start();
include('conn.php');
session_start();
	if(!isset($_SESSION["adminemail"]))
	{
		
		header('Location:index.php');   
	}  


 echo $lotsnm=$_SESSION["lotsa"];
 //echo $lotid=$_SESSION['lotidd'];
 
 
 $query = mysqli_query($con,"select id from lots where lots='".$lotsnm."' ");
 $count = mysqli_num_rows($query);
 
	$row = mysqli_fetch_array($query, MYSQLI_ASSOC);  
	$count = mysqli_num_rows($query);
	echo $id=$row['id'];
 
?>
<!doctype html>
<html>

<head>
	<title>Cargo Car Parking | Update Lots</title>
	
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
		<h1>Upadate Lots</h1>
		<br>
		<hr>
		<br>
		<h2>Lots Details</h2>
			<form method="POST"> 
                	<table>
						<tr>
							<td class="details">Lot Name
							<td class="details"><input type="text" class="txt button1"name="lotnm" value="<?php echo $lotsnm; ?>" >
						</tr>
						<tr>
							<td class="details" colspan=2><button class="txt button1" type="submit" name="update">Update</button>
						</tr>
					</table>	
			</form>	
</body>

</html>
<?php

if(isset($_POST['update'])){
	echo "<script>alert('Loat Deleted')</script>";	
	 $lotnm=$_POST["lotnm"];
	 
        $sql = "UPDATE lots SET lots='".$lotnm."' where ID='".$id."'";
        $con->query($sql);
          sleep(1);
         header('location:manage-lots.php');   


}

?>