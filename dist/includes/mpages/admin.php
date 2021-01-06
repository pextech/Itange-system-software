<?php
session_start();
include '../dbcon.php';


$fullname=$_POST['fullname'];
$Username=$_POST['Username'];
$Password=$_POST['Password'];
$nid=$_POST['nid'];
$phone=$_POST['phone'];
$Email=$_POST['Email'];
$degree=$_POST['degree'];
$faculty=$_POST['faculty'];
$intake=$_POST['intake'];
$sector=$_POST['sector'];

$Post=$_POST['Post'];
$done=$_SESSION['own'];

$province=$_POST['province'];
$district=$_POST['district'];
$gender=$_POST['gender'];
 
          


$sql = "INSERT INTO employee (fullname, username, password, nid , phone ,email,degree,faculty,intake,gender,province,district,sector,post,done)
VALUES ('$fullname', '$Username', '$Password','$nid', '$phone', '$Email','$degree','$faculty','$intake','$gender','$province','$district','$sector', '$Post','$done')";

if ($conn->query($sql) === TRUE) {
    echo "<script type='text/javascript'>alert('$fullname Successfully Saved ');</script>";
		echo "<script>window.location='../../../admin/'</script>";
}
else {
    echo "Error: " . $sql . "<br>" . $conn->error;
} 

      



?>