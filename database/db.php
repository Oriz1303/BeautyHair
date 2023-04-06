<?php
$servername = "localhost";
$username = "root";
$password = "Oriz203031";
$db="haircare";

// Create connection
$connect = mysqli_connect($servername, $username, $password, $db);

// Check connection
if ($connect->connect_error) {
  die("Connection failed: " . $connect->connect_error);
} 
?>