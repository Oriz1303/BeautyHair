<?php
require_once('../database/helper.php');
require_once('../utils/utility.php');
include_once('../components/header.php');
$user = '';
if (isset($_SESSION['account_id'])) {
    $id = $_SESSION['account_id'];
    $result = executeResult("SELECT  * FROM account WHERE id = $id");
    $user = $result[0]['username'];
}
?>


<div class="container pt-3 fw-light fs-5">
    <a class="text-decoration-none text-dark " href="../main_page/index.php">Home</a><span class=""> > Your History</span>
</div>
<hr>

<div class="container">
    <h1 class="w-100 text-center">Your History</h1>
</div>


<?php
include_once('../components/footer.php');
?>