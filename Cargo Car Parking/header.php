<!DOCTYPE html>
<html>

<head>
    <title>Header</title>
    <link rel="stylesheet" type="text/css"
    href="hstyle.css">
</head>
<body>
<div id="header">
    <div>
    
        <img src="./image/logo1.png" id="logo">
    </div>
    <div id="nav">
        <button class="button2 button1">
        <a href="index.php" class="hbtn">Home</a></button>
    </div>
    <div id="nav">
        <button class="button button1">
        <a href="Zone.php" class="hbtn">Paring Zone</a></button>
    </div>
    <div id="nav">
        <button class="button3 button1">
        <a href="booking.php" class="hbtn">Book Parking Lot</a></button>
    </div>
    <div id="nav">
        <button class="button button1">
        <a href="booking-detail.php" class="hbtn">Your Booking</a></button>
    </div>
    <div id="nav">
        <button class="button4 button1">
        <a href="feedback.php" class="hbtn">Feedback</a></button>
    </div>
    <!-- <div id="nav">
        <button class="button2 button1">
        <a href="login.php">Login</a></button>
    </div> -->
    <div id="nav">
    <?php
        session_start();
        if(isset($_SESSION['username']))
        {
    ?> 
    <button class="button5 button1">
    <a href="profile.php" class="hbtn" >
        <?php echo $_SESSION['username'];?></a></button>
    <?php 

                            }else{
                                ?>
         <button class="button4 button1"> <a href="login.php" class="hbtn">Log in </a> </button>  
                            <?php
                            }
                        ?>
    </div>
</div>
</body>
</html>