<?php
session_start();
include '../dbcon.php';

$id=$_POST['id'];
$company=$_POST['company'];

$Location=$_POST['Location'];
$Phone=$_POST['Phone'];

$done=$_SESSION['own'];

 


$sql = "UPDATE setting SET company='$company',location='$Location',phone='$Phone',done='$done' WHERE id='$id'";

if ($conn->query($sql) === TRUE) {
    echo "<script type='text/javascript'>alert(' $company  Successfully UPDATED ');</script>";
		echo "<script>window.location='../../../setting/'</script>";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}



?>