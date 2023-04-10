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
    <a class="text-decoration-none text-dark " href="../main_page/index.php">Home</a><span class=""> > Order Success</span>
</div>
<hr>
<div class="text-center " style="margin:0 35vw;">
    <span class="fs-1">Thank you <?= $user ?> ! 😏</span><br>
    <span class="text-justify">Our customer service people will definitely contact you as soon as possible.

        We will be very glad to assist you with any questions you have and give you all information about your order.

        Thank you, again, for your purchase from the Jeen Sale store. If you have any problems with your purchase, feel free to contact us at any time.

        You can get in touch with us any time, by email or live chat.

        <br> Best regards, <?= $user ?>
    </span><br>
    <span class="">Check your purchased<a href="history.php" class="text-decoration-none"> history</a></span><br>
    <span class="fs-1">❤️</span>

</div>



<?php
include_once('../components/footer.php');
?>