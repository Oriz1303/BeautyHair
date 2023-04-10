<?php 
if (isset($_POST['signinUsername']) && isset($_POST['signinPassword'])) {
    $username = $_POST['signinUsername'];
    $password = $_POST['signinPassword'];
    $sql = mysqli_query($connect, "SELECT * FROM account WHERE (username = '$username' OR email = '$username') AND password = '$password'");

    if (mysqli_num_rows($sql) > 0) {
        $account = mysqli_fetch_assoc($sql);
        $_SESSION['account_id'] = $account['id'];
        header("location: index.php");
        ob_end_flush();
    } else {
    }
    
}
