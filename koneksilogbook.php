
<?php

require 'koneksipbl.php';
$namadestinasi =$_POST['namadestinasi'];
$tabunganku =$_POST['tabunganku'];
$target =$_POST['target'];
$tanggalmenabung =$_POST['tanggalmenabung'];
$status =$_POST['status'];
$query = "INSERT INTO logbook1 (namadestinasi, tabunganku, target, tanggalmenabung, status) VALUES('$namadestinasi','$tabunganku','$target','$tanggalmenabung','$status')";
$a= mysqli_query($koneksi, $query);
if(!$a){ //jika tidak terkoneksi maka akan tampil error
    die ("Koneksi dengan database gagal: ".mysql_connect_error());
  }