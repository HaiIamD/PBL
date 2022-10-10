<?php

 // mengaktifkan session php
session_start();

 //untuk penghubung dengan file koneksi

 $servername = "localhost";
 $database = "db_users";
 $username = "Dimm";
 $password = "D!mas!(";
 // Create connection
 $conn = mysqli_connect($servername, $username, $password, $database);





 //cara menangkap data yang dikirim dari form

 $email = $_POST['email'];
 $password = $_POST['password'];
 




  //ambil data dari database tabel login dengan username dan password yang sesuai

  $data = mysqli_query($conn,"select * from tbl_users where email='$email' and password='$password'");

// menghitung jumlah data yang ditemukan
  $cek = mysqli_num_rows($data);


if($cek > 0){
	$_SESSION['email'] = $email;
	$_SESSION['status'] = "login";
	header("location:homepage.html");
}else{
	header("location:landing-page.php?pesan=gagal");
}
?>
