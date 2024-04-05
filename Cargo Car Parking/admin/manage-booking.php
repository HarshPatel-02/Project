<?php
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
	<title>Manage Booking  </title>
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
	
		<h1>Manage Booking</h1>
		<br>
		<hr>
		<br>
		<form method="POST" >
			<center>			
			<h2>BOOKINGS INFO</h2>
			<br/><br/>
							<table class="manage" width="100%">
												
										<tr>
											<th class='data'>ClientName</th>
											<th class='data'>Email</th>
											<th class='data'>Vehical No.</th>
											<th class='data'>Parking Area</th>
											<th class='data'>lot No.</th>
											<th class='data'>From</th>
											<th class='data'>To</th>
											<th class='data'>Status</th>
											<th class='data'>Accept</th>
											<th class='data'>Cancle</th>
</tr>
																		
										<?php
										 ob_start();
										   
											$query = mysqli_query($con,"select * from booking");
											$count = mysqli_num_rows($query);
											
											if($count>=1){ ?>
	
												<tr>
												   <?php
													while($row=mysqli_fetch_array($query))
													{         
													echo "<td class='data'>".$row['name']."</td>";
													echo "<td class='data'>".$row['email']."</td>";
													echo "<td class='data'>".$row['plateno']."</td>";
													echo "<td class='data'>".$row['area']."</td>";
													echo "<td class='data'>".$row['lots']."</td>";
													echo "<td class='data'>".$row['fdate']."</td>";
													echo "<td class='data'>".$row['sdate']."</td>";
													$panding="PENDING";
													$success="SUCCESS";
													
													$panding="PENDING";
													$success="SUCCESS";
													$cancle="CANCLE";
													
													if($row['status']===$panding){
													echo "<th class='data'><b>" .$row['status']. "</th>";
													}
                                                    if($row['status']===$cancle){
                                                        echo "<th class='data'><b>" .$row['status']. "</th>";
                                                    }
													if($row['status']===$success){
														echo "<th class='data'><b>" .$row['status']. "</th>";
													} 
													
													
													
													echo "<th><button type='submit' name='accept' value='".$row['id']."'><img src='../image/accept.jpg' id='book'></button></th>";
													echo "<th><button type='submit' name='cancle' value='".$row['id']."'><img src='../image/cancle.jpg' id='book'></button></th>";
												echo "</tr>";
													 }
												?>
												</table>
												</form><?php
											 }
											else
											{
												echo "First Book Your Lot for see Order Status";
											}


										  
											if(isset($_POST["accept"]))
											{
											  
												$accept=$_POST["accept"];
												$sql = "UPDATE booking SET status='SUCCESS' where id=$accept ";
												$con->query($sql);
													 header("location:manage-booking.php"); 
													
												  sleep(1);
												  
											   
											}
											
											  
											if(isset($_POST['cancle']))
											{
											   
												$cancel=$_POST["cancle"];
												$sql = "UPDATE booking SET status='CANCLE' where id=$cancel";
												$con->query($sql) ;
												  sleep(1);
												header('location:manage-booking.php'); 
											
											}

										 ob_end_flush();
										?>
										</center>
                                    <br/><br/><br/><br/>
                                        </main>
                                        </body>
                                        </html>

