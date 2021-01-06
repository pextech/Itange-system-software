<!doctype html>
<html class="no-js " lang="en">
   <?php include'../header/header.php'; ?>
<body class="theme-blush">

<!-- Page Loader -->

<?php include '../link/link.php'; ?>

<?php include'../link/theme.php'; ?>

<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Setting</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../dashboard/index.php"><i class="zmdi zmdi-home"></i> <?php include('../dist/includes/head.php');?></a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Setting</a></li>
                        
                        <li class="breadcrumb-item active">organisation Setting</li>
                    </ul>
                    <br>
                    <a href="../dashboard"><img src="../images/prev.png" style="height:20px; width:30px;"><img src="../images/prev.png" style=" margin-right:10px;height:10px; width:20px;"></a>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>                                
                </div>
            </div>
        </div>

 <div class="row clearfix">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>organisation</strong> Setting</h2>
                            
                        </div>
                        <div class="body">
                          

                           
                            <ul class="nav nav-tabs p-0 mb-3">
                                <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#home">Organisation Details</a></li>
                                
                            </ul>                        
                           
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane in active" id="home">
                                  <div class="row">
                                     <div class="col-md-8">
      <form name="compd" method="POST" action="../dist/includes/mpages/settingup.php" class="pull-left">
        <?php 
                  //include 'dbcon.php';                
                    $sel=mysqli_query($conn,"SELECT * from setting  ORDER BY id ASC")or die(mysqli_error($conn));
                    while ($prc=mysqli_fetch_array($sel)){
                      $id=$prc['id'];
                      
                  ?>  
                  <input type="hidden" name="id" value="<?php echo $prc['id'];?>">
                    <div class="form-group">
                        <label class="col-sm-6 control-label">organisation Name</label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="company" value="<?php echo $prc['company'];?>">
                        </div>
                    </div>
                    
                   
                    <div class="form-group">
                        <label class="col-sm-6 control-label">Location</label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="Location" value="<?php echo $prc['location'];?>">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label">Phone Number</label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="Phone" value="<?php echo $prc['phone'];?>">
                        </div>
                    </div>
                   

                    <div class="form-group">
                        <div class="col-md-9 col-md-offset-3">
                         <br>
                          <a href="#" onclick="document.forms['compd'].submit(); return false;">
                          <button name = "login" class="btn btn-block btn-success"><i class = "fa fa-save"></i> Update</button>
                        </a>
                        </div>
                      </div>
                      <?php } ?>
                </form>
                </div>
                <br><br><br>
                <div class="col-md-4">
             <img src="<?php echo (!empty($prc['logo'])) ? '../images/'.$prc['logo'] : '../assets/images/yv.jpg'; ?>" >
      </div>
    </div>
                                </div>
                              
                      
                      
                  
                               </div>

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