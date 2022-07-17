<?php
 include 'Classes/User.php';
 include 'Classes/Db.php';
$Db=new Db();
  $con=$Db->getConnection();
$user = new User($con);

if(isset($_POST['submit']))
{     
    
       $email=$_POST['email'];
        $pass=$_POST['pass'];
        $isSuccess=$user->login($email,$pass);
        if($isSuccess)
        {
            $detail=$user->getUserDetails($email);
            $_SESSION['email']=$detail['Email'];
            $_SESSION['isPremium']=$detail['isPremium'];
            $_SESSION['name']=$detail['Name'];
            header("location:View/main.php");
        } else {
            header('location:index.php?login=fail');
        }
}


?>


<html>
    <body>

<div class="container my-5 border border-success d-flex justify-content-center">
    <form id="loginForm" method="post" action="" autocomplete="off">
        <h3 class="center">Login Form</h3>
        <hr>
        
            <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input type="email" class="form-control" id="email" aria-describedby="emailHelp"
                    name="email">
               
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="pass" name="pass">
            </div>
            
            <button type="submit" class="btn btn-primary" name="submit">Submit</button>
        
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>
<script src="js/loginValidate.js"></script>
</body>
</html>
