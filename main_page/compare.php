<?php
require_once('../database/helper.php');
require_once('../utils/utility.php');
include "../components/header.php";

$compare = [];
if (isset($_COOKIE['compare'])) {
    $json = $_COOKIE['compare'];
    $compare = json_decode($json, true);
}

$idCompare = [];
foreach ($compare as $value) {
    $idCompare[] = $value['id_product'];
}
if (count($idCompare) > 0) {
    $idCompare = implode(',', $idCompare);
    $resultCompare = executeResult("SELECT * FROM  information_products WHERE id IN ($idCompare)");
} else {
    $resultCompare = [];
}
?>

<div class="container pt-3 fw-light fs-5">
    <a class="text-decoration-none text-dark " href="../main_page/index.php">Home</a><span class=""> > Compare > <?= $resultCompare[0]['name'] ?> vs <?= $resultCompare[1]['name'] ?></span>
</div>
<hr>

<section>
    <div class="container">
        <div class="title-cart">
            <p class="fs-1 fw-light">Compare table</p>
        </div>
        <?php
        $splitStr =  $resultCompare[0]['name'];
        $splitArr1 = explode(' ', $splitStr);
        $splitStr =  $resultCompare[1]['name'];
        $splitArr2 = explode(' ', $splitStr);

        ?>
        <table class="table">
            <thead>
                <tr class=" fs-4">
                    <th></th>
                    <th><?= $resultCompare[0]['name'] ?></th>
                    <th><?= $resultCompare[1]['name'] ?></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th class="">Thumbnail</th>
                    <td><img class="w-50" src="../resources/img/img_cosmetics/<?= $resultCompare[0]['url'] ?>" alt=""></td>
                    <td><img class="w-50" src="../resources/img/img_cosmetics/<?= $resultCompare[1]['url'] ?>" alt=""></td>
                </tr>
                <tr>
                    <th>Brand</th>
                    <td><?= $splitArr1[1] ?></td>
                    <td><?= $splitArr2[1] ?></td>
                </tr>
                <tr>
                    <th>Price</th>
                    <td>$ <?= $resultCompare[0]['price'] ?></td>
                    <td>$ <?= $resultCompare[1]['price'] ?></td>
                </tr>
                <tr>
                    <th>Guide</th>
                    <td><?= $resultCompare[0]['guide'] ?></td>
                    <td><?= $resultCompare[1]['guide'] ?></td>
                </tr>
                <tr>
                    <th></th>
                    <td><button onclick="buyNow(<?= $resultCompare[0]['id'] ?>)" class="btn btn-danger rounded-pill px-4" href="cart.php">Buy now</button></td>
                    <td><button onclick="buyNow(<?= $resultCompare[1]['id'] ?>)" class="btn btn-danger rounded-pill px-4" href="cart.php">Buy now</button></td>
                </tr>
            </tbody>
        </table>
    </div>
</section>
<?php
include "../components/footer.php"
?>

<?php if (count($resultCompare) > 0) {
    foreach ($resultCompare as $value) {
?>
        <tr>

        </tr>
<?php }
}  ?>