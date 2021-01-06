<?php 
include('dist/includes/dbcon.php');
session_start();

session_unset();
session_destroy(); 
header('Location:index.php'); 

 $id=$_SESSION['user_id'];
$us= mysqli_query($conn,"SELECT * FROM employee WHERE id='$id'");
$user = mysqli_fetch_array($us);

$setname= mysqli_query($conn,"SELECT * FROM setting");
 $namme=mysqli_fetch_array($setname);

 $id=$_SESSION['user_id'];
$_SESSION['user_id']=$id;
    $sql = "SELECT * from employee natural join branch where id='$id'";
    $query = $conn->query($sql);
    $user = $query->fetch_assoc();
    $emp=$user['fullname'];

 

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
<?php
function sendSMS($to,$msg)
{
$from= "ubwitange";
$data= array(
"sender"=>$from,
"recipients"=>$to,
"message"=>$msg);
$url="https://www.intouchmomo.co.rw/api/sendsms/.json";
$data=http_build_query($data);
$username="pextech";
$password="Mc1639_1639";

$ch=curl_init();
curl_setopt($ch,CURLOPT_URL,$url);curl_setopt($ch,CURLOPT_USERPWD,$username.":".$password);
curl_setopt($ch,CURLOPT_POST,true);curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
curl_setopt($ch,CURLOPT_SSL_VERIFYPEER,0);
curl_setopt($ch,CURLOPT_POSTFIELDS,$data);
$result=curl_exec($ch);
$httpcode=curl_getinfo($ch,CURLINFO_HTTP_CODE);
curl_close($ch);
}
    
    $to= $namme['phone'];

	$msg= "ufite aba youth volunteers  ".$user['fullname']." bashya ".number_format($berqef)."Amafaranga Atishyuwe (ideni)".number_format($repot)."  Murakoze";

   sendSMS($to,$msg);

	$date = date("Y-m-d H:i:s");
	$id=$user['username'];
	$remarks="has logged out the system at ";  
	mysqli_query($conn,"INSERT INTO history_log(user_id,action,date) VALUES('$id','$remarks','$date')")or die(mysqli_error($conn));
	
	session_destroy();
	
 echo '<meta http-equiv="refresh" content="2;url=index.php">';
?>
	<div id="cssload-pgloading">
		<div class="cssload-loadingwrap">
			<ul class="cssload-bokeh">
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>
		</div>
	</div>
</div>
</body>
</html>
