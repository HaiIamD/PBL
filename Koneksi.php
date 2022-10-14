<?php

$servername = "localhost";
$database = "db_users";
$username = "Dimm";
$password = "D!mas!(";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);


$name=$_POST['name'];
$username=$_POST['username'];
$email=$_POST['email'];
$password=$_POST['password'];

               

$query = "INSERT INTO tbl_users VALUES('$name','$username','$email','$password')";

$a= mysqli_query($conn, $query);


?>