<?php 
session_start();
if(isset($_SESSION['account_id'])) {
    unset($_SESSION['account_id']);
}
// setcookie('cart', '', time() - 30*24*60*60, '/');
header("location: ../main_page/index.php");
?>