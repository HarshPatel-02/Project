<?php
if(isset($_POST['send']))
{
   // echo"<script class='text-warning'>alert('This Slot Is Already tacken  plese select another slot')</script>";
  
    $name=$_POST["name"];
    $email=$_POST["email"];
    $msg=$_POST["message"];

   include('conn.php');

   $sql="INSERT INTO `feedback`(`id`, `name`, `email`, `message`) VALUES ('','".$name."','".$email."','".$msg."')";
   $result=mysqli_query($con,$sql);

   header('Location:feedback.php');  

}
?>