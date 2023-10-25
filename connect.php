<?php 
if($_SERVER['$_REQUEST_METHOD']== "POST"){
    $name = $_POST['name'];
    $email = $_POST['email'];
    $mobile = $_POST['mobile'];

$con = new mysqli('localhost','root','','payroll'); //leave pw empty if not set

if($con){
   // echo "Connected";
   $sql = "INSERT INTO `registration`(name, email, mobile)VALUES('$name','$email','$mobile')";
   $result = mysqli_query($con,$sql);
   if($result){
       echo "Data Inserted";
   }else{
    die(mysqli_error($con));
   }
       
}else {
    die(mysqli_error($con));
    
}

}
?>