



<?php include('dbcon.php') ?>
<style>

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




        <div class="modal fade" id="customer" tabindex="-1" role="dialog" aria-labelledby="myMediulModalLabel">
            <div class="modal-dialog modal-sm">
                      <div class="modal-content">
                        <div class="modal-header">
                           <h4 class="modal-title" id="myModalLabel2">New Co-ordinator</h4>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                         
                        </div>
                        <div class="modal-body">
                         <form name="cor" action = "../dist/includes/mpages/cordinator.php" method="post" enctype="multipart/form-data"> 
                           
                  
               
                  <label>fullname</label>
                <input type="text" id="sup1" name = "supplier" class="form-control" required>
                  <br/>
                 <label for="subject">phone number</label>
                <input type="number" id="p2" name = "phone" class="form-control" required>
                  <br/>
                
                  <label for="subject">Email</label>
                <input type="email" name = "Email" class="form-control" placeholder="Email">
                  <br/>
                  <label for="subject">National Id</label>
                <input type="number" id="id2" name = "nid" class="form-control" placeholder="National Id">
                  <br/>
                  <label for="rtyre">degree</label>
             <select  name = "degree" class="form-control show-tick ms search-select" data-placeholder="Select" show-tick ms search-select data-placeholder="Select">
             <option >A2</option>  
             <option >A1</option>  
              <option >A0</option>  
              <option >Not applicable</option>  
              
              </select>
                  <label for="subject">faculty</label>
                <input type="text"  id="faculty" name = "faculty" class="form-control" placeholder="faculty" >
                  <br/>
                  <label for="rtyre">Intake</label>
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
              <label for="subject">gender</label>
                <input type="text"  name = "gender" class="form-control" placeholder="gender" >
                  <br/>
                  <label for="subject">province</label>
                <input type="text"   name = "province" class="form-control" placeholder="province" >
                  <br/>
                  <label for="subject">district</label>
                <input type="text"   name = "district" class="form-control" placeholder="district" >
                  <br/>
                  <label for="subject">sector</label>
                <input type="text"  name = "sector" class="form-control" placeholder="sector" >
                  <br/>
                 
                  <label for="subject">cell</label>
                <input type="text"  id="cell" name = "cell" class="form-control" placeholder="cell" >
                  <br/>
                  <label for="subject">village</label>
                <input type="text"  id="village" name = "village" class="form-control" placeholder="village" >
                  <br/>
                        <br/>
             <a href=""  onclick="tester2();"  onclick="document.forms['cor'].submit();return false;">
              <button  name = "update" class="btn btn-primary">Save Information</button></a>
            </form>
            </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        </div>
                      </div>
                    </div>
        </div>







       
              <div class="modal fade" id="employee" tabindex="-1" role="dialog" aria-labelledby="myMediulModalLabel">
            <div class="modal-dialog modal-sm">
                      <div class="modal-content">
                        <div class="modal-header">
                           <h4 class="modal-title" id="myModalLabel2">New Admin</h4>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                         
                        </div>
                        <div class="modal-body">
                         <form name="ad" action = "../dist/includes/mpages/admin.php" method="post" enctype="multipart/form-data"> 
                           
                  
               
                  <label>fullname</label>
                <input type="text" id="sup2" name = "fullname" class="form-control" placeholder="fullname">
                  <br/>
                  <label>Username</label>
                <input type="text"  id="usr" name = "Username" class="form-control" placeholder="Username">
                  <br/>
                  <label>Password</label>
                <input type="password" id="pass" name = "Password" class="form-control" placeholder="Password">
                  <br/>
                 <label for="subject">phone number</label>
                <input type="number" id="p3" name = "phone" class="form-control" placeholder="phone">
                  <br/>
                  <label for="subject">Email</label>
                <input type="email" name = "Email" class="form-control" placeholder="Email">
                  <br/>
                  <label for="subject">National Id</label>
                <input type="number" id="id3" name = "nid" class="form-control" placeholder="National Id">
                  <br/>
                  <label for="rtyre">degree</label>
             <select  name = "degree" class="form-control show-tick ms search-select" data-placeholder="Select" show-tick ms search-select data-placeholder="Select">
             <option >A2</option>  
             <option >A1</option>  
              <option >A0</option>  
              <option >Not applicable</option>  
              
              </select>
                  <label for="subject">faculty</label>
                <input type="text"  id="faculty" name = "faculty" class="form-control" placeholder="faculty" >
                  <br/>
                  <label for="rtyre">Intake</label>
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
              <label for="subject">gender</label>
                <input type="text"  name = "gender" class="form-control" placeholder="gender" >
                  <br/>
                  <div class="form-group">
                        <label class="col-sm-6 control-label">province <span class="text-danger">*</span></label>
                        <div class="col-sm-12">
						<select  name = "province"  id="province" class="form-control show-tick ms search-select" data-placeholder="Select" show-tick ms search-select data-placeholder="Select">
             <option ></option>  
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

                   

                   
                  <br/>
                  <label for="rtyre">Post</label>
             <select  name = "Post" class="form-control show-tick ms search-select" data-placeholder="Select" show-tick ms search-select data-placeholder="Select">
                <?php 
                  include('../dist/includes/dbcon.php');                
                    $query1=mysqli_query($conn,"SELECT * from branch  ")or die(mysqli_error($conn));
                    while ($row1=mysqli_fetch_array($query1)){
                      $id=$row1['branch_id'];
                      $ide=$_SESSION['user_id'];
              ?>
              <?php 
                               
                               $sel=mysqli_query($conn,"SELECT * from employee  where  id='$ide'")or die(mysqli_error($conn));
                               $prc=mysqli_fetch_array($sel);
                                 $id=$prc['id'];
                                 $sector=$prc['sector'];
                                 $province=$prc['province'];
                                 $district=$prc['district'];

                             ?>
                      <?php
                              if ( $province == 'super'  ) { ?>
                              <?php 
                  include('../dist/includes/dbcon.php');                
                    $query1=mysqli_query($conn,"SELECT * from branch where branch_id=  2  ")or die(mysqli_error($conn));
                    while ($row1=mysqli_fetch_array($query1)){
                      $id=$row1['branch_id'];
                      $ide=$_SESSION['user_id'];
              ?>
              <option value = "<?php echo $row1['branch_id'];?>"><?php echo $row1['branch_name'];?></option>  
              <?php }} ?>
              <?php
                              if ( $province !== 'super'  ) { ?>
                              <?php 
                  include('../dist/includes/dbcon.php');                
                    $query1=mysqli_query($conn,"SELECT * from branch where branch_id= 3 or branch_id= 1   ")or die(mysqli_error($conn));
                    while ($row1=mysqli_fetch_array($query1)){
                      $id=$row1['branch_id'];
                      $ide=$_SESSION['user_id'];
              ?>
              <option value = "<?php echo $row1['branch_id'];?>"><?php echo $row1['branch_name'];?></option>  
             

              <?php }}} ?>
              </select>
                  <br/>
                  
                       <a href="#"  onclick="tester3();"  onclick="document.forms['ad'].submit();return false;">
              <button  name = "update" class="btn btn-primary">Save Information</button></a>
            </form>
            </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        </div>
                      </div>
                    </div>
        </div>

      

        <script>
        
        function tester1(){
 var x=document.getElementById('id').value;
 var sup=document.getElementById('sup').value
 var space= /^[ ]+$/
 var p1=document.getElementById('p1').value

  if( (x.length) == 16 || (x.length == 0) && !(sup.length) == 0 ){
    
   document.forms['yv'].submit();
  
    return false;
   } else {
    alert ("please input a valid national id number ");
 
   
  
   } 


  

}
        
function tester2(){
 
 var y=document.getElementById('id2').value;
 var sup1=document.getElementById('sup1').value;
 var p2=document.getElementById('p2').value
 var space= /^[ ]+$/


  if( (y.length) == 16 || (y.length == 0)){
   
    document.forms['cor'].submit();return false;
    
    
  
   } else {
    alert ("please input a valid national id");
 
   }



}
        
function tester3(){

 var z=document.getElementById('id3').value;
 var p3=document.getElementById('p3').value
 var sup2=document.getElementById('sup2').value;
 var pass=document.getElementById('pass').value;
 var usr=document.getElementById('usr').value;
 var space= /^[ ]+$/


  if( (z.length) == 16 || (z.length == 0)){
   
    document.forms['ad'].submit();return false;
  
   } else {
    alert ("please input a valid national id");
 
   }

}
       



</script>        
      


 
<div class="modal fade" id="client" tabindex="-1" role="dialog" aria-labelledby="myMediulModalLabel">
            <div class="modal-dialog modal-sm">
                      <div class="modal-content">
                        <div class="modal-header">
                           <h4 class="modal-title" id="myModalLabel2">New Committe member</h4>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                         
                        </div>
                        <div class="modal-body">
                         <form name="com" action = "../dist/includes/mpages/comitte.php" method="post" enctype="multipart/form-data"> 
                           
                  
        
                  <label>Member name</label>
                <input type="text" id="sup4" name ="fullname" class="form-control" placeholder="youth volunteer" >
                  <br/>
                  
                 <label for="subject">phone number</label>
                <input type="number" id="p4" name = "phone" class="form-control" placeholder="phone" > 
                  <br/>
                  <label for="subject">Email</label>
                <input type="email" name = "Email"  class="form-control" placeholder="Email" >
                  <br/>
                  <label for="subject">national id</label>
                <input type="number" id="id4"  name = "nid" class="form-control" placeholder="id number" >
                  <br/>
                  <label for="rtyre">degree</label>
             <select  name = "degree" class="form-control show-tick ms search-select" data-placeholder="Select" show-tick ms search-select data-placeholder="Select">
             <option >A2</option>  
             <option >A1</option>  
              <option >A0</option>  
              <option >Not applicable</option>  
              
              </select>
                  <label for="subject">faculty</label>
                <input type="text"  id="faculty" name = "faculty" class="form-control" placeholder="faculty" >
                  <br/>
                  <label for="rtyre">Intake</label>
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
              <label for="subject">gender</label>
                <input type="text"  name = "gender" class="form-control" placeholder="gender" >
                  <br/>
                  <label for="subject">province</label>
                <input type="text"   name = "province" class="form-control" placeholder="province" >
                  <br/>
                  <label for="subject">district</label>
                <input type="text"   name = "district" class="form-control" placeholder="district" >
                  <br/>
                  <label for="subject">sector</label>
                <input type="text"   name = "sector" class="form-control" placeholder="sector" >
                  <br/>
                  <label for="subject">cell</label>
                <input type="text"  id="cell" name = "cell" class="form-control" placeholder="cell" >
                  <br/>
                  <label for="subject">village</label>
                <input type="text"  id="village" name = "village" class="form-control" placeholder="village" >
                  <br/>
                  
              <label for="subject">post</label>
                <input type="text"  id="Post" name = "Post" class="form-control" placeholder="post" >
                  <br/>
                      
                      
             <a href="" onclick="tester4();"  onclick="document.forms['com'].submit();return false;">
              <button  name ="update" class="btn btn-primary">Save Information</button></a>
            </form>
            </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        </div>
                      </div>
                    </div>
        </div>

<script type="text/javascript">
function tester4(){

var z=document.getElementById('id4').value;
var p3=document.getElementById('p4').value
var sup2=document.getElementById('sup4').value;
var space= /^[ ]+$/


 if( (z.length) == 16 || (z.length == 0)){
  
   document.forms['com'].submit();return false;
 
  } else {
   alert ("please input a valid national id");

  }

}
        

</script>


<script type="text/javascript">
       function optionFormatter(items) {
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

        province.html(optionFormatter(Object.keys(dataRwanda)));
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
        
          },
        });
        
      });
    </script>