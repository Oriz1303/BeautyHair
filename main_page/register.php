<?php
// require_once('../database/helper.php');
require_once "../database/db.php";
include "../components/header.php";
include "../utils/utility.php";
include '../handle/registerForm.php';
?>


<div class="container pt-3 fw-light fs-5">
    <a class="text-decoration-none text-dark " href="../main_page/index.php">Home</a><span class=""> > Login</span>
</div>
<hr>
<?php
if (isset($_SESSION['errorMessage']) ) {
    echo '<div class="text-center text-white bg-danger p-3 w-100"><span >' . $errorMessage . '</span> </div>';
    unset($_SESSION['errorMessage']);
}  else {
    echo '';
}


?>
<section class="form-login">
    <div class="signup container">
        <h1 class="text-center">Register</h1><br>
        <div class="d-flex justify-content-center w-100">
            <form id="sign-up" class="w-50" action="" method="POST">
                <div class="form-group mb-3">
                    <input class="form-control border my-2 px-4 py-2 w-100 rounded-pill " rules="required" name="signupUsername" type="text" placeholder="Username">
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
                    <input class="form-control border my-2 px-4 py-2 w-100 rounded-pill" rules="required|min:6|max:18|strongPassword" name="signupPassword" type="text" placeholder="Password">
                    <span class="form-message text-danger"></span>
                </div>
                <button name="submitRegister" class="w-100 rounded-pill p-2 bg-dark text-white" type="submit">Sign up</button>
                <p>Do you already have an account? <a href="./login.php" class="form-transfer-signin text-danger">Login</a></p>
            </form>
        </div>
    </div>
</section>
<script src="../resources/js/validator.js"></script>
<script>
    Validator('#sign-up');
</script>
<?php
include '../components/footer.php';
?>