

<!doctype html>
<html class="no-js " lang="en">
   <?php include'header/header_login.php'; ?>
<body class="theme-blush">

<div class="authentication">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-sm-12">
                <form class="card auth_form" action="login/index.php" method="POST">
                    <div class="header">
                        <img class="logo"  style=" border:3px solid #357ebd; border-radius:100%; opacity:1;" src="assets/images/yv.jpg" alt="">
                        <h5>Log in</h5>
                    </div>
                    <div class="body">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" name="username" placeholder="Username">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="zmdi zmdi-account-circle"></i></span>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <input type="password" class="form-control" name="password" placeholder="Password">
                            <div class="input-group-append">                                
                                <span class="input-group-text"><a href="#" class="forgot" title="Forgot Password"><i class="zmdi zmdi-lock"></i></a></span>
                            </div>                            
                        </div>
                       <button class="btn btn-primary btn-block waves-effect waves-light" name="login">login</button> <br/>
                    </div>
                </form>
                <div class="copyright text-center">
                    &copy;
                    <script>document.write(new Date().getFullYear())</script>
                    <span><a href="" target="_blank"><?php include('dist/includes/head.php');?></a><a href="register/register.php" >Register</a></span>
                </div>
            </div>
            <div class="col-lg-8 col-sm-12">
                <div class="card">
                 <img style="width:150px; border:3px solid #357ebd; height:150px;border-radius:110%; margin-left:20px;" src="assets/images/yv.jpg" alt="Sign In"/>
                 <img style="width:300px; height:300px;" src="assets/images/rnp.png" alt="Sign In"/>
                 <img style="width:200px; height:200px ; border-radius:110%;" src="assets/images/rwanda.jpg" alt="Sign In"/>
                <div class="brief"> <h5>Rwanda youth volunteers in community policing. <strong>Security Unity and Development.</strong></h5><small>this is a software system <STRONG> (ITANGE)</STRONG> incharge of keeping youth volunteers activities mainly under administrative control and thus boost up youth volunteerism to a whole next level aslong as we stay integrated towards technological enhancement hence world class vision </small></div>   
            </div>
            </div>
        </div>
    </div>
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




body{
    background-color: rgb(238, 238, 238);
     font-size:12px;
}
h1 , p , h2 ,th , td{

    font-size:10px;
}
    </style>




<script src="assets/bundles/libscripts.bundle.js"></script>
<script src="assets/bundles/vendorscripts.bundle.js"></script> 
</body>


</html>

