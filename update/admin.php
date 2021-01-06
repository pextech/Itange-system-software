        
        
        
         <div class="modal fade" id="Supplierup<?php echo $id; ?>" tabindex="-1" role="dialog" aria-labelledby="myMediulModalLabel">
            <div class="modal-dialog modal-sm">
                      <div class="modal-content">
                        <div class="modal-header">
                           <h4 class="modal-title" id="myModalLabel2">Update <?php echo $fullname; ?></h4>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                         
                        </div>
                        <div class="modal-body">
                         <form name="emplup" action = "../dist/includes/mpages/admin_up.php" method="post" enctype="multipart/form-data"> 
                           
                  <input type="hidden" name="id" value="<?php echo $id; ?>">
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
                  <label for="subject">province</label>
                <input type="text"   name = "province" class="form-control" placeholder="province" >
                  <br/>
                  <label for="subject">district</label>
                <input type="text"   name = "district" class="form-control" placeholder="district" >
                  <br/>
                  <label for="subject">sector</label>
                <input type="text"   name = "sector" class="form-control" placeholder="cell" >
                  <br/>
                  <label for="subject">cell</label>
                <input type="text"  id="cell" name = "cell" class="form-control" placeholder="cell" >
                  <br/>
                  <label for="subject">village</label>
                <input type="text"  id="village" name = "village" class="form-control" placeholder="village" >
              
                  <br/>
                  <label for="rtyre">Post</label>
             <select  name = "Post" class="form-control show-tick ms search-select" data-placeholder="Select" show-tick ms search-select data-placeholder="Select">
                <?php 
                  include('../dist/includes/dbcon.php');                
                    $query1=mysqli_query($conn,"SELECT * from branch where branch_id=  1 or branch_id= 3  ")or die(mysqli_error($conn));
                    while ($row1=mysqli_fetch_array($query1)){
                      $id=$row1['branch_id'];
              ?>
              <option value = "<?php echo $row1['branch_id'];?>"><?php echo $row1['branch_name'];?></option>  
              <?php } ?>
              </select>
                  <br/>
                   <a href="#" onclick="document.forms['emplup'].submit(); return false;">    
              <button  name = "update" class="btn btn-primary">Save Information</button></a>
            </form>
            </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        </div>
                      </div>
                    </div>
        </div>