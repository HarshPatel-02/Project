	<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="hstyle.css">
</head>

<body>
	<div>
	<?php include "header.php";?>
		
	<font size="5" style="Times New Roman">
	<div id="body2">
	<table align="center">
		<form method="post" action="userreg.php">
			<tr>
				<td colspan="2"><h2 align="center">Registration</h2>
				</td>
			</tr>
			<tr>
				<td>
					<label>FirstName</label>
				</td>
				<td>
					<input type="Text" name="first_name" class="txt button1" required="">

				</td>
			</tr>
			<tr>
				<td>
					<label>LastName</label>
				</td>
				<td>
					<input type="Text" name="last_name" class="txt button1" required="">
				</td>
			</tr><tr>
				<td>
					<label>UserName</label>
				</td>
				<td>
					<input type="Text" name="user_name"  class="txt button1" required="">

				</td>
			</tr><tr>
				<td>
					<label>Email</label>
				</td>
				<td>
					<input type="Email" name="email"  class="txt button1" required="">

				</td>
			</tr>
			<?php
//     if(isset($_POST["sub"]))
// {
//     $newemail = $_POST["email"];
//     include ('conn.php');

//     $que = mysqli_query($con,"select * from registration where email='$newemail'");

//       while($row=mysqli_fetch_array($que))
//       {
//           $email1=$row["email"];
//       }

// 		if($newemail==$email1)
// 		{
// 			"<script>alert('Email is already Taken by user ')</script>";
// 			echo '<p style="color:red">'. " *Email is already Taken by user". '</p>';
// 		}
// 		else{
			
// 			include('conn.php');
// 		}


// }

?>

			<tr>
				<td>
					<label>Contact</label>
				</td>
				<td>
					<input type="number" name="contact_no" class="txt button1" required="">

				</td>
			</tr><tr>
				<td>
					<label>CarName</label>
				</td>
				<td>
					<input type="Text" name="car_name" class="txt button1" required="">

				</td>
			</tr><tr>
				<td>
					<label>CarNo</label>
				</td>
				<td>
					<input type="Text" name="car_number"  class="txt button1" required="">

				</td>
			</tr><tr>
				<td>
					<label>Password</label>
				</td>
				<td>
					<input type="Password" name="password"  class="txt button1" required="">

				</td>
			</tr>
			</tr><tr>
				<td colspan="2" align="center">
					<input type="Submit" name="sub" value="Submit" class="btn button1">

				</td>
			</tr>

			
		</form>
</table>
</div>
<?php include "footer.php";?>
</font>
</div>
</body>
</html>
