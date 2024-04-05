<?php
 include "header.php";
if(!isset($_SESSION['email']))
{
    header('Location:login2.php');   
}   
?> 
<!DOCTYPE html>
<html>
<head>
    <title>Booking</title>
</head>
<body>
    <table align="center">
        <form action="booking1.php" method="post">
        <tr>
				<td colspan="2"><h2 align="center">Describe Your Vehicle</h2>
				</td>
			</tr>
			<tr>
				<td class="details">
					<label>Car Model</label>
				</td>
				<td>
					<input type="text" name="carm" class="txt button1" placeholder="Ex. Audi Q3" required="">

				</td>
			</tr><tr>
				<td colspan="2" align="center">
					<input type="Submit" name="sub" value="Proceed" class="btn button1">


				</td>
			</tr>
        </form>
    </table>
</body>
<?php include "footer.php";
?>
</html>
