<?php
ob_start();
// require_once('../database/helper.php');
require_once "../database/db.php";
include "../components/header.php";
if (isset($_POST['signinUsername']) && isset($_POST['signinPassword'])) {
    $username = $_POST['signinUsername'];
    $password = $_POST['signinPassword'];
    $sql = mysqli_query($connect, "SELECT * FROM account WHERE (username = '$username' OR email = '$username') AND password = '$password'");

    if (mysqli_num_rows($sql) > 0) {
        header("location: index.php");
        ob_end_flush();
    }
}

?>


<div class="container pt-3 ">
    HOME > LOGIN ACCOUNT</div>
<hr>
<section class="form-login">
    <div class="container ">
        <h1 class="text-center">LOGIN</h1><br>
        <div class="d-flex justify-content-center w-100">
            <form id="sign-in" class="w-25 " action="#" method="POST">
                <div class="form-group">
                    <input name="signinUsername" class="form-control border my-2 px-4 py-2 w-100 rounded-pill " rules="required" type="text" placeholder="Email or username">
                    <span class="form-message text-danger"></span>
                </div>
                <div class="form-group">
                    <input name="signinPassword" class="form-control border my-2 px-4 py-2 w-100 rounded-pill" rules="required" type="text" placeholder="Password">
                    <span class="form-message text-danger"></span>
                </div>
                <button name="submitSignin" class="w-100 rounded-pill p-2 bg-dark text-white" type="submit">Login</button>
                <p>Do not have an account? <span class="form-signin text-danger">Register</span></p>
            </form>
        </div>
    </div>
    <div class="container d-none">
        <h1 class="text-center">Register</h1><br>
        <div class="d-flex justify-content-center w-100">
            <form id="sign-up" class="w-50" action="#" method="POST">
                <div class="form-group mb-3">
                    <input class="form-control border my-2 px-4 py-2 w-100 rounded-pill " rules="required" name="signupUsername" type="text" placeholder="Email or username">
                    <span class="form-message text-danger"></span>
                </div>
                <div class="form-group mb-3">
                    <input class="form-control border my-2 px-4 py-2 w-100 rounded-pill" rules="required|email" name="signupEmail" type="text" placeholder="Email">
                    <span class="form-message text-danger"></span>
                </div>
                <div class="form-group mb-3">
                    <input class="form-control border my-2 px-4 py-2 w-100 rounded-pill" rules="required|phone" name="signupPhone" type="text" placeholder="Phone Number">
                    <span class="form-message text-danger"></span>
                </div>
                <div class="form-group mb-3">
                    <input class="form-control border my-2 px-4 py-2 w-100 rounded-pill" rules="required|min:6|max:18|" name="signupPassword" type="text" placeholder="Password">
                    <span class="form-message text-danger"></span>
                </div>
                <button class="w-100 rounded-pill p-2 bg-dark text-white" type="submit">Sign up</button>
                <p>Do you already have an account? <span class="form-signin text-danger">Login</span></p>
            </form>
        </div>
    </div>
</section>
<script src="../resources/js/validator.js"></script>
<script>
    Validator('#sign-in');
    Validator('#sign-up');

    
</script>
<?php
include '../components/footer.php';
?>