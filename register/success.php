<!doctype html>
<html class="no-js " lang="en">

<body class="theme-blush">

<!-- Page Loader -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Home | <?php include('../dist/includes/head.php');?> ::</title>
<!-- Favicon-->
<link rel="icon" href="../assets/images/rnp.png" type="image/x-icon">
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





</head>




<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                   
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../dashboard/index.php"><i class="zmdi zmdi-home"></i> <?php include('../dist/includes/head.php');?></a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Registration</a></li>
                        
                        
                    </ul>
                   
                    
                </div>
                
				
            </div>
        </div>

 <div class="row clearfix">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2>Rwanda Youth volunteers <strong>Registration</strong> form</h2>
                            
                        </div>
                        <div class="body">
                        
                        <?php 
                  //include 'dbcon.php';                
                    $sel=mysqli_query($conn,"SELECT * from setting  ORDER BY id ASC")or die(mysqli_error($conn));
                    while ($prc=mysqli_fetch_array($sel)){
                      $id=$prc['id'];
                      $phone= $prc['phone'];


                      
                  ?>  

                        <br/><br/>
                        <small style="opacity:0.9;font-size:16px;">Application successfully submitted! </small><br/><br/><br/>
						<small style="opacity:0.7;">&nbsp;&nbsp;&nbsp; you will be notified, stay inTouch with us Reach us out through our social medias <br/>&nbsp;&nbsp;&nbsp; or contact us through <?php echo $prc['phone']; ?></small><br/>	
                              
                        <br/><br/>
                           
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane in active" id="home">
                                  <div class="row">
                                     <div class="col-md-8">
     



							<small style="opacity:0.9;font-size:16px;" >follow us on Twitter</small>
                            <br/><br/>
							
									
									
                            <p><a href="#">&nbsp;&nbsp;&nbsp;@Youthvolunteerwanda</a> Rwanda youth volunteers in comunity policing  @Youthvolunteerwanda <a href="../index.php">Itange::</a></p>
								
						
					

                </div>
                <br><br><br>
                <div class="col-md-4">
            
	  </div>
    </div>
                                </div>
                              
                      
                      
                  
                               </div>

                            </div>
                        </div>
                    </div>
                </div>
                    </div> <?php } ?>


</div>
</section>
<div style="    text-align: center;
    margin-top: 40px;
    margin-bottom: 40px;">
              Copyright &copy;
                    <script>document.write(new Date().getFullYear())</script>
                    <span><a href="" target="_blank"><?php include('../dist/includes/head.php');?></a></span>
            </div>
			<style>

img{

opacity:0.8;
margin-left:20px;
animation-name:slide;
animation-duration:2s;

}
img:hover{
    opacity:1;

}
@-webkit-keyframes slide {

from {
    margin-top:-20%;
    opacity:0.1;
   

}
to {
   
   opacity:0.9;
   

}
}

.brief{



animation-name:ts;
animation-duration:2s;

}
img:hover{
    opacity:1;

}
@-webkit-keyframes ts {

from {
    margin-left:-5%;
    opacity:0.1;

   

}
to {
   
   opacity:0.9;
   

}
}



.error {
			width: 100%; margin-bottom: 40px;
			margin: 5px auto; 
			padding: 10px; 
			border: 1px solid #a94442; 
			color: #a94442; 
			background: #f2dede; 
			border-radius: 5px; 
			text-align: left;
		}
		.success {
			color: #3c763d; 
			background: #dff0d8; 
			border: 1px solid #3c763d;
			margin-bottom: 20px;
		}
body{
    background-color: rgb(238, 238, 238);
     font-size:12px;
}
h1 , p , h2 ,th , td{

    font-size:10px;
}
    </style>

   



<?php include '../fjs/index.php'; ?>
<?php include '../fjs/other.php'; ?>
</body>
</html>