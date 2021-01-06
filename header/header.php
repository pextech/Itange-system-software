<?php 
session_start();
include '../dist/includes/dbcon.php'; 
if(!isset($_SESSION['user_id']) ){
    echo "<script>alert('please login');</script>";
  session_unset();
  session_destroy();
  header('Location: ../index.php' );
  exit();
}
?>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Home | <?php include('../dist/includes/head.php');?> ::</title>
<!-- Favicon-->
<link rel="icon" href="../../assets/image/kyouth.png" type="image/x-icon">
<!-- Custom Css -->
<link rel="stylesheet" href="../assets/bootstrap.min.css">
<link rel="stylesheet" href="../assets/plugins/jquery-datatable/dataTables.bootstrap4.min.css">
<!-- Select2 -->
<!-- Bootstrap Select Css -->
<link rel="stylesheet" href="../assets/plugins/multi-select/css/multi-select.css">
<link rel="stylesheet" href="../assets/plugins/bootstrap-select/css/bootstrap-select.css" />
<link rel="stylesheet" href="../assets/plugins/select2/select2.css" />
<link rel="stylesheet" href="../assets/css/style.min.css"> 
<link href="../assets/plugins/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css" rel="stylesheet" />   
<script src="../assets/plugins/bootstrap-material-datetimepicker/js/jquery.js"></script> 
<script src="../assets/plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script> 

<style>

*{
   
}
body{
    background-color: rgb(238, 238, 238);
     font-size:12px;
}
h1 , p , h2 ,th , td{

    font-size:10px;
}
    </style>



</head>
<?php include '../dist/includes/modals.php'; ?>


<div class="overlay"></div>


<div class="navbar-right">
    <ul class="navbar-nav">
    
       <li class="dropdown">
       <?php
include('../dist/includes/modals.php');
$branch=$_SESSION['role'];
$query=mysqli_query($conn,"SELECT * from branch where branch_id='$branch'")or die(mysqli_error($conn));
  $row=mysqli_fetch_array($query);
           $branch_name=$row['branch_name'];
           $id=$_SESSION['user_id'];
?>  <?php 
                               
                               $sel=mysqli_query($conn,"SELECT * from employee  where  id='$id'")or die(mysqli_error($conn));
                               $prc=mysqli_fetch_array($sel);
                                 $id=$prc['id'];
                                 $sector=$prc['sector'];
                                 $province=$prc['province'];
                                 $district=$prc['district'];

                             ?>
                             <?php
                   if ( $province == 'super') { ?>
               <?php  
            $re= mysqli_query($conn,"SELECT count(*) as ptotal FROM request where status='0'  ORDER BY id ");
            
$rep = mysqli_fetch_array($re);
 $berqef = $rep['ptotal']; 
 ?>      
            <a href="javascript:void(0);" class="dropdown-toggle" title="Notifications" data-toggle="dropdown" role="button"><i class="zmdi zmdi-notifications"></i>
            <?php if ( $berqef >= 1) { ?>
                <div class="notify"><span class="heartbit"></span><span class="point"></span></div>
            <?php } ?>
            </a>
              

           
            <ul class="dropdown-menu slideUp2">
                <li class="header"><?php echo number_format($berqef); ?> Requests </li>
                <li class="body">
                    <ul class="menu list-unstyled">

     <?php 
$query="SELECT *  FROM request  where status='0'  ORDER BY id desc";
                    
$result=mysqli_query($conn,$query);

while($row=mysqli_fetch_array($result)){
 ?>
                        <li>
                            <a href="../request">
                                <div class="icon-circle bg-red"><i class="zmdi zmdi-delete"></i></div>
                                <div class="menu-info">
                                    <h4><?php echo $row['name']; ?></h4>
                                    <p>  from: <?php echo $row['province']; ?> , <?php echo $row['district']; ?> ,<?php echo $row['sector']; ?><br>registered on: <?php echo $row['date']; ?>  </p>
                                </div>
                            </a>
                        </li>
                         <?php } ?>
                    </ul>
                </li>
                <li class="footer"> <a href="../request">View All recent Requests</a> </li>
            </ul>
        </li>
</i></a></li> <?php } ?>




<?php
include('../dist/includes/modals.php');
$branch=$_SESSION['role'];
$query=mysqli_query($conn,"SELECT * from branch where branch_id='$branch'")or die(mysqli_error($conn));
  $row=mysqli_fetch_array($query);
           $branch_name=$row['branch_name'];
           $id=$_SESSION['user_id'];
?>  <?php 
                               
                               $sel=mysqli_query($conn,"SELECT * from employee  where  id='$id'")or die(mysqli_error($conn));
                               $prc=mysqli_fetch_array($sel);
                                 $id=$prc['id'];
                                 $sector=$prc['sector'];
                                 $province=$prc['province'];
                                 $district=$prc['district'];

                             ?>

                             <?php
                   if ($branch_name == 'superadmin' and $province !== 'super') { ?>
                 <?php  
            $re= mysqli_query($conn,"SELECT count(*) as ptotal FROM request where district='$district' and status='0'  ORDER BY id ");
$rep = mysqli_fetch_array($re);
 $berqef = $rep['ptotal']; 
 ?>          
            <a href="javascript:void(0);" class="dropdown-toggle" title="Notifications" data-toggle="dropdown" role="button"><i class="zmdi zmdi-notifications"></i>
               
            <?php if ( $berqef >= 1) { ?>
                <div class="notify"><span class="heartbit"></span><span class="point"></span></div>
            <?php } ?>
                        </a>
      
            <ul class="dropdown-menu slideUp2">
                <li class="header"><?php echo number_format($berqef); ?> Requests </li>
                <li class="body">
                    <ul class="menu list-unstyled">

     <?php 
$query="SELECT *  FROM request where district='$district' and status='0'  ORDER BY id desc";
                    
$result=mysqli_query($conn,$query);

while($row=mysqli_fetch_array($result)){
 ?>
                        <li>
                            <a href="../request">
                                <div class="icon-circle bg-red"><i class="zmdi zmdi-delete"></i></div>
                                <div class="menu-info">
                                    <h4><?php echo $row['name']; ?></h4>
                                    <p> from: <?php echo $row['province']; ?> , <?php echo $row['district']; ?> ,<?php echo $row['sector']; ?><br>registered on: <?php echo $row['date']; ?>  </p>
                                </div>
                            </a>
                        </li>
                         <?php } ?>
                    </ul>
                </li>
                <li class="footer"> <a href="../request">View All recent Requests</a> </li>
            </ul>
        </li>
</i></a></li> <?php } ?>







<?php
include('../dist/includes/modals.php');
$branch=$_SESSION['role'];
$query=mysqli_query($conn,"SELECT * from branch where branch_id='$branch'")or die(mysqli_error($conn));
  $row=mysqli_fetch_array($query);
           $branch_name=$row['branch_name'];
           $id=$_SESSION['user_id'];
?>  <?php 
                               
                               $sel=mysqli_query($conn,"SELECT * from employee  where  id='$id'")or die(mysqli_error($conn));
                               $prc=mysqli_fetch_array($sel);
                                 $id=$prc['id'];
                                 $sector=$prc['sector'];
                                 $province=$prc['province'];
                                 $district=$prc['district'];

                             ?>
                             <?php
                   if ($branch_name == 'admin'||  $branch_name == 'Co-ordinator') { ?>
                      <?php  
            $re= mysqli_query($conn,"SELECT count(*) as ptotal FROM request where status='0' and sector='$sector'   ORDER BY id ");
$rep = mysqli_fetch_array($re);
 $berqef = $rep['ptotal']; 
 ?>     
            <a href="javascript:void(0);" class="dropdown-toggle" title="Notifications" data-toggle="dropdown" role="button"><i class="zmdi zmdi-notifications"></i>
            <?php if ( $berqef >= 1) { ?>
                <div class="notify"><span class="heartbit"></span><span class="point"></span></div>
            <?php } ?>
                        </a>
      
            <ul class="dropdown-menu slideUp2">
                <li class="header"><?php echo number_format($berqef); ?> Requests </li>
                <li class="body">
                    <ul class="menu list-unstyled">

     <?php 
$query="SELECT *  FROM request where  sector='$sector'  and  status='0'   ORDER BY id desc";
                    
$result=mysqli_query($conn,$query);

while($row=mysqli_fetch_array($result)){
 ?>
                        <li>
                            <a href="../request">
                                <div class="icon-circle bg-red"><i class="zmdi zmdi-delete"></i></div>
                                <div class="menu-info">
                                    <h4><?php echo $row['name']; ?></h4>
                                    <p> from: <?php echo $row['province']; ?> , <?php echo $row['district']; ?> ,<?php echo $row['sector']; ?><br>registered on: <?php echo $row['date']; ?>  </p>
                                </div>
                            </a>
                        </li>
                         <?php } ?>
                    </ul>
                </li>
                <li class="footer"> <a href="../request">View All recent Requests</a> </li>
            </ul>
        </li>
</i></a></li> <?php } ?>
            <?php
include('../dist/includes/modals.php');
$branch=$_SESSION['role'];
$query=mysqli_query($conn,"SELECT * from branch where branch_id='$branch'")or die(mysqli_error($conn));
  $row=mysqli_fetch_array($query);
           $branch_name=$row['branch_name'];
?>
<?php 
                               
                               $sel=mysqli_query($conn,"SELECT * from employee  where  id='$id'")or die(mysqli_error($conn));
                               $prc=mysqli_fetch_array($sel);
                                 $id=$prc['id'];
                                 $sector=$prc['sector'];
                                 $province=$prc['province'];
                                 $district=$prc['district'];

                             ?>
               
<?php
                   if (  $branch_name == 'superadmin' and $province == 'super' ) {
                    echo'

                    <li><a href="../setting"  title="Setting"><i class="zmdi zmdi-settings zmdi-hc-spin"></i></a></li>';
           

         
        }?>
        <li><a href="../logout.php" class="mega-menu" title="Sign Out"><i class="zmdi zmdi-power"></i></a></li>
    </ul>
</div>

