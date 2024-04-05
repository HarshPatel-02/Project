<!DOCTYPE html>
<html>
<head>
    <title>Parking Zones</title>

    <?php
        include("header.php");
        include("conn.php");
    ?>
	<style>
	.strt{
		display:inline-block;
		padding-top:10px;
	}
	.strt p, .status{
		font-weight:bold;
		text-align:center;
	}
	body table{
		width: 300px;
		background:yellow;
	}
	.tbl{
		background:#ffff80;
	}
	body table tr td{
		width:50%;
		border:solid 1px gray;}
	.status{
		margin-top:10px;
	}
</style>

</head>
<body>
<center>
					<p>INDIRA CIRCLE</p>
					<table  >
						<?php
					 		$street ="Indira Circle";
		
						 	$unhide="unhide";
				
						include('conn.php');
						$query = mysqli_query($con,"SELECT * FROM lots  WHERE area='$street'");
						$count = mysqli_num_rows($query);
						while($row=mysqli_fetch_array($query))
						{  ?>
						<tr>	
							<td align="center"
						 	<?php 
								$sql="SELECT * FROM booking WHERE area='$street' and lots='$row[2]' and status='SUCCESS'";
								$result=mysqli_query($con, $sql);
								$count=mysqli_num_rows($result);
								if($count==1)
								{	
									echo "style=\"background: red;color:white;font-weight: bold;\"";
								}	
							?>>
							<?php echo $row[2] ;?> 
							</td>
						</tr>	
					<?php } ?>
					</table>
				<br>
</center>
<?php
  include('footer.php');
?>
</body>
</html>