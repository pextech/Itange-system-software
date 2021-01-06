<?php

   
include('../dist/includes/dbcon.php');
 
    if(!isset($_SESSION['user_id']) ){
        echo "<script>alert('please login');</script>";
      session_unset();
      session_destroy();
      header('Location: ../index.php' );
      exit();
    }

    else {
$id=$_SESSION['user_id'];
$_SESSION['user_id']=$id;
    $sql = "SELECT * from employee natural join branch where id='$id'";
    $query = $conn->query($sql);
    $user = $query->fetch_assoc();
    }
?><style>

*{
   
}
body{
    background-color: rgb(238, 238, 238);
     font-size:12px;
}
h1 , p , h2{

    font-size:12px;
}
    </style>

<!-- Left Sidebar -->
<aside id="leftsidebar" class="sidebar">
    <div class="navbar-brand">
        <button class="btn-menu ls-toggle-btn" type="button"><i class="zmdi zmdi-menu"></i></button>
        <a href="#"><img style="width:50px; border:1px solid #357ebd; height:50px;border-radius:110%;"  src="../assets/images/yv.jpg" width="75" alt="Aero"><span class="m-l-10">
        <?php include('../dist/includes/head.php');?></span></a>
    </div>
    <div class="menu">
        <ul class="list">
        
            <li>
                <div class="user-info">

                    <a class="image" href="#">
                    <img src="<?php echo (!empty($user['photo'])) ? '../assets/images/'.$user['photo'] : '../assets/images/admin.png'; ?>" style="width: 75%;" alt="User"></a>
                    <div class="detail">
                        <h6 style="font-size:14px; text-transform:lowercase; font-weight:italic;"><?php echo  $user['fullname'];  ?></h6>
                        <small style="background-color:rgb(74, 137, 179);color: white;padding: 5px;"><?php
                             
                             $user=$user['post']; 
                            $usr=mysqli_query($conn,"SELECT * FROM branch WHERE branch_id='$user'");
                            $fet=mysqli_fetch_array($usr);

                            echo $fet['branch_name'];

                             ?>
                                
                            </small>                        
                    </div>
                </div>
            </li>

            <li class="active open"><a href="../Dashboard"><i class="zmdi zmdi-home"></i><span>Dashboard</span></a></li>

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
                   if ($branch_name == 'superadmin') {
                    echo'

            <li class="sort-amount-asc"><a href="../admin"><i class="ti-id-badge"></i><span>Admins-board</span></a></li>';
            }?>
            
            <?php
                   if ($branch_name == 'superadmin' || $branch_name == 'Co-ordinator' ) {
                    echo'

            <li class="sort-amount-asc"><a href="../comitee"><i class="ti-id-badge"></i><span>Committee</span></a></li>';
            }?> <?php
                   if (  $branch_name == 'superadmin') {
                    echo'

           <li class="sort-amount-asc"><a href="../cordinators"><i class="ti-bookmark-alt"></i><span>Co-ordinators</span></a></li>';
            }?> 
            
           
             <?php
        if ( $branch_name == 'admin'|| $branch_name == 'superadmin' || $branch_name == 'Co-ordinator' ) {
                    echo'

           <li class="sort-amount-asc"><a href="../request"><i class="ti-user"></i><span> Requests</span></a></li>';
           
            }?> 

           
            <?php
        if ( $branch_name == 'admin'|| $branch_name == 'superadmin' || $branch_name == 'Co-ordinator' ) {
                    echo'

           <li class="sort-amount-asc"><a href="../youth"><i class="ti-notepad"></i><span>Approved</span></a></li>';
           
            }?> 
             <?php
        if ( $branch_name == 'admin'|| $branch_name == 'superadmin' || $branch_name == 'Co-ordinator' ) {
                    echo'

           <li class="sort-amount-asc"><a href="../denied"> <i class="zmdi zmdi-alert-circle-o "></i>   <span>denied</span></a></li>';
           
            }?> 
           
<?php
                   if (  $branch_name == 'superadmin' and $province == 'super' ) {
                    echo'

                    <li><a href="../setting"  title="Setting"><i class="zmdi zmdi-settings zmdi-hc-spin"></i><span>Settings</span></a></li>';
           

         
        }?>
            <?php
        if ( $branch_name == 'admin'|| $branch_name == 'superadmin' || $branch_name == 'Co-ordinator' ) {
                    echo'

                    <li><a href="../logout.php" class="mega-menu" title="Sign Out"><i class="zmdi zmdi-power"></i><span>Log-out</span></a></li>';
           
            }?> 
    </div>
</aside>