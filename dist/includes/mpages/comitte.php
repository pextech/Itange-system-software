<?php
session_start();
include '../dbcon.php';


$fullname=$_POST['fullname'];
$nid=$_POST['nid'];
$phone=$_POST['phone'];
$Email=$_POST['Email'];
$degree=$_POST['degree'];
$faculty=$_POST['faculty'];
$intake=$_POST['intake'];
$sector=$_POST['sector'];
$cell=$_POST['cell'];
$village=$_POST['village'];
$Post=$_POST['Post'];
$done=$_SESSION['own'];
       
$province=$_POST['province'];
$district=$_POST['district'];
$gender=$_POST['gender'];


$sql = "INSERT INTO client (fullname,  nid , phone ,email,degree,faculty,intake,gender,province,district,sector,cell,village,Post,done)
VALUES ('$fullname', '$nid', '$phone', '$Email','$degree','$faculty','$intake','$gender','$province','$district','$sector','$cell','$village', '$Post','$done')";

if ($conn->query($sql) === TRUE) {
    echo "<script type='text/javascript'>alert(' $fullname Successfully Saved ');</script>";
		echo "<script>window.location='../../../comitee/'</script>";
}
else {
    echo "Error: " . $sql . "<br>" . $conn->error;
} 

      



?>