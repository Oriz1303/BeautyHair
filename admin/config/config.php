<?php
define('HOST', "localhost");
define('USERNAME', "root");
define('PASSWORD', "Oriz203031");
define('DATABASE', "haircare");


// Create connection
$con = mysqli_connect(HOST, USERNAME, PASSWORD, DATABASE);
 
// Check connection
if ($con->connect_error) {
  die("Connection failed: " . $con->connect_error);
} 
?>