<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css"
    href="hstyle.css">
</head>

<body><div>
<?php include "header.php";?>
<?php include "footer.php";?>
</font>
</div>
</body>
</html>
<?php 
$com=mysqli_connect("localhost","root","","flygo");
if(isset($_POST['sub']))
{
    $fname = $_POST['first_name'];
    $lname = $_POST['last_name'];
    $username = $_POST['user_name'];
    $email = $_POST['email'];
    $contact = $_POST['contact_no'];
    $carname = $_POST['car_name'];
    $carno = $_POST['car_number'];
    $password = $_POST['password'];
	  
		$insert="INSERT INTO `registration`(`fname`,`lname`,`username`,`email`,`contact`,`carname`,`carno`,`password`) VALUES 
		('$fname','$lname','$username','$email','$contact','$carname','$carno','$password')";
		$result=mysqli_query($com,$insert);
		if($result==TRUE)
		{
			header("location:login.php");
		}
		else
		{
		  echo"not";
		}

	}
?>