<?php 
if(isset($_POST['submitRegister'])) {
    $usernameSignUp = getPost('signupUsername');
    $emailSignUp = getPost('signupEmail');
    $phoneNumberSignUp = getPost('signupPhone');
    $passwordSignUp = getPost('signupPassword');
    date_default_timezone_set('Asia/Saigon');
	$create_at = date('Y-m-d H:i:s');
    $resultSignUp = mysqli_query($connect, "SELECT * FROM account WHERE username = '$usernameSignUp' OR email = '$emailSignUp'");
    if(mysqli_num_rows($resultSignUp))  {
        $errorMessage = "Account has been duplicated.";
        $_SESSION['errorMessage'] = $errorMessage;
    } else {
        $insertAccount = mysqli_query($connect, "INSERT INTO account(username, password, email, status, phone_number, create_at) VALUES ('$usernameSignUp', '$passwordSignUp', '$emailSignUp', 0, '$phoneNumberSignUp', '$create_at')");
        $succesMessage = 'Sign Up Success';
        $_SESSION['succesMessage'] = $succesMessage;
        header('Location: ./login.php');
        ob_end_flush();
    }
}
