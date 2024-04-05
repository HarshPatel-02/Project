<?php
include "header.php";
if(!isset($_SESSION['email']))
{
    
    header('Location:login2.php');   
}   
?>
<!DOCTYPE html>
<html>
<head>
    <title>book parking lot</title>
</head>
<body>

	<table align="center">
		<form method="POST">
			<tr>
				<td colspan="2"><h2 align="center">Specify Date and time to Book</h2>
				</td>
			</tr>
			<tr>
				<td class="details">
					<label>Check-In Time :</label>
				</td>
				<td>
                <input type="date" class="txt button1" required="" name="date1" min="2022-01-01">
                <input type="time" class="txt button1" required="" name="time1" >
				</td>
			</tr><tr>
				<td class="details">
					<label>Check-Out Time :</label>
				</td>
				<td>
                <input type="date" class="txt button1" required="" name="date2" >
                <input type="time" class="txt button1" required="" name="time2">
				</td>
			</tr>
			</tr><tr>
				<td colspan="2" align="center">
                <input type="submit" class="txt button1" value="Book" name="book">

				</td>
			</tr>
		</form>
</table>
<?php
    include("footer.php");
    ?> 
</body>
</html>

<?php

if(isset($_POST["book"]))
{
 
     $firstdate=$_POST["date1"];
     $firsttime=$_POST["time1"];
     $seconddate=$_POST["date2"];
     $secondtime=$_POST["time1"];

     if ($seconddate>= $firstdate) 
     {
         $fdate= $firstdate." " .$firsttime;
         $sdate= $seconddate." " .$secondtime;
     


        $carmodel=  $_SESSION["cm1"];
        $area =  $_SESSION["area"]; 
        $parkinglots =  $_SESSION["lot"];
        $plateno = $_SESSION["pno"];
        $upi = $_SESSION["upino"];
        $fees = 120;
        $_SESSION["fdate"]=$fdate;
        $_SESSION["sdate"]=$sdate;
        $email =  $_SESSION["email"]; 
        $status="PENDING";
        $name=$_SESSION['fname']." ".$_SESSION['lname'];
        $carmodel=  $_SESSION["cm1"];
        include("conn.php");
        $query = mysqli_query($con,"insert into booking values('id','".$carmodel."','". $area."','". $parkinglots."','".$plateno."','".  $upi."','".  $fees."','".$fdate."','".$sdate."','".$email."','".$status."','".$name."')");




        if($query)
        {
            echo "<script>alert('Your Booking Request Sent Successfuliy')</script>";
   
            echo "<script>window.location.replace('booking-detail.php')</script>";
    
        }
        else    
        {
            echo "<script>alert('Error in Booking ')</script>";
        }
    }
    else
    {
        echo "<script>alert('enter valid date')</script>"; 
    }
}
?>