<?php

 if(!isset($_SESSION['email']))
 {
     
     header('Location:login2.php');   
 }   
 
    $area=$_POST["area"];
    $parkinglots=$_POST["lots"];
    $plateno=$_POST["pno"];
    $upi= $_POST["upino"];
   

  session_start();

   $_SESSION["area"] = $area;
   $_SESSION["lot"] = $parkinglots;
   $_SESSION["pno"] = $plateno;
   $_SESSION["upino"] = $upi;
   sleep(2);
 header("location:date-time.php");

   ?>