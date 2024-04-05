<?php
ob_start();
 include('header.php');

if(isset($_SESSION['email']))
{
    $email = $_SESSION["email"] ;
    $password = $_SESSION["password"]; 
   
  
  
   
    include("conn.php");

    $query = mysqli_query($con,"select * from booking where email='$email'");
     
    $count = mysqli_num_rows($query);
    

if($count>=1){
    ?>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css"
    href="hstyle.css">
</head>
    <center><h1>Your Booking Details</h1></center>
      
              <form method='POST'>
                   <table align="center">
                            <tr>
                            <th class="details">Select</th>
                            <th class="details">Vehical Name</th>
                            <th class="details">Vehical No.</th>
                            <th class="details">Parking Area</th>
                            <th class="details">lot No.</th>
                            <th class="details">From</th>
                            <th class="details">To</th>
                            <th class="details">Status</th>
                            </tr>
                        <?php
                                while($row=mysqli_fetch_array($query))
                                {    
                            echo "<tr class='text-center'>";
                                echo "<td class='details'> <input type='radio' value='" .$row['id']."'  name='cancle'></td>";
                                echo "<td class='details'>" .$row['carmodel']. "</td>";
                                echo "<td class='details'>" .$row['plateno']. "</td>";
                                echo "<td class='details'>" .$row['area']. "</td>";
                                echo "<td class='details'>" .$row['lots']. "</td>";
                                echo "<td class='details'>" .$row['fdate']. "</td>";
                                echo "<td class='details'>" .$row['sdate']. "</td>";
                                                    $panding="PENDING";
													$success="SUCCESS";
													$cancle="CANCLE";
													
													if($row['status']===$panding){
													echo "<td class='details'><b>" .$row['status']. "</td>";
													}
                                                    if($row['status']===$cancle){
                                                        echo "<td class='details'><b>" .$row['status']. "</td>";
                                                    }
													if($row['status']===$success){
													    echo "<td class='details'><b>" .$row['status']. "</td>";
													}  
                                                       
                                $id=$row['id']; 
                               echo" </tr>";
                                }
                            ?>
                    </table><center>
                        <br/>
       <button type='submit' name='sub' class="txt button1">Cancel Booking</button></td>
            </form>
            <?php
}else{
        echo "<div><h2>There is no data to show you. please  <a href='booking.php ' >Book Your Praking Lot </a> from hear.</h2></div>";
}
} else{
    echo "<div> <h2><center>Please <a href='login.php'>Login</a> to see your booking Status</h2>";
    }

if(isset($_POST["sub"]))
{
    echo "<script>alert('Booking Cancled ')</script>";
    echo $id=$_POST['cancle'];

    $sql = "DELETE FROM booking WHERE id=$id";

    if (mysqli_query($con, $sql)) {
        echo "<script>alert('Booking Cancled ')</script>";
    } else {
        echo "<script>alert('Booking is not Cancled  ')</script>";
    }
    sleep(2);
     header("location:booking-detail.php"); 

}
if(isset($_POST["cancle"]))
{

  
    // $accept=$_POST["accept"];
    // $sql = "UPDATE booking SET status='SUCCESS' where id=$accept ";
    // if ($con->query($sql) == TRUE) {
    //     echo "<script>alert('Request Accepted ')</script>";

    //   } else {
    //     echo "<script>alert('Request Is Not Accepted  ')</script>";
    //   }
    //   sleep(2);
    //  header("location:check.php");   
   
}
ob_end_flush();
?><br/><br/><br/><br/>
<?php include "footer.php";
?>