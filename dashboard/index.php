<!doctype html>
<html class="no-js " lang="en">
   <?php include '../header/header.php'; ?>
   <?php include '../dist/includes/dbcon.php'; ?>
<body class="theme-blush">



<?php include '../link/link.php'; ?>

<?php include '../link/theme.php'; ?>



<section class="content">
    <div class="">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Dashboard</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.php"><i class="zmdi zmdi-home"></i><?php include('../dist/includes/head.php');?></a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ul>
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>
                </div>
            </div>
        </div>

        <div class="container-fluid">
          <?php
           include('../dist/includes/modals.php');
           $branch=$_SESSION['role'];
           $query=mysqli_query($conn,"SELECT * from branch where branch_id='$branch'")or die(mysqli_error($conn));
             $row=mysqli_fetch_array($query);
             $branch_name=$row['branch_name'];
             $id=$_SESSION['user_id'];
            
             
            
           ?>
                      <?php

                              if ($branch_name == 'admin' || $branch_name == 'Co-ordinator' ) { ?>
                               <?php 
                               
                               $sel=mysqli_query($conn,"SELECT * from employee  where  id='$id'")or die(mysqli_error($conn));
                               $prc=mysqli_fetch_array($sel);
                                 $id=$prc['id'];
                                 $sector=$prc['sector'];
                                 $district=$prc['district'];
                             ?> 
            <div class="row clearfix">
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon video">
                        <div class="body">

                      


                                <?php  
            $re= mysqli_query($conn,"SELECT count(*) as ptotal FROM request where sector='$sector' and status='0'  ");
$rep = mysqli_fetch_array($re);
 $berqefa= $rep['ptotal']; 
 ?>
        
                            <h6>Requests</h6>
                            <h2><?php echo number_format($berqefa); ?> <small class="info">requests</small></h2>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon layout">
                            <?php  
            $re= mysqli_query($conn,"SELECT count(*) as ptotal FROM request where sector='$sector' and status='1' ORDER BY id");
$rep = mysqli_fetch_array($re);
 $berqefa= $rep['ptotal']; 
 ?>
                        <div class="body card-primary" >
                            <h6>Approved</h6>
                            <h2><?php echo number_format($berqefa); ?> <small class="info">Youth volunteers</small></h2>
                           
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon music">
                           
                        <div class="body">
                            
  

                        <?php  
            $re= mysqli_query($conn,"SELECT count(*) as ptotal FROM request where sector='$sector' and status='2' ORDER BY id");
$rep = mysqli_fetch_array($re);
 $berqefa= $rep['ptotal']; 
 ?>
   
                            <h6>Denied</h6>
                            <h2><?php echo number_format($berqefa); ?> <small class="info">Requests</small></h2>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon music">
                           
                        <div class="body">
                            
  

  <?php  
          
            $rec= mysqli_query($conn,"SELECT nid, count(nid)  FROM request where sector='$sector' and status='1' and nid != ''  group by nid having count(nid) > 1  ");
            $rep = mysqli_num_rows($rec);
    
 
 ?>
                            <h6>Duplication</h6>
                           
                            <a href="../details/duplicate.php"> <h2><?php echo number_format($rep); ?> <small class="info">Duplicates</small></h2></a>
                        </div>
                    </div>
                </div>
                
            </div>

                              <?php } ?>

          



                <?php
           include('../dist/includes/modals.php');
           $branch=$_SESSION['role'];
           $query=mysqli_query($conn,"SELECT * from branch where branch_id='$branch'")or die(mysqli_error($conn));
             $row=mysqli_fetch_array($query);
             $branch_name=$row['branch_name'];
            
             
            
           ?>
                      <?php
                              if ($branch_name == 'admin' || $branch_name == 'Co-ordinator' ) { ?>
    <div class="body mb-2">
                            <div class="row clearfix">
                                <div class="col-lg-3 col-md-6 col-sm-6">
                                    <div class="state_w1 mb-1 mt-1">
                                        <div class="d-flex justify-content-between">
                                            <div>
                                            <?php  
            $rea= mysqli_query($conn,"SELECT count(*) as ptotal FROM supplier where sector='nyamirambo' ");
$repa = mysqli_fetch_array($rea);
 
 ?>
  <?php  
            $reb= mysqli_query($conn,"SELECT count(*) as ptotal FROM customer where sector='nyamirambo' ");
$repb = mysqli_fetch_array($reb);
 $berqefa= $repa['ptotal'] + $repb['ptotal']; 
 ?>
                                                <h5>youth</h5>
                                                <span><i class="ti-notepad"></i> volunteer Admin</span>
                                            </div>
                                            <div class="sparkline" data-type="bar" data-width="97%" data-height="55px" data-bar-Width="3" data-bar-Spacing="5" data-bar-Color="#868e96"><?php echo number_format($berqefa); ?>,2,3,7,6,4,8,1</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6">
                                    <div class="state_w1 mb-1 mt-1">
                                        <div class="d-flex justify-content-between">
                                            <div>                                
                                                <h5>1</h5>
                                                <span><i class="ti-user"></i> User</span>
                                            </div>
                                            <div class="sparkline" data-type="bar" data-width="97%" data-height="55px" data-bar-Width="3" data-bar-Spacing="5" data-bar-Color="#2bcbba">8,2,6,5,1,4,4,3</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6">
                                    <div class="state_w1 mb-1 mt-1">
                                        <div class="d-flex justify-content-between">
                                            <div>
                                            
                                                <h5>RYVCP</h5>
                                                <span><i class="ti-shopping-cart-full"></i> archivements</span>
                                            </div>
                                            <div class="sparkline" data-type="bar" data-width="97%" data-height="55px" data-bar-Width="3" data-bar-Spacing="5" data-bar-Color="#82c885">4,4,3,9,2,1,5,7</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6">
                                    <div class="state_w1 mb-1 mt-1">
                                        <div class="d-flex justify-content-between">
                                            <div>           
                                          
                                                <h5> predicted </h5>
                                                <span><i class="zmdi zmdi-alert-circle-o"></i> Pending</span>
                                            </div>
                                            <div class="sparkline" data-type="bar" data-width="97%" data-height="55px" data-bar-Width="3" data-bar-Spacing="5" data-bar-Color="#45aaf2">7,5,3,8,4,6,2,9</div>
                                        </div>
                                    </div>
                                </div>
                            </div><br/><br/><br/><br/><br/><br/>

                            <style>
                            .col-lg-3 , .col-md-6 , .col-sm-6{
                                margin-top:5%;

                                }
                            </style>

                <?php  }?>
 


  <?php
           include('../dist/includes/modals.php');
           $branch=$_SESSION['role'];
           $query=mysqli_query($conn,"SELECT * from branch where branch_id='$branch'")or die(mysqli_error($conn));
             $row=mysqli_fetch_array($query);
             $branch_name=$row['branch_name'];
            $id=$_SESSION['user_id'];
             
            
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
                              if ($branch_name == 'superadmin' and $province !== 'super'  ) { ?>
                              
                              
                              <div class="row clearfix">
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon video">
                        <div class="body">

                      


                                <?php  
            $re= mysqli_query($conn,"SELECT count(*) as ptotal FROM employee where district='$district' and province='$province'");
$rep = mysqli_fetch_array($re);
 $berqefa= $rep['ptotal']; 
 ?>
        
                            <h6>Admin</h6>
                            <h2><?php echo number_format($berqefa); ?> <small class="info">admins</small></h2>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon layout">
                            <?php  
            $re= mysqli_query($conn,"SELECT count(*) as ptotal FROM customer where district='$district'  ORDER BY id");
$rep = mysqli_fetch_array($re);
 $berqefa= $rep['ptotal']; 
 ?>
                        <div class="body card-primary" >
                            <h6>Co-ordinators</h6>
                            <h2><?php echo number_format($berqefa); ?> <small class="info">Co-ordinators</small></h2>
                           
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon music">
                           
                        <div class="body">
                            
  

  <?php  
            $reb= mysqli_query($conn,"SELECT count(*) as ptotal FROM customer where district='$district' and province='$province' ");
$repb = mysqli_fetch_array($reb);
 
 ?>
   <?php  
            $rec= mysqli_query($conn,"SELECT count(*) as ptotal FROM request where district='$district' and province='$province'and status='1' ");
$repc = mysqli_fetch_array($rec);
 $berqefa=  $repb['ptotal'] + $repc['ptotal']; 
 ?>
                            <h6>Youth volunteers</h6>
                            <h2><?php echo number_format($berqefa); ?> <small class="info">Youth volunteers</small></h2>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon music">
                           
                        <div class="body">
                            
  

  <?php  
          
            $rec= mysqli_query($conn,"SELECT nid, count(nid)  FROM request where district='$district' and status='1' and nid != '' group by nid having count(nid) > 1  ");
            $rep = mysqli_num_rows($rec);
    
 
 ?>
                            <h6>Duplication</h6>
                           
                            <a href="../details/duplicate.php"> <h2><?php echo number_format($rep); ?> <small class="info">Duplicates</small></h2></a>
                        </div>
                    </div>
                </div>
                
            </div>
           
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong><i class="zmdi zmdi-chart"></i> Total </strong> Youth volunteers / <?php echo $district ?> </h2>
                            
                        </div>
                        <div class="body mb-2">
                            <div class="row clearfix">
                        
                   

                                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon music">
                           
                        <div class="body">
        
  <?php  
            $reb= mysqli_query($conn,"SELECT count(*) as ptotal FROM request where province='kigali' and status='1' ");
$repb = mysqli_fetch_array($reb);
 $berqefa1=  $repb['ptotal']; 
 ?>
                            <h6>KIGALI</h6>
         <h2><?php echo number_format($berqefa1); ?> <small class="info">Youth volunteers</small></h2>

         
                            
                        </div>
                    </div>
                </div>

   




                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon music">
                           
                        <div class="body">
   
  <?php  
            $reb= mysqli_query($conn,"SELECT count(*) as ptotal FROM request where province='north' and status='1' ");
$repb = mysqli_fetch_array($reb);
 $berqefa2=  $repb['ptotal']; 
 ?>
                            <h6>NORTH</h6>
                            <h2><?php echo number_format($berqefa2); ?> <small class="info">Youth volunteers</small></h2>
                            

                        </div>
                    </div>
                </div>

             
                   




                
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon music">
                           
                        <div class="body">
                      
   
  <?php  
            $reb= mysqli_query($conn,"SELECT count(*) as ptotal FROM request where province='south' and status='1' ");
$repb = mysqli_fetch_array($reb);
 $berqefa3= $repb['ptotal']; 
 ?>
                            <h6>SOUTH</h6>
                            <h2><?php echo number_format($berqefa3); ?> <small class="info">Youth volunteers</small></h2>
                            

                        </div>
                    </div>
                </div>

              
           
           
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon music">
                           
                        <div class="body">
                       
  <?php  
            $reb= mysqli_query($conn,"SELECT count(*) as ptotal FROM request where province='east' and status='1' ");
$repb = mysqli_fetch_array($reb);
 $berqefa4=  $repb['ptotal']; 
 ?>
                            <h6>EAST</h6>
                            <h2><?php echo number_format($berqefa4); ?> <small class="info">Youth volunteers</small></h2>
                            

                        </div>
                    </div>
                </div>

           
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon music">
                           
                        <div class="body">
     
  <?php  
            $reb= mysqli_query($conn,"SELECT count(*) as ptotal FROM request where province='west' and status='1' ");
$repb = mysqli_fetch_array($reb);
 $berqefa5=  $repb['ptotal']; 
 ?>
                            <h6>west</h6>
                            <h2><?php echo number_format($berqefa5); ?> <small class="info">Youth volunteers</small></h2>
                            

                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon music">
                           
                        <div class="body">
         
  <?php  
            $reb= mysqli_query($conn,"SELECT count(*) as ptotal FROM request where status='0' and district='$district' ");
$repb = mysqli_fetch_array($reb);
 $berqefa=  $repb['ptotal']; 
 ?>
                            <h6>Requests</h6>
                            <h2><?php echo number_format($berqefa); ?> <small class="info">Youth volunteers</small></h2>
                            
                            <button id="read"  ><span><a href="../request/index.php">view details</a></span></button>

                        </div>
                    </div>
                </div>

                <div style="margin-top:8%;" class="col-lg-3 col-md-6 col-sm-12">
                                    <div class="state_w1 mb-1 mt-1">
                                        <div class="d-flex justify-content-between">
                                            <div>           
                                          
                                                <h6> Avg Measures </h6>
                                                <span><i class="zmdi ti-notepad"></i><small class="info"> Measures</small></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div  style="margin-top:5%;" class="col-lg-3 col-md-6 col-sm-12">
                                    <div class="state_w1 mb-1 mt-1">
                                        <div class="d-flex justify-content-between">
                                          
                                             <div class="sparkline" data-type="bar" data-width="100%" data-height="75px" data-bar-Width="5" data-bar-Spacing="8" data-bar-Color="#45aaf2"><?php echo number_format($berqefa1); ?>,<?php echo number_format($berqefa2); ?>,<?php echo number_format($berqefa3); ?>,<?php echo number_format($berqefa4); ?>,<?php echo number_format($berqefa5); ?></div>
                                        </div>
                                    </div>
                                </div>

                <?php  }?>
               
                <?php
           include('../dist/includes/modals.php');
           $branch=$_SESSION['role'];
           $query=mysqli_query($conn,"SELECT * from branch where branch_id='$branch'")or die(mysqli_error($conn));
             $row=mysqli_fetch_array($query);
             $branch_name=$row['branch_name'];
            $id=$_SESSION['user_id'];
             
            
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
                              if ($branch_name == 'superadmin' and $province == 'super'  ) { ?>
                              
                              
                              <div class="row clearfix">
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon video">
                        <div class="body">

                      


                                <?php  
            $re= mysqli_query($conn,"SELECT count(*) as ptotal FROM employee ");
$rep = mysqli_fetch_array($re);
 $berqefa= $rep['ptotal']; 
 ?>
        
                            <h6>Admin</h6>
                            <h2><?php echo number_format($berqefa); ?> <small class="info">admins</small></h2>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon layout">
                            <?php  
            $re= mysqli_query($conn,"SELECT count(*) as ptotal FROM customer ORDER BY id");
$rep = mysqli_fetch_array($re);
 $berqefa= $rep['ptotal']; 
 ?>
                        <div class="body card-primary" >
                            <h6>Co-ordinators</h6>
                            <h2><?php echo number_format($berqefa); ?> <small class="info">Co-ordinators</small></h2>
                           
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon music">
                           
                        <div class="body">
                            
  

  <?php  
            $reb= mysqli_query($conn,"SELECT count(*) as ptotal FROM customer  ");
$repb = mysqli_fetch_array($reb);
 
 ?>
   <?php  
            $rec= mysqli_query($conn,"SELECT count(*) as ptotal FROM request where status='1' ");
$repc = mysqli_fetch_array($rec);
 $berqefa=  $repb['ptotal'] + $repc['ptotal']; 
 ?>
                            <h6>Youth volunteers</h6>
                            <h2><?php echo number_format($berqefa); ?> <small class="info">Youth volunteers</small></h2>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon music">
                           
                        <div class="body">
                            
  

  <?php  
          
            $rec= mysqli_query($conn,"SELECT nid, count(nid)  FROM request where nid !='' and status='1'  group by nid having count(nid) > 1  ");
            $rep = mysqli_num_rows($rec);
    
 
 ?>
                            <h6>Duplication</h6>
                           
                            <a href="../details/duplicate.php"> <h2><?php echo number_format($rep); ?> <small class="info">Duplicates</small></h2></a>
                        </div>
                    </div>
                </div>
                
            </div>
           
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong><i class="zmdi zmdi-chart"></i> Total </strong> Youth volunteers / Rwanda </h2>
                            
                        </div>
                        <div class="body mb-2">
                            <div class="row clearfix">
                        
                   

                                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon music">
                           
                        <div class="body">
        
  <?php  
            $reb= mysqli_query($conn,"SELECT count(*) as ptotal FROM request where province='kigali' and status='1' ");
$repb = mysqli_fetch_array($reb);
 $berqefa1=  $repb['ptotal']; 
 ?>
                            <h6>KIGALI</h6>
         <h2><?php echo number_format($berqefa1); ?> <small class="info">Youth volunteers</small></h2>

         <button id="read"  ><span><a href="../details/kigali.php">view details</a></span></button>
                            
                        </div>
                    </div>
                </div>

   




                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon music">
                           
                        <div class="body">
   
  <?php  
            $reb= mysqli_query($conn,"SELECT count(*) as ptotal FROM request where province='north' and status='1' ");
$repb = mysqli_fetch_array($reb);
 $berqefa2=  $repb['ptotal']; 
 ?>
                            <h6>NORTH</h6>
                            <h2><?php echo number_format($berqefa2); ?> <small class="info">Youth volunteers</small></h2>
                            
                            <button id="read"  ><span><a href="../details/north.php">view details</a></span></button>

                        </div>
                    </div>
                </div>

             
                   




                
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon music">
                           
                        <div class="body">
                      
   
  <?php  
            $reb= mysqli_query($conn,"SELECT count(*) as ptotal FROM request where province='south' and status='1' ");
$repb = mysqli_fetch_array($reb);
 $berqefa3= $repb['ptotal']; 
 ?>
                            <h6>SOUTH</h6>
                            <h2><?php echo number_format($berqefa3); ?> <small class="info">Youth volunteers</small></h2>
                            
                            <button id="read"  ><span><a href="../details/south.php">view details</a></span></button>

                        </div>
                    </div>
                </div>

              
           
           
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon music">
                           
                        <div class="body">
                       
  <?php  
            $reb= mysqli_query($conn,"SELECT count(*) as ptotal FROM request where province='east' and status='1' ");
$repb = mysqli_fetch_array($reb);
 $berqefa4=  $repb['ptotal']; 
 ?>
                            <h6>EAST</h6>
                            <h2><?php echo number_format($berqefa4); ?> <small class="info">Youth volunteers</small></h2>
                            
                            <button id="read"  ><span><a href="../details/east.php">view details</a></span></button>

                        </div>
                    </div>
                </div>

           
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon music">
                           
                        <div class="body">
     
  <?php  
            $reb= mysqli_query($conn,"SELECT count(*) as ptotal FROM request where province='west' and status='1' ");
$repb = mysqli_fetch_array($reb);
 $berqefa5=  $repb['ptotal']; 
 ?>
                            <h6>west</h6>
                            <h2><?php echo number_format($berqefa5); ?> <small class="info">Youth volunteers</small></h2>
                            
                            <button id="read"  ><span><a href="../details/west.php">view details</a></span></button>

                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon music">
                           
                        <div class="body">
         
  <?php  
            $reb= mysqli_query($conn,"SELECT count(*) as ptotal FROM request where status='0' ");
$repb = mysqli_fetch_array($reb);
 $berqefa=  $repb['ptotal']; 
 ?>
                            <h6>Requests</h6>
                            <h2><?php echo number_format($berqefa); ?> <small class="info">Youth volunteers</small></h2>
                            
                            <button id="read"  ><span><a href="../request/index.php">view details</a></span></button>

                        </div>
                    </div>
                </div>

                <div style="margin-top:8%;" class="col-lg-3 col-md-6 col-sm-12">
                                    <div class="state_w1 mb-1 mt-1">
                                        <div class="d-flex justify-content-between">
                                            <div>           
                                          
                                                <h6> Avg Measures </h6>
                                                <span><i class="zmdi ti-notepad"></i><small class="info"> Measures</small></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div  style="margin-top:5%;" class="col-lg-3 col-md-6 col-sm-12">
                                    <div class="state_w1 mb-1 mt-1">
                                        <div class="d-flex justify-content-between">
                                          
                                             <div class="sparkline" data-type="bar" data-width="100%" data-height="75px" data-bar-Width="5" data-bar-Spacing="8" data-bar-Color="#45aaf2"> <?php echo number_format($berqefa1); ?>,<?php echo number_format($berqefa2); ?>,<?php echo number_format($berqefa3); ?>,<?php echo number_format($berqefa4); ?>,<?php echo number_format($berqefa5); ?></div>
                                       
                                        </div>
                                    </div>
                                </div>

                <?php  }?>
               





                        </div>        
                            </div>
                        </div>
                        <div class="body">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<div style="    text-align: center;
    margin-top: 40px;
    margin-bottom: 40px;">
              Copyright &copy;
                    <script>document.write(new Date().getFullYear())</script>
                    <span><a href="" target="_blank"><?php include('../dist/includes/head.php');?></a></span>
            </div>

<?php include'../fjs/index.php'; ?>

<style>
 button{
    margin-left: auto;
    width: 120px;
    height: 50px;
    background-color: #e7e7e7;
    border:none;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    cursor: pointer;
    padding: 6px 12px;
    margin-bottom: 0;
    font-size: 12px;
    font-weight: 400;
    line-height: 1.42857143;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    opacity: 0.8;
}

button span {
    cursor: pointer;
    display: inline-block;
    position: relative;
    transition: 0.5s;
  }
  
  button span:after {
    content: '»';
    position: absolute;
    opacity: 0;
    top: 0;
    right: -20px;
    transition: 0.5s;
    color:#357ebd;
    
  }
  
  button:hover span {
    padding-right: 20px;
  }
 button:hover span:after {
    opacity: 1;
    right: 0;
  }



</style>