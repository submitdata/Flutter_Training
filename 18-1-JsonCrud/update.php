<?php

    include('connection.php');
    
    $id=$_POST["id"];
    $name=$_POST["name"];
    $email=$_POST["email"];
    
    $sql="update fluttercrud set name='$name' , email = '$email' where id ='$id'";
    
    if(mysqli_query($con,$sql))
    {
        echo 'updated succesfully';
    }
    else
    {
         echo 'Error';
    }
    mysqli_close($con);
?>