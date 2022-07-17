<?php
session_start();


?>
<html>
<head>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>


</head>
<body style='background: linear-gradient(to bottom, #99ffcc 0%, #ff99cc 100%);'>
<nav class="navbar navbar-expand-lg navbar-light " style='background-color:#25a5be; height : 75px;'>

<a class="navbar-brand" href="<?php echo ($_SESSION['email'] == "admin@gmail.com") ? "main.php":"" ?>"><h3><font class="font-weight-bold font-italic text-monospace" >Album Creation</font></h3></a>

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">


      <li class="nav-item active">
        <?php 
        if(isset($_SESSION['email']) && $_SESSION['email'] == "admin@gmail.com")
        {
       echo '<a class="nav-link btn btn-primary mx-1" href="normalalbum.php">Normal Album</a>';
  
        }
        
        
        ?>
      </li>
      <li class="nav-item active ">
        <?php 
        if(isset($_SESSION['email']) && $_SESSION['email'] == "admin@gmail.com")
        {
  
       echo '<a class="nav-link btn btn-primary mx-1" href="premiumalbum.php">Premium Album</a>';
        }
        
        ?>
      </li>
    
      <li class="float-right active">
        <?php 
        if(isset($_SESSION['email']))
        {
       echo '<a class="nav-link btn btn-primary mx-1" href="logout.php">logout</a>';
        
        }
        
        ?>
      </li>
      
  </div>
</nav>
</body>
</html>