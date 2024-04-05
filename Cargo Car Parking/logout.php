<?php
session_start();

if(isset($_SESSION['email']))
{
    session_destroy();
    sleep(2);
    header('Location:index.php');
}
else{
    header('Location:index.php');
}
?>