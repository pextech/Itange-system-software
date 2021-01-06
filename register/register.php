<!doctype html>
<html class="no-js " lang="en">
<?php include '../dist/includes/dbcon.php'; ?>
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
<body class="theme-blush">

<!-- Page Loader -->





<section  class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div  class="col-lg-7 col-md-6 col-sm-12">
                   
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
                            <h2> <strong>Registration</strong> form</h2>
                            
                        </div>
                        <div class="body">
                          

                           
                            <ul class="nav nav-tabs p-0 mb-3">
                                <li class="nav-item"><a class="nav-link active"  href="register.php">sign-up</a></li> 
                                <li class="nav-item"><a class="nav-link active"  href="../index.php">Login</a></li>
                                
                            </ul>  
							
                              
							               
                           
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane in active" id="home">
                                  <div class="row">
                                     <div class="col-md-8">
      <form name="reg" method="POST" action="../dist/includes/mpages/register.php"  class="pull-left">
      
                 
                    <div class="form-group">
                        <label class="col-sm-6 control-label">Full Name <span class="text-danger">*</span></label>
                        <div class="col-sm-12">
                            <input type="text"  class="form-control" id="name" name="Supplier" >
                        </div>
                    </div>
                    
                   
                    <div class="form-group">
                        <label class="col-sm-6 control-label">Email </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="email" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label">Phone Number <span class="text-danger">*</span></label>
                        <div class="col-sm-12">
                            <input type="number" class="form-control" name="phone" >
                        </div>
                    </div>
					<div class="form-group">
                        <label class="col-sm-6 control-label">National id <span class="text-danger">*</span></label>
                        <div class="col-sm-12">
                            <input type="number" id="id" class="form-control" name="nid" >
                        </div>
                    </div>
					<div class="form-group">
                        <label class="col-sm-6 control-label">gender <span class="text-danger">*</span></label>
                        <div class="col-sm-12">
						<select  name = "gender" class="form-control show-tick ms search-select" data-placeholder="Select" show-tick ms search-select data-placeholder="Select">
             <option >Male</option>  
             <option >Female</option>  
              
              </select>
                        </div>
                    </div>
					<div class="form-group">
                        <label class="col-sm-6 control-label">Father's name </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="fnm" >
                        </div>
                    </div>
					<div class="form-group">
                        <label class="col-sm-6 control-label">Mother's name </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="mnm" >
                        </div>
                    </div>
					<div class="form-group">
                        <label class="col-sm-6 control-label">degree </label>
                        <div class="col-sm-12">
                        <select  name = "degree" class="form-control show-tick ms search-select" data-placeholder="Select" show-tick ms search-select data-placeholder="Select">
             <option >A2</option>  
             <option >A1</option>  
              <option >A0</option>  
              <option >secondary diploma</option>
             <option >-not applicable-</option>  
            
              </select>
                        </div>
                    </div>
					<div class="form-group">
                        <label class="col-sm-6 control-label">faculty </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="faculty" >
                        </div>
                    </div>
					<div class="form-group">
                        <label class="col-sm-6 control-label">intake <span class="text-danger">*</span></label>
                        <div class="col-sm-12">
						<select  name = "intake" class="form-control show-tick ms search-select" data-placeholder="Select" show-tick ms search-select data-placeholder="Select">
             <option >2013</option>  
             <option >2014</option>  
              <option >2015</option>  
              <option >2016</option>
             <option >2017</option>  
             <option >2018</option>  
              <option >2019</option>  
              <option >2020</option>  
              </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label">province <span class="text-danger">*</span></label>
                        <div class="col-sm-12">
						<select  name = "province"  id="province" class="form-control show-tick ms search-select" data-placeholder="Select" show-tick ms search-select data-placeholder="Select">
             <option >-select-</option>  
              </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label">district <span class="text-danger">*</span></label>
                        <div class="col-sm-12">
						<select  name = "district" id="district" class="form-control show-tick ms search-select" data-placeholder="Select" show-tick ms search-select data-placeholder="Select">
              
              </select>
                        </div>
                    </div>

                         <div class="form-group">
                        <label class="col-sm-6 control-label">sector <span class="text-danger">*</span></label>
                        <div class="col-sm-12">
						<select  name = "sector" id="sector" class="form-control show-tick ms search-select" data-placeholder="Select" show-tick ms search-select data-placeholder="Select">
             
              </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-6 control-label">cell <span class="text-danger">*</span></label>
                        <div class="col-sm-12">
						<select  name = "cell" id="cell" class="form-control show-tick ms search-select" data-placeholder="Select" show-tick ms search-select data-placeholder="Select">
               
              </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-6 control-label">village <span class="text-danger">*</span></label>
                        <div class="col-sm-12">
						<select  name = "village" id="village" class="form-control show-tick ms search-select" data-placeholder="Select" show-tick ms search-select data-placeholder="Select">
               
              </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-9 col-md-offset-3">
                         <br>
                          <a href="#"  onclick="tester();"   >
                          <button name = "register" class="btn btn-block btn-success"><i class = "fa fa-save"></i> Register</button>
                        </a>
                        </div>
                      </div>
                      
                </form>
                </div>
                <br><br><br>
                
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

<script type="text/javascript">
function tester(){

var z=document.getElementById('id').value;
 var re = /^[a-z,A-Z]+$/i;

 if( (z.length) == 16 || (z.length == 0)) {
  
   document.forms['reg'].submit();return false;
 
  } else {
   alert ("please input a valid national id");

  } 
name=document.getElementById('name').value;
  if (!re.test(name)) {
    alert('Please enter only letters from a to z');
    return false;
  }

}
 

</script>


<script type="text/javascript">
      const optionFormatter = function (items) {
        var options = "";
        items.forEach((item) => {
          options += "<option>";
          options += item;
          options += "</option>";
        });
        return options;
      };
      var dataRwanda;
      $(function () {
       $.ajax({
          dataType: "json",
          headers: {
            Accept: "application/json",
            "Content-Type": "application/json",
            "Access-Control-Allow-Origin": "*",
          },
          url: "provinces_cells.json",
          success: function (data) {
            console.log("Connected");
            dataRwanda = data;
            console.log(dataRwanda);
        var province = $("#province");
        var district = $("#district");
        var sector = $("#sector");
        var cell = $("#cell");
        var village = $("#village");
        province.append(optionFormatter(Object.keys(dataRwanda)));
        province.click(function () {
          district.html(
            optionFormatter(Object.keys(dataRwanda[province.val()]))
          );
        });
        district.click(function () {
          sector.html(
            optionFormatter(
              Object.keys(dataRwanda[province.val()][district.val()])
            )
          );
        });
        sector.click(function () {
          cell.html(
            optionFormatter(
              Object.keys(
                dataRwanda[province.val()][district.val()][sector.val()]
              )
            )
          );
        });
        cell.click(function () {
          village.html(
            optionFormatter(
              dataRwanda[province.val()][district.val()][sector.val()][
                cell.val()
              ]
            )
          );
        });
          },
        });
        
      });
    </script>
<?php include '../fjs/index.php'; ?>
<?php include '../fjs/other.php'; ?>
</body>
</html>