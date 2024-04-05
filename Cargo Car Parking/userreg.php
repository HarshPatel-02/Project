
<?php 
include("conn.php");
if(isset($_POST["sub"]))
{
    $fname = $_POST["first_name"];
    $lname = $_POST["last_name"];
    $username = $_POST["user_name"];
    $email = $_POST["email"];
    $contact = $_POST["contact_no"];
    $carname = $_POST["car_name"];
    $carno = $_POST["car_number"];
    $password = $_POST["password"];
   
	
    
    $d = mysqli_query($con,"insert into registration values
    ('id','".$fname."','".$lname."','". $username."','". $email."','".$contact."','".  $carname."','".  $carno."','".$password."')");

    if($d)
    {
        echo "<script>alert('Your Registation is Successful')</script>";
        echo "<script>location.href='login.php'</script>";
        echo "Success";
    }
    else{
        echo "<script>alert('Error in Registation ')</script>";
        echo "Un-Success";
    }
}

?>