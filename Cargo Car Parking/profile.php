<?php
include("header.php");
if(!isset($_SESSION['email']))
{
    header('Location:login.php');   
} 
?>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
    href="hstyle.css">
</head>
<body>
    <center>
    <h2 >Hello, <?php echo $_SESSION['fname'];?> </h2>
      <div id="body2">
        <form>
            <fieldset>
                <center> About You</center>
                <table>
                <tr>
                    <td><label> Name</label>
                    <td><input type="text" readonly class="txt button1" value='<?php echo $_SESSION['fname']; ?>' >
                </tr>
                <tr>
                    <td><label>Email </label>
                    <td><input type="text" readonly class="txt button1"  value="<?php echo $_SESSION['email'] ?>">
                </tr>
                <tr>
                    <td><label>Mo Number</label>
                    <td><input type="email" readonly class="txt button1"  value="<?php echo $_SESSION['mono']; ?>">
                </tr>
                <tr>
                    <td><label>Car Name</label>
                    <td><input type="email" readonly class="txt button1"  value="<?php echo $_SESSION['carname']; ?>">
                </tr>
                <tr>
                    <td><label >Car No.</label>
                    <td><input type="email" readonly class="txt button1"  value="<?php echo $_SESSION['carno'];?>">
                </tr>
                <tr align="center">
                    <td colspan=2>
                        <button type="button" class="button4 button1">
                            <a href="logout.php"  class="hbtn">Log Out</a></button>
                </tr>
                </table>
            </fieldset>
            <br>
        </form>  
        </div>
<?php

  include('footer.php');
?>
    </center>
</body>
</html>