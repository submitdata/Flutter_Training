<?php

    include('connection.php');
    
    $id=$_POST["id"];
    
    $sql="delete from fluttercrud where id = '$id'";
    
    if(mysqli_query($con,$sql))
    {
        echo 'deleted succesfully';
    }
    else
    {
         echo 'Error';
    }
    mysqli_close($con);
?>