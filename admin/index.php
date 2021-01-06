
<!doctype html>
<html class="no-js " lang="en">
   <?php include'../header/header.php'; ?>
<body class="theme-blush">

  <?php
if (isset($_GET['delete_id'])) {
$id = $_GET['delete_id'];

mysqli_query($conn,"DELETE FROM employee WHERE id='$id'");

echo "<script>window.location='../admin/'</script>";
}
if (isset($_GET['update_id'])) {
    $id = $_GET['update_id'];
  
    mysqli_query($conn, "UPDATE employee SET fullname='$fullname',username='$Username',password='$Password',phone='$phone',email='$Email',nid='$nid',location='location' ,post='$Post',done='$done' WHERE id='$id'");
    echo "<script>window.location='../admin/'</script>";
    }
    

?>
<?php include '../link/link.php'; ?>

<?php include '../link/theme.php'; ?>

<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Admin-board</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../dashboard/index.php"><i class="zmdi zmdi-home"></i> <?php include('../dist/includes/head.php');?></a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Admins</a></li>
                        <li class="breadcrumb-item active">List Admins</li>
                    </ul>
                    <br>
                    <div class="col-md-2">
                    <a href="#" data-toggle="modal" data-target="#employee" style="color:white;"> <button  class="btn btn-sm btn-success" > New Admin</button></a>
   </div>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>                                
                </div>
            </div>
        </div>

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
                <div class="col-lg-12">
                    <div class="card">
                    <a href="../dashboard"><img src="../images/prev.png" style="height:20px; width:30px;"><img src="../images/prev.png" style=" margin-right:10px;height:10px; width:20px;"></a>
                        <div class="header">
                            <h2><strong>Yv</strong> Admins </h2>
                            
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table id="editable_table" class="table table-bordered table-striped table-hover dataTable js-exportable ">
                                    <thead>
                                        <tr>
          <th >ID</th>
            <th>Full Name</th>
            <th>Username  </th>
            <th >Password</th>
            <th>Phone </th>
            <th>Email</th>
            <th>degree</th>
            <th>faculty</th>
            <th>Intake</th> 
            <th>gender</th>
            <th>Province</th>
            <th>district</th>
            <th>sector</th>
           
            <th>N.id</th>
            <th>Post</th>
            <th>Action</th>
          </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
       <th >ID</th>
            <th>Full Name</th>
            <th>Username  </th>
            <th >Password</th>
            <th>Phone </th>
            <th>Email</th>
            <th>degree</th>
            <th>faculty</th>
            <th>Intake</th>
            <th>gender</th>
            <th>Province</th>
            <th>district</th>
            <th>sector</th>
           
            <th>N.id</th>
            <th>Post</th>
            <th>Action</th>
          </tr>
                                    </tfoot>
                                    <tbody>
                                    	 <?php
include("../config/index.php");

  $stmt = $DB_con->prepare('SELECT * FROM employee ORDER BY id');
  $stmt->execute();
  
  if($stmt->rowCount() > 0)
  {
    while($row=$stmt->fetch(PDO::FETCH_ASSOC))
    {
      extract($row);
      
      
      ?>
                                        <tr>
          <td><?= $id; ?></td>
          <td><?= $fullname; ?></td>
          <td><?= $username  ; ?></td>
          <td><?= "*********";  ; ?></td>
          <td><?= $phone ; ?></td>
          <td><?= $email ; ?></td>
          <td><?= $degree ; ?></td>  
         <td><?= $faculty ; ?></td>   
         <td><?= $intake ; ?></td>
         <td><?= $gender ; ?></td>
         <td><?= $province ; ?></td>
         <td><?= $district ; ?></td>
          <td><?= $sector ; ?></td>
         
          <td><?= $nid ; ?></td>
       
          <td><?php
          $query=mysqli_query($conn,"SELECT * from branch where branch_id= '$post' ")or die(mysqli_error($conn));
         $branch_retr=mysqli_fetch_array($query); 
          echo $branch_retr['branch_name']; ?></td>
          <td>
         
          
          <a class="btn btn-danger" href="?delete_id=<?php echo $id ?>" title="click to delete" onclick="return confirm('Are you sure to remove <?php echo $fullname; ?>?')">
          <div class="icon-circle bg-red"><i class="zmdi zmdi-delete"></i></div></a></td>
          <?php include '../update/youth.php'; ?>
                                        </tr>
                                       <?php
    }
    
  
  }
  else
  {
    ?>
    
      
        <div class="col-xs-12">
          <div class="alert alert-warning">
              <span class="glyphicon glyphicon-info-sign"></span> &nbsp; No Admin found....
            </div>
        </div>
        <?php
  }
  
?>
                                    </tbody>
                                </table>
                            </div>
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
                <div class="col-lg-12">
                    <div class="card">
                    <a href="../dashboard"><img src="../images/prev.png" style="height:20px; width:30px;"><img src="../images/prev.png" style=" margin-right:10px;height:10px; width:20px;"></a>
                        <div class="header">
                            <h2><strong>Yv</strong> Admins /<?php echo $prc['district']; ?></h2>
                            
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table id="editable_table" class="table table-bordered table-striped table-hover dataTable js-exportable ">
                                    <thead>
                                        <tr>
          <th >ID</th>
            <th>Full Name</th>
            <th>Username  </th>
            <th >Password</th>
            <th>Phone </th>
            <th>Email</th>
            <th>degree</th>
            <th>faculty</th>
            <th>Intake</th> 
            <th>gender</th>
            <th>Province</th>
            <th>district</th>
            <th>sector</th>
           
            <th>N.id</th>
            <th>Post</th>
           
          </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
       <th >ID</th>
            <th>Full Name</th>
            <th>Username  </th>
            <th >Password</th>
            <th>Phone </th>
            <th>Email</th>
            <th>degree</th>
            <th>faculty</th>
            <th>Intake</th>
            <th>gender</th>
            <th>Province</th>
            <th>district</th>
            <th>sector</th>
          
            <th>N.id</th>
            <th>Post</th>
            
          </tr>
                                    </tfoot>
                                    <tbody>
                                    	 <?php
include("../config/index.php");


  $stmt = $DB_con->prepare("SELECT * FROM employee where district='$district' ORDER BY id desc");
  $stmt->execute();
  
  if($stmt->rowCount() > 0)
  {
    while($row=$stmt->fetch(PDO::FETCH_ASSOC))
    {
      extract($row);
      
      
      ?>
                                        <tr>
          <td><?= $id; ?></td>
          <td><?= $fullname; ?></td>
          <td><?= $username  ; ?></td>
          <td><?= "*********";  ; ?></td>
          <td><?= $phone ; ?></td>
          <td><?= $email ; ?></td>
          <td><?= $degree ; ?></td>  
         <td><?= $faculty ; ?></td>   
         <td><?= $intake ; ?></td>
         <td><?= $gender ; ?></td>
         <td><?= $province ; ?></td>
         <td><?= $district ; ?></td>
          <td><?= $sector ; ?></td>
       
          <td><?= $nid ; ?></td>
       
          <td><?php
          $query=mysqli_query($conn,"SELECT * from branch where branch_id= '$post' ")or die(mysqli_error($conn));
         $branch_retr=mysqli_fetch_array($query); 
          echo $branch_retr['branch_name']; ?></td>

         
          <?php include '../update/youth.php'; ?>
                                        </tr>
                                       <?php
    }
    
  
  }
  else
  {
    ?>
    
      
        <div class="col-xs-12">
          <div class="alert alert-warning">
              <span class="glyphicon glyphicon-info-sign"></span> &nbsp; No Admin found....
            </div>
        </div>
        <?php
  }
  
?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                              <?php } ?>


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
<?php include'../fjs/other.php'; ?>
</body>
</html>