<?php
session_start();
include '../dbcon.php';


$Supplier=$_POST['Supplier'];

$phone=$_POST['phone'];
$Email=$_POST['Email'];
$nid=$_POST['nid'];
$degree=$_POST['degree'];
$faculty=$_POST['faculty'];
$intake=$_POST['intake'];
$fnm=$_POST['fnm'];
$mnm=$_POST['mnm'];
$sector=$_POST['sector'];
$cell=$_POST['cell'];

$village=$_POST['village'];
$done=$_SESSION['own'];
$province=$_POST['province'];
$district=$_POST['district'];
$gender=$_POST['gender'];



$sql = "INSERT INTO supplier (name, phone ,email ,nid,degree,faculty,intake,fnm,mnm,gender,province,district,sector,cell,village,done)
VALUES ('$Supplier',  '$phone', '$Email','$nid','$degree','$faculty','$intake','$fnm','$mnm','$gender','$province','$district','$sector','$cell','$village' ,'$done')";


if ($conn->query($sql) === TRUE) {
    echo "<script type='text/javascript'>alert('$Supplier Successfully Saved ');</script>";
		header('Location: ' . $_SERVER['HTTP_REFERER']);
        exit;
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;

}


?>