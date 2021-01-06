<?php
session_start();
include '../dbcon.php';


$Supplier=$_POST['Supplier'];

$phone=$_POST['phone'];
$Email=$_POST['email'];
$nid=$_POST['nid'];
$gender=$_POST['gender'];
$degree=$_POST['degree'];
$faculty=$_POST['faculty'];
$intake=$_POST['intake'];
$fnm=$_POST['fnm'];
$mnm=$_POST['mnm'];
$sector=$_POST['sector'];
$cell=$_POST['cell'];

$village=$_POST['village'];
$province=$_POST['province'];
$district=$_POST['district'];



$sql = "INSERT INTO request (name, phone ,email ,nid,gender,degree,faculty,intake,fnm,mnm,province,district,sector,cell,village)
VALUES ('$Supplier',  '$phone', '$Email','$nid','$gender','$degree','$faculty','$intake','$fnm','$mnm','$province','$district','$sector','$cell','$village' )";

if ($conn->query($sql) === TRUE) {
   
		echo "<script>window.location='../../../register/success.php'</script>";
}
else {
    echo "Error: " . $sql . "<br>" . $conn->error;
} 

?>