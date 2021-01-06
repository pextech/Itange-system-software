<?php
session_start();
include '../dbcon.php';

 

$Supplier=$_POST['supplier'];
$phone=$_POST['phone'];
$Email=$_POST['Email'];
$degree=$_POST['degree'];
$faculty=$_POST['faculty'];
$intake=$_POST['intake'];
$sector=$_POST['sector'];
$cell=$_POST['cell'];
$village=$_POST['village'];
$nid=$_POST['nid'];
$done=$_SESSION['own'];
$province=$_POST['province'];
$district=$_POST['district'];
$gender=$_POST['gender'];





$sql = "INSERT INTO customer (fullname, phone ,email,degree,faculty,intake,gender,province,district,sector,cell,village, nid ,done)
VALUES ('$Supplier', '$phone', '$Email','$degree','$faculty','$intake','$gender','$province','$district','$sector','$cell','$village', '$nid', '$done')";

if ($conn->query($sql) === TRUE) {
    echo "<script type='text/javascript'>alert(' $Supplier Successfully Saved ');</script>";
		header('Location: ' . $_SERVER['HTTP_REFERER']);
        exit;
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}



?>