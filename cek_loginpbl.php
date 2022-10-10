<?php 
// mengaktifkan session php
session_start();

// menghubungkan dengan koneksi
include 'koneksipbl.php';

// menangkap data yang dikirim dari form
$email = $_POST['email'];
$password = $_POST['password'];

// menyeleksi data admin dengan username dan password yang sesuai
$data = mysqli_query($koneksi,"select * from tbl_users where email='$email' and password='$password'");

// menghitung jumlah data yang ditemukan
$cek = mysqli_num_rows($data);

if($cek > 0){
	$_SESSION['email'] = $email;
	$_SESSION['password'] = $password;
	$_SESSION['status'] = "login";
	header("location:Parallax.html");
}else{
	header("location:gagal.html");
}
?>