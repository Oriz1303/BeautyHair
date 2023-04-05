<?php 
$conn = mysqli_connect("localhost", "root", "Oriz203031", "haircare");

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
} 

?>