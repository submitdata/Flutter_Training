<?php

include ('connection.php');

$email=$_REQUEST["myemail"];
$pass=$_REQUEST["mypass"];


$sel="select * from registration where  email='$email' and password = '$pass'";

$ex=mysqli_query($con,$sel);


$no=mysqli_num_rows($ex);
//echo $no;


if($no>0)
{
$fet=mysqli_fetch_object($ex);
echo json_encode(['code'=>200]);
}
else
{
echo "0";
}


?>