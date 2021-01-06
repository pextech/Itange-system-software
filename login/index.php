<?php 

session_start();
include('../dist/includes/dbcon.php');


?>
<!DOCTYPE html>
<html>
	<head>
		<style type="text/css">


		.loader {
    position: fixed;
    left: 0px;
    top: 0px;
    width: 100%;
    height: 100%;
    z-index: 9999;
    background: url(loading.gif) 50% 50% no-repeat #f9f9f9;
    opacity: 1;
}

	</style>


</head>	
<body>
	<div class="loader"></div>

<script src="../dist/js/date_time.js"></script>
</body>

</html>
<?php 


if(isset($_POST['login']))
{

$user_unsafe=$_POST['username'];
$pass_unsafe=$_POST['password'];
//$branch=$_POST['branch'];

$user = mysqli_real_escape_string($conn,$user_unsafe);
$pass1 = mysqli_real_escape_string($conn,$pass_unsafe);

$pass1=($pass1);
$salt="a1Bz20ydqelm8m1wql";
$pass=$pass1;




$query=mysqli_query($conn,"SELECT * FROM employee  where username='$user' and password='$pass' ")or die(mysqli_error($conn));
	$row=mysqli_fetch_array($query);
           $id=$row['id'];
           $name=$row['fullname'];
           
           $role=$row['post'];
           $user=$row['username'];
           $role=$row['post'];
           $query=mysqli_query($conn,"SELECT * from branch where branch_id='$role'")or die(mysqli_error($conn));
           $branch_retr=mysqli_fetch_array($query);
           $branch_name=$branch_retr['branch_name'];
           
           $first=$row['fullname'];
           $counter=mysqli_num_rows($query);

           $id=$row['id'];
           
           $_SESSION['user_id']=$id;
	       $_SESSION['name']=$user;
           $_SESSION['role']=$role;
           $_SESSION['sector']=$sector;
           $_SESSION['own']=$name;
           $_SESSION['branch_name']=$branch_name;
           $_SESSION['id']=$first;
  


if($role=="3")
{	
$admin="has logged in the system at ";  
   mysqli_query($conn,"INSERT INTO history_log(user_id,action) VALUES('$branch_name','$admin')")or die(mysqli_error($conn));

echo "<script type='text/javascript'>document.location='../dashboard/'</script>";
}
  elseif ($role=="1") {
    $cashier="has logged in the system at ";  
   mysqli_query($conn,"INSERT INTO history_log(user_id,action) VALUES('$branch_name','$cashier')")or die(mysqli_error($conn));

    echo "<script type='text/javascript'>document.location='../dashboard/'</script>";
}
elseif ($role=="2") {
    $product="has logged in the system at ";  
   mysqli_query($conn,"INSERT INTO history_log(user_id,action) VALUES('$branch_name','$product')")or die(mysqli_error($conn));

    echo "<script type='text/javascript'>document.location='../dashboard/'</script>";
}
else
{
echo "<script type='text/javascript'>alert('Invalid Username or Password!');
document.location='../index.php'</script>";
}
}
?>

	
