<?php
 include "header.php";
	ob_start();
	if(!isset($_SESSION['username']))
	{
    	header('Location:login2.php');   
	}   
?>

<!DOCTYPE html>
<html lang="en">
<head>
        <title>Book Parking Lot</title>
</head>
<body>
<table align="center">
		<form method="POST" action="parking1.php">
			<tr>
				<td colspan="2" class="details"><h2 align="center">Parking Details</h2>
				<p>Recommended Region For You - as per your needs.</p>
				</td>
			</tr>
			<tr>
				<td class="details">
					<label>Parking Area :</label>
				</td>
				<td class="details">
				<select class="txt button1" required name="area">
                            <option selected hidden >Select one</option>
                            <?php
                            include('conn.php');
                            $query = mysqli_query($con,"select * from lots ");
                            $count = mysqli_num_rows($query);
                            $row=mysqli_fetch_array($query);
                            echo "<option  value='$row[1]' >  $row[1]  </option>";
                            ?>
                        </select>
				</td>
			</tr><tr>
				<td class="details">
					<label>Parking Lots :</label>
				</td>
				<td class="details">
				<select class="txt button1" name="lots">
                            <option selected hidden >Select one</option>
                            <?php
                            include('conn.php');
                            $query = mysqli_query($con,"select * from lots where area='Indira Circle'");
                            $count = mysqli_num_rows($query);
							
							$query1 = mysqli_query($con,"select * from booking where area='Indira Circle'");
                            $count1 = mysqli_num_rows($query1);
							$i = array();
							$n = 0;
							while($row1=mysqli_fetch_array($query1))
							{	
								$i[$n]=$row1[lots];
								$n++;
							}
							$i1 = array();
							$n1 = 0;
							while($row=mysqli_fetch_array($query))
							{	
								$i1[$n1]=$row[lots];
								$n1++;
							}
					for($n1=0;$n1<6;$n1++)
					{
						for($n=0;$n<3;$n++)
						{
							if($i[$n]!=$i1[$n1])
							{
                            	echo" <option value='$i1[$n1]'>$i1[$n1]
								</option>";
							}
						}
					}
						 ?>
                        </select>
				</td>
			</tr>
			<tr>
				<td class="details">
					<label>Number Plate :</label>
				</td>
				<td class="details">
				<input type="text" class="txt button1" required="" name="pno" placeholder="GJ 11 QQ 7944">
				</td>
			</tr>
			<tr>
				<td class="details">
				<label>Enter UPI Id/Number :</label>
				</td>
				<td class="details">
				<input type="text" class="txt button1" name="upino" required="" placeholder="635XXXXXX6@ybl" />     
				</td>
			</tr>
			<tr>
			<td class="details" colspan="2" align="center">
			<P class="mt-0">Note: Parking Fees: 40/-</P>
				</td>
			</tr>
			<tr>
			<td class="details" colspan="2" align="center">
			<button type="submit" class="txt button1" name="sub">Proceed Date & Time</button>
				</td>
			</tr>
			
		</form>
</table>
<?php
    include("footer.php");
	for($n=0;$n<3;$n++)
	{
	echo $i[$n]."<br>";

	}
    ?>

</body>
</html>
