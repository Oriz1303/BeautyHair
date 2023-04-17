<?php
require_once('../database/helper.php');
require_once('../utils/utility.php');
include_once('../components/header.php');
$user = $historyEmpty =  '';

?>


<div class="container pt-3 fw-light fs-5">
    <a class="text-decoration-none text-dark " href="../main_page/index.php">Home</a><span class=""> > Your History</span>
</div>
<hr>

<div class="container">
    <div class="title-cart">
        <p class="fs-1 fw-light">History</p>
    </div>
    <div class=" w-100">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>NO</th>
                    <th>Name</th>
                    <th>Products</th>
                    <th>Quantity</th>
                    <th>Total</th>
                    <th>Time</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $count = 0;
                if (isset($_SESSION['account_id'])) {
                    $id = $_SESSION['account_id'];
                    $result = executeResult("SELECT  * FROM info_orders WHERE account_id = $id");
                    if (count($result) > 0) {
                        foreach ($result as $key => $value) {
                            $count++;
                ?>
                            <tr>
                                <td><?= $count ?></td>
                                <td><?= $value['fullname'] ?></td>
                                <td><img class="w-25" src="../resources/img/img_cosmetics/<?= $value['url'] ?>" alt=""><?= $value['name'] ?></td>
                                <td><?= $value['quantity'] ?></td>
                                <td><?= $value['price'] * $value['quantity'] ?></td>
                                <td><?= $value['date'] ?></td>
                                <td><?= $value['status'] ?></td>
                            </tr>
                <?php
                        }
                    } else {
                        $historyEmpty = 'Nothing';
                    }
                }
                ?>
            </tbody>
        </table>
        <div class="text-center">
            <div class="fs-1"><?=$historyEmpty?></div>
        </div>
    </div>
</div>
<?php
// $test = date_default_timezone_get();
?>
<div id="liveTime">
    <!-- <input class="w-auto" type="text" value="" disabled> -->
</div>
<?php
include_once('../components/footer.php');
?>
<?= date('m/d/Y h:i:s a', time()) ?>