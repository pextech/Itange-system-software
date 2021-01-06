<?php

$conn = mysqli_connect("localhost","root","","itange");

if(! $conn)

{

  echo" error". mysqli_error();

 }
 
 else{

   echo"connected";

}

?>