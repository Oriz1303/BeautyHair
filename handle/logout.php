<?php 
session_start();
if(isset($_SESSION['account_id'])) {
    unset($_SESSION['account_id']);
}
header("location: ../main_page/index.php");
?>