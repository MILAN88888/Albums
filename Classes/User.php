<?php
class User
{
    function __construct($con)
    {
        $this->con=$con;
    }
    function login($email,$pass)
    {

    
    $qry="Select * from user where email='$email' and password='$pass'";
    $result=mysqli_query($this->con,$qry);
    $num=mysqli_num_rows($result);
    if($num>0)
    {
        return true;
    }
    else{
        return false;
    }
    }
   
    function getUserDetails($email)
    {
        $qry="select * from user where email='$email'";
        $result=mysqli_query($this->con,$qry);
        $detail=mysqli_fetch_assoc($result);
        return $detail;

    }
}



?>