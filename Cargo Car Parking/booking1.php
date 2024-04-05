<?php
    $carmodel=$_POST["carm"];
    

 
    session_start();

    $_SESSION["cm1"] = $carmodel;
   
    sleep(2);
    header("location:parking.php");
?>