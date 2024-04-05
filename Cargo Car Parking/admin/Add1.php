<?php
	include "conn.php";
		$area=$_POST["area"];
		$lots=$_POST["lots"];
		//$state='Unhide';

		$sql="INSERT INTO `lots`(`id`, `area`, `lots`) VALUES ('id','$area','$lots')";
		$query=mysqli_query($con,$sql);
		
		$rel="SELECT *FROM `lots`";
		$result = mysqli_query($con,$rel);
		echo $count= mysqli_num_rows($result);
		
		if($count>0)
		{       
            header('Location:Add.php');  
        }
?>