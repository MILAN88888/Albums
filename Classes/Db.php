<?php 

class Db
{
    private $conn;
 
function __construct()
{      $servername = "localhost";
     $username = "root";
    $password = "";
   $database="album";   

    $this->conn = mysqli_connect($servername, $username, $password,$database);
    
}
function getConnection()
{
    return $this->conn;
}
}

?>