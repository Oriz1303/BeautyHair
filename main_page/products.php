<?php
require_once('../database/helper.php');
require_once('../utils/utility.php');
include "../components/header.php";
// require '../api/handle_compare.php';
// $result = executeResult("SELECT * FROM information_products");
if (isset($_GET['page_no']) && $_GET['page_no'] !== '') {
    $pageNo = $_GET['page_no'];
} else {
    $pageNo = 1;
}

$productsPerPage = 8;
$offset = ($pageNo - 1) * $productsPerPage;
$previousPage = $pageNo - 1;
$nextPage = $pageNo + 1;

$resultCount = executeResult("SELECT COUNT(*) as total_records FROM information_products");
foreach ($resultCount as $records) {
    $records =  $records['total_records'];
}

$totalNoOfPages = ceil($records / $productsPerPage);

$sqlProducts = executeResult("SELECT * FROM information_products LIMIT $offset, $productsPerPage");
$sqlCount = executeResult("SELECT count(*) as count FROM information_products");

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
    $resultCompare = "SELECT * FROM information_products WHERE id IN ($idCompare)";
    $listCompare = executeResult($resultCompare);
} else {
    $listCompare = [];
}
?>

<div class="container pt-3 fw-light fs-5">
    <a class="text-decoration-none text-dark " href="../main_page/index.php">Home</a><span class=""> > Cosmetics</span>
</div>
<hr>
<div class="container">
    <div class="row w-100 mx-5">
        <div class="col-2">List</div>
        <div class="col-10">
            <div class="container w-100">
                <div class="row">
                    <p class="w-50 fw-bold fs-4">COSMETICS <span class="fw-light fs-5">(<?php foreach ($sqlCount as $count) {
                                                                                            echo $count['count'];
                                                                                        } ?> products)</span></p>
                    <p class="w-50 d-flex justify-content-end">Order</p>
                    <hr>
                </div>
                <div class="grid-containers">
                    <?php
                    foreach ($sqlProducts as $row) {
                    ?>
                        <div class="grid-item">
                            <a href="products_detail.php?products=<?= $row['id'] ?>"><img class="w-75" src="../resources/img/img_cosmetics/<?= $row['url'] ?>" alt=""></a>
                            <div class="text-center fs-5">
                                <i onclick="addToCart(<?= $row['id'] ?>)" class="fa-solid fa-cart-shopping"></i>
                                <p><?= $row['name'] ?></p>
                                <button type="submit" class="compare-product fs-6 fw-light " onclick="addProductCompare(<?= $row['id'] ?>)">+ compare</button>
                                <p class="fs-6 fw-light">$ <?= $row['price'] ?></p>
                            </div>
                        </div>
                    <?php } ?>


                    <!-- <div>
                        <strong>Page <?= $pageNo; ?> of <?= $totalNoOfPages ?> </strong>
                    </div> -->
                </div>
                <nav class="text-center" aria-label="">
                    <ul class="pagination ">
                        <li class="page-item"><a class="page-link text-decoration-none text-center <?= ($pageNo <= 1) ? 'disabled' : ''; ?>" href="<?= ($pageNo > 1) ? 'products.php?page_no=' . $previousPage : ''; ?>">
                                << /a>
                        </li>
                        <?php for ($counter = 1; $counter <= $totalNoOfPages; $counter++) { ?>
                            <li class="page-item"><a class="px-2 text-decoration-none text-center" href="products.php?page_no=<?= $counter ?>"><?= $counter ?></a></li>
                        <?php } ?>
                        <li class="page-item"><a class="page-link text-decoration-none text-center <?= ($pageNo >= $totalNoOfPages) ? 'disabled' : ''; ?>" href="<?= ($pageNo < $totalNoOfPages) ? 'products.php?page_no=' . $nextPage : ''; ?>">></a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>


<style>
    #compare-product {
        position: fixed;
        bottom: 0;
        left: 0;
        background-color: #ebebeb;
        width: 100%;
        height: 24vh;
        z-index: 999;
        margin: 0;
    }

    .close-compare-block {
        /* float: right; */
    }
</style>
<section id="compare-product" class="d-none shadow">
    asdasds
    <div class="container">
        <div class="close-compare-block">
            <button class=""><i class="fa-solid fa-xmark"></i></button>
            <div id="list-compare">
                <?php
                foreach ($listCompare as $value) {
                ?>
                    <div><?= $value['name'] ?></div>
                <?php  }
                ?>
            </div>
        </div>
    </div>
</section>
<?php

include "../components/footer.php"

?>
<script>
    let blockCompare = document.getElementById('compare-product');
    console.log(blockCompare)
    let compare = document.querySelectorAll('.compare-product');
    compare.forEach(product => {
        product.addEventListener('click', () => {
            blockCompare.classList.remove('d-none')
        })
    });

    const closeBlockCompare = document.querySelector('.close-compare-block');
    closeBlockCompare.onclick = () => {
        blockCompare.classList.add('d-none');
        document.cookie = "username=compare; expires=Thu, 01 Jan 1999 00:00:00 UTC; path=/;";
    }

    function addProductCompare(id) {
        $.post('../api/cookie.php', {
            'action': 'compare_add',
            'id_product': id
        }, function(data) {
            $('#list-compare').load("products.php #list-compare")
        })
    }
</script>