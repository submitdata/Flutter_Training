<?php

    include('connection.php');
    
    $fname = $_POST["firstname"];
    $lname=$_POST["lastname"];
    $email=$_POST["email"];
    $pass = $_POST["password"];
    
    if($fname=="" && $lname=="" &&$email=="" && $pass=="")
    {
        echo '0';
    }
    else
    {
        $sql ="insert into registration (firstname,lastname,email,password) values ('$fname','$lname','$email','$pass')";
        mysqli_query($con,$sql);
    }


?>