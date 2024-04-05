<?php include "header.php";

if(isset($_POST["sub"]))
{
  $email = $_POST['email'];
  $password = $_POST["password"];
  include ('conn.php');
  $query = mysqli_query($con,"select * from registration where email='$email' && password ='$password'"); 
  $row = mysqli_fetch_array($query, MYSQLI_ASSOC);  
  $count = mysqli_num_rows($query);

  if($count == 1){  
    session_start();
    $_SESSION["email"] = $email;
    $_SESSION["password"] = $password;
    $_SESSION["username"] = $row['username'];
	$_SESSION["fname"] = $row['fname'];
	$_SESSION["lname"] = $row['lname'];
	$_SESSION["email"] = $row['email'];
	$_SESSION["mono"] = $row['contact'];
	$_SESSION["carname"] = $row['carname'];
	$_SESSION["carno"] = $row['carno'];

    echo "<script>alert('Welcome')</script>";
    header('Location:booking.php');   

  }else{
    echo "<script>alert('Check Your Email Or Password ')</script>"; 
  }

}
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css"
    href="hstyle.css">
</head>
<body>
	<div id ="body3">
	<table align="center">
		<form method="POST">
			<tr>
				<td colspan="2"><h1 align="center">Login</h1>
				</td>
			</tr>
			<tr>
				<td class="details">
					<label>Email</label>
				</td>
				<td>
					<input type="Email" name="email" class="txt button1" placeholder="Enter your Email" required="">

				</td>
			</tr><tr>
				<td class="details">
					<label>Password</label>
				</td>
				<td>
					<input type="Password" name="password"class="txt button1" placeholder="Enter your Password" required="">

				</td>
			</tr>
			</tr><tr>
				<td colspan="2" align="center">
					<input type="Submit" name="sub" value="Submit" class="btn button1">


				</td>
			</tr>
			<tr>
			<td colspan="2" align="center">
				<a href="registration.php">Registration</a>
				</td>
			</tr>
			
			
		</form>
</table>
</div>
<br/>

</body>
<?php include "footer.php";
?>
</html>
