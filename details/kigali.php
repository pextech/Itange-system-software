<!doctype html>
<html class="no-js " lang="en">
   <?php include'../header/header.php'; ?>
<body class="theme-blush">

<!-- Page Loader -->
<?php
if (isset($_GET['delete_id'])) {
$id = $_GET['delete_id'];
//$edit_state = true;
mysqli_query($conn,"DELETE FROM request WHERE id='$id'");
//$record = mysqli_fetch_array($rec);
echo "<script>window.location='kigali.php'</script>";
}
?>
<?php include '../link/link.php'; ?>

<?php include'../link/theme.php'; ?>

<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Youth volunteer</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../dashboard/index.php"><i class="zmdi zmdi-home"></i> <?php include('../dist/includes/head.php');?></a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Youth volunteer</a></li>
                        <li class="breadcrumb-item active">List Youth volunteers</li>
                    </ul>
                    <br>
                    <div class="col-md-2">
   </div>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>                                
                </div>
            </div>
        </div>

     


<!-- Exportable Table -->
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                    <a href="../dashboard"><img src="../images/prev.png" style="height:20px; width:30px;"><img src="../images/prev.png" style=" margin-right:10px;height:10px; width:20px;"></a>
                        <div class="header">
                            <h2><strong>Youth</strong>Volunteers / Kigali </h2>
                            
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                                    <thead>
                                        <tr>
          <th >ID</th>
            <th>Youth volunteer name</th>
            <th>degree</th>
            <th>faculty</th>
            <th>Intake</th>
            <th>Father's name</th>
            <th>Mother's name</th>
            <th>gender</th>
            <th>Province</th>
            <th>district</th>
            <th>sector</th>
            <th>cell</th>
            <th>village</th>
            <th>Phone number</th>
            <th >Email</th>
            <th>NID</th>
         <th> Status</th>
            <th>Action</th>
          </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
         <th >ID</th>
            <th>Youth volunteer Name</th>
            <th>degree</th>
            <th>faculty</th>
            <th>Intake</th>
            <th>Father's name</th>
            <th>Mother's name</th>
            <th>gender</th>
            <th>Province</th>
            <th>district</th>
            <th>sector</th>
            <th>cell</th>
            <th>village</th>
            <th>Phone number</th>
            <th >Email</th>
            <th >NID</th>
            <th>Status</th>
            <th>Action</th>
          </tr>
                                    </tfoot>
                                    <tbody>
                                    	<?php
include("../config/index.php");
  $stmt = $DB_con->prepare("SELECT * FROM request where province='kigali' and status='1' ");
  $stmt->execute();
  
  if($stmt->rowCount() > 0)
  {
    while($row=$stmt->fetch(PDO::FETCH_ASSOC))
    {
      extract($row);
      
      
      ?>
                                        <tr>
          <td><?=$id; ?></td>
          <td><?=$name; ?></td>
          <td><?=$degree; ?></td>
          <td><?=$faculty; ?></td>
          <td><?= $intake ; ?></td>  
         <td><?= $fnm ; ?></td>   
         <td><?= $mnm ; ?></td>
         <td><?= $gender ; ?></td>
         <td><?= $province ; ?></td>
         <td><?= $district ; ?></td>
         <td><?= $sector ; ?></td>
         <td><?= $cell ; ?></td>
          <td><?= $village ; ?></td>
          <td><?= $phone ; ?></td>
          <td><?= $email ; ?></td>
          <td><?=$nid;?></td>
          <td><a class="btn btn-info" style="color:white;" ><div class="icon-circle ">Approved</div></a>
          </td>
          <td>
          <a class="btn btn-danger" href="?delete_id=<?=$id ?>" title="click for delete" onclick="return confirm('Are you sure to remove <?=$name; ?>?')"><div class="icon-circle bg-red"><i class="zmdi zmdi-delete"></i></div></a></td>
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
              <span class="glyphicon glyphicon-info-sign"></span> &nbsp; No volunteer Found ...
            </div>
        </div>
        <?php
  }
  
?>
                                    </tbody>
                                </table>
                            </div>
                        </div>


                        <div class="header">
                            <h2><strong>Yv</strong> Co-ordinators / Kigali </h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                   
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                                    <thead>
                                        <tr>
                                        <th>ID</th>
            <th>Full Name</th>
            <th>Phone Number</th>
            <th>degree</th>
            <th >Email</th>
            <th>faculty</th>
            <th>Intake</th>
            <th>gender</th>
            <th>Province</th>
            <th>district</th>
            <th>sector</th>
            <th>cell</th>
            <th>village</th>
            <th>N.ID</th>
            
         
      
          </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
             <th>ID</th>
            <th>Full Name</th>
            <th>Phone Number</th>
            <th>degree</th>
            <th >Email</th>
            <th>faculty</th>
            <th>Intake</th>
            <th>gender</th>
            <th>Province</th>
            <th>district</th>
            <th>sector</th>
            <th>cell</th>
            <th>village</th>
            <th>N.ID</th>
            
            
          </tr>
                                    </tfoot>
                                    <tbody>
                                    	 <?php
include("../config/index.php");
  $stmt = $DB_con->prepare("SELECT * FROM customer where province='kigali'  ORDER BY id desc");
  $stmt->execute();
  
  if($stmt->rowCount() > 0)
  {
    while($row=$stmt->fetch(PDO::FETCH_ASSOC))
    {
      extract($row);
      
      
      ?>
                                        <tr>
           <td><?=$id; ?></td>
          <td><?=$fullname; ?></td>
          <td><?=$phone; ?></td>
          <td><?=$degree ?></td>
          <td><?=$email; ?></td>
         <td><?= $faculty ; ?></td>   
         <td><?= $intake ; ?></td>
         <td><?= $gender ; ?></td>
         <td><?= $province ; ?></td>
         <td><?= $district ; ?></td>
          <td><?= $sector ; ?></td>
          <td><?= $cell ; ?></td>
          <td><?= $village ; ?></td>
          <td><?=$nid; ?></td>
         
          
                                        </tr>
                                      <?php
    }
    
  
  }
  else
  {
    ?>
    
      
        <div class="col-xs-12">
          <div class="alert alert-warning">
              <span class="glyphicon glyphicon-info-sign"></span> &nbsp; No Co-ordinator Found ...
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