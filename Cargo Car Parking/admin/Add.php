<?php
session_start();
	if(!isset($_SESSION["adminemail"]))
	{
		
		header('Location:index.php');   
	}   

?>

<!DOCTYPE html>
	<html>
	<head>
		<title>Register user</title>
		<link rel="stylesheet" type="text/css" href="style.css">
		<link rel="stylesheet" type="text/css" href="hstyle.css">
	</head>
	<body>
		<div class="sidebar">
		<?php
		include "sidebar.php";
		include "header1.php";
		?>
	</div>
	<div class="main-content">
		<main>
		<h1>Add Lots</h1>
		<br>
		<hr>
		<br>
        <table>
		<form method="post" action="Add1.php">								
		<tr>
            <td  class="details">
				<label>Select Area</label>				
			</td>
			<td  class="details">
				<select name="area" id="" class="txt button1">
				<option>Select one</option>
				<option value="Indira Circle">Indira Circle</option>
				<option value="Mavdi">Mavdi</option>
				</select>
			</td>
		</tr>
		<tr>
		    <td class="details">
				Lot Name/No.											
			</td>
			<td  class="details">
				<input type="text" name="lots" value="PL 0" class="txt button1" required>
			</td>	
		</tr>																			
		<tr>
			<td colspan="2" class="details" >
				<input type="Submit" name="Submit" value="Submit" class="btn button1"> 
			</td>
		</tr>
		</form>
		</table>
		</main>
	</div>
	</body>
	</html>