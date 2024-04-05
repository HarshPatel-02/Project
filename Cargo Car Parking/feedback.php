<?php 
include "header.php";
?>
<!DOCTYPE html>
<html>
<head>
    <title>Feedback</title>
    <link rel="stylesheet" type="text/css" href="hstyle.css">
</head>
<body>
<center>
<br>
        <form method="POST" action="feedback1.php">
            <table>
                    <tr>
                        <td class="details" colspan=2>Enter Feedback
                    </tr>
                    <tr>
                        <td class="details">Name
                        <td class="details"><input type="text" class="txt button1" required="" placeholder="Enter your Name" name="name">
                    </tr>
                    <tr>
                        <td class="details">Email
                        <td class="details"><input type="email" class="txt button1" required="" placeholder="Enter your Email" name="email">
                    </tr>
                    <tr>
                        <td class="details">Message
                        <td class="details"><textarea class="txt button1" name="message" placeholder="Enter Message"></textarea>
                    </tr>
                    <tr>
                        <td class="details" colspan=2><input type='submit' class="txt button1" name='send'>
                    </tr>
                </table>
            </form>
    <br>
</center>
</body>
</html>

<?php
// if(isset($_POST['send']))
// {
//    // echo"<script class='text-warning'>alert('This Slot Is Already tacken  plese select another slot')</script>";
  
//     $name=$_POST["name"];
//     $email=$_POST["email"];
//     $msg=$_POST["message"];

//    include('conn.php');

//    $sql="INSERT INTO `feedback`(`id`, `name`, `email`, `message`) VALUES ('','".$name."','".$email."','".$msg."')";
//    $result=mysqli_query($con,$sql);

   

// }

include "footer.php";
?>  