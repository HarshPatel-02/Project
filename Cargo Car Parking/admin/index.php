<?php include "header.php";
ob_start();
include "conn.php";
	if(isset($_SESSION["adminemail"]))
	{
		
		header('Location:dashboard.php');   
	}   
	else{


if(isset($_POST['login']))
{

		$email = $_POST['email'];
		$password = $_POST["password"];
  
		$query = mysqli_query($con,"SELECT Username,Password FROM admin WHERE Username='".$email."' and Password='".$password."'");
		$row = mysqli_fetch_array($query, MYSQLI_ASSOC);  
		$count = mysqli_num_rows($query);
	
	if($count == 1)
		{  
			session_start();
		    $_SESSION["adminemail"] = $email;
		    $_SESSION["password"] = $password;
			echo "<script>alert('Welcome')</script>";
			sleep(2);
			header('Location:dashboard.php');   

		}else{
		  echo "<script>alert('Check Your Email Or Password ')</script>"; 
		}
	}
}
ob_end_flush();
?>


<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css"
    href="hstyle.css">
</head>
<body>

	<div id="body2">
<form method="POST">
	<table id="table1" >
			<tr>
				<td  class="details" colspan="2"><h2 align="center">Login</h2>
				</td>
			</tr>
			<tr>
				<td class="details">
					<label> Username</label>
				</td>
				<td class="details">
					<input type="text" name="email" class="txt button1" placeholder="Enter your Email" required="">

				</td>
			</tr><tr>
				<td class="details">
					<label>Password</label>
				</td>
				<td class="details">
					<input type="Password" name="password"class="txt button1" placeholder="Enter your Password" required="">

				</td>
			</tr>
			</tr><tr>
				<td class="details" colspan="2" align="center">
					<input type="Submit" name="login" value="Submit" class="btn button1">


				</td>
			</tr>
			
			
		</table>
	</form>
</div>

</body>

</html>