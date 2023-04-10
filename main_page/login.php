<?php
// require_once('../database/helper.php');
require_once "../database/db.php";
include "../components/header.php";
include '../handle/loginForm.php';
?>


<div class="container pt-3 fw-light fs-5">
    <a class="text-decoration-none text-dark " href="../main_page/index.php">Home</a><span class=""> > Login</span>
</div>
<hr>
<?php
if (isset($_SESSION['errorMessage'])) {
    echo '<div class="text-center text-white bg-danger p-3 w-100"><span >' . $errorMessage . '</span> </div>';
    unset($_SESSION['errorMessage']);
} else if (isset($_SESSION['succesMessage'])) {
    echo '<div class="text-center text-white bg-success p-3 w-100"><span >' . $_SESSION['succesMessage'] . '</span> </div>';
    unset($_SESSION['succesMessage']);
} else {
    echo '';
}
?>
<section class="form-login">
    <div class="signin container ">
        <h1 class="text-center">LOGIN</h1><br>
        <div class="d-flex justify-content-center w-100">
            <form id="sign-in" class="w-25 " action="" method="POST">
                <div class="form-group">
                    <input name="signinUsername" class="form-control border my-2 px-4 py-2 w-100 rounded-pill " rules="required" type="text" placeholder="Email or username">
                    <span class="form-message text-danger"></span>
                </div>
                <div class="form-group">
                    <input name="signinPassword" class="form-control border my-2 px-4 py-2 w-100 rounded-pill" rules="required" type="text" placeholder="Password">
                    <span class="form-message text-danger"></span>
                </div>
                <button name="submitSignin" class="w-100 rounded-pill p-2 bg-dark text-white" type="submit">Login</button>
                <p>Do not have an account? <a href="./register.php" class="form-transfer-signup text-decoration-none text-danger">Register</a></p>
            </form>

        </div>

    </div>


</section>
<script src="../resources/js/validator.js"></script>
<script>
    Validator('#sign-in');
</script>
<?php
include '../components/footer.php';
?>