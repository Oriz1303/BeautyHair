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

<style>
    .displayListComestics:hover {
        animation: rotate 1s linear;
    }
</style>

<div class="container pt-3 fw-light fs-5">
    <a class="text-decoration-none text-dark " href="../main_page/index.php">Home</a><span class=""> > Cosmetics</span>
</div>
<hr>
<div class="container">
    <div class="row w-100 mx-5">
        <div class="col-2  contact1">
            <div class="fs-4 fw-bold">List</div>
            <div class="row py-2">
                <div class="col-8"><span>Comestics</span>
                </div>
                <div class="col-4 displayListComesticsParent">
                    <i class="displayListComestics fa-solid fs-6 fa-chevron-down"></i>
                    <i class="fa-solid fs-6 fa-chevron-up d-none"></i>
                </div>
            </div>
            <ul class="ps-2 text-decoration-none text-dark" style="list-style-type: none;">
                <li><a class="nav-link" href="products.php?cate=1">Cream</a></li>
                <li><a class="nav-link" href="products.php?cate=2">Shampoo</a></li>
                <li><a class="nav-link" href="products.php?cate=3">Mask</a></li>
                <li><a class="nav-link" href="products.php?cate=4">Serum</a></li>
                <li><a class="nav-link" href="products.php?cate=5">Hairsprays</a></li>
                <li><a class="nav-link" href="products.php?cate=6">Oils</a></li>
            </ul>
            <div>
                <input type="range" min="">
            </div>
            <button class="btn btn-dark">Ok</button>
        </div>
        <div class="col-10">
            <div class="container w-100">
                <?php
                if (isset($_GET['cate'])) {
                    $cate = getGet('cate');
                    $resultCate = executeResult("SELECT * FROM information_products WHERE title = $cate");
                    $resultCategories = executeResult("SELECT * FROM products_categories WHERE id = $cate");
                ?>
                    <div class="row">
                        <p class="w-50 fw-bold fs-2"><?php foreach ($resultCategories as $value) {
                                                            echo $value['categories'];
                                                        }; ?> <span class="fw-light fs-5">(<?= count($resultCate) ?> products)</span></p>
                        <p class="w-50 d-flex justify-content-end">Order</p>
                        <hr>
                    </div>
                    <?php
                    echo '<div class="grid-containers">';
                    foreach ($resultCate as $value) {
                    ?>
                        <div class="grid-items">
                            <a href="products_detail.php?products=<?= $value['id'] ?>"><img class="list-products-image" src="../resources/img/img_cosmetics/<?= $value['url'] ?>" alt=""></a>
                            <div class="text-center fs-5">
                                <i onclick="addToCart(<?= $value['id'] ?>)" class="fa-solid fa-cart-shopping"></i><br>
                                <a class="text-decoration-none text-dark" href="products_detail.php?products=<?= $value['id'] ?>"><?= $value['name'] ?></a><br>
                                <button type="submit" class="compare-product bg-white fs-6 fw-light " onclick="addProductCompare(<?= $value['id'] ?>)">+ Compare</button>
                                <button type="submit" class="compare-delete bg-white d-none fs-6 fw-light " onclick="deleteProductCompare(<?= $value['id'] ?>)">- Compared</button>
                                <p class="fs-6 fw-light">$ <?= $value['price'] ?></p>
                            </div>
                        </div>
                    <?php
                    }
                    echo '</div>';
                } else {
                    ?>
                    <div class="row">
                        <p class="w-50 fw-bold fs-2">COSMETICS <span class="fw-light fs-5">(<?php foreach ($sqlCount as $count) {
                                                                                                echo $count['count'];
                                                                                            } ?> products)</span></p>
                        <div class="w-50 d-flex justify-content-end">
                            <span>Sorted by</span>
                        </div>
                        <hr>
                    </div>
                    <?php
                    echo '<div class="grid-containers">';
                    foreach ($sqlProducts as $row) {
                    ?>
                        <div class="grid-item">
                            <a href="products_detail.php?products=<?= $row['id'] ?>"><img class="list-products-image" src="../resources/img/img_cosmetics/<?= $row['url'] ?>" alt=""></a>
                            <div class="text-center fs-5">
                                <i onclick="addToCart(<?= $row['id'] ?>)" class="add-cart fa-solid fa-cart-shopping"></i><br>
                                <a class="text-decoration-none text-dark" href="products_detail.php?products=<?= $row['id'] ?>"><?= $row['name'] ?></a><br>
                                <button type="submit" class="compare-product bg-white fs-6 fw-light " onclick="addProductCompare(<?= $row['id'] ?>)">+ Compare</button>
                                <button type="submit" class="compare-delete bg-white d-none fs-6 fw-light " onclick="deleteProductCompare(<?= $row['id'] ?>)">- Compared</button>
                                <p class="fs-6 fw-light">$ <?= $row['price'] ?></p>
                            </div>
                        </div>
                    <?php }
                    echo '</div>';
                    ?>
                    <div class="text-center my-2">
                        <strong>Page <?= $pageNo; ?> of <?= $totalNoOfPages ?> </strong>
                    </div>
                    <div class="d-flex justify-content-center">
                        <nav class="" aria-label="">
                            <ul class="pagination d-flex align-items-center">
                                <li class="page-item"><a class="border-0 page-link text-decoration-none text-center <?= ($pageNo <= 1) ? 'disabled' : ''; ?>" href="<?= ($pageNo > 1) ? 'products.php?page_no=' . $previousPage : ''; ?>">
                                        <</a>
                                </li>
                                <?php for ($counter = 1; $counter <= $totalNoOfPages; $counter++) { ?>
                                    <li class="page-item"><a class="px-2 text-decoration-none text-center text-dark" href="products.php?page_no=<?= $counter ?>"><?= $counter ?></a></li>
                                <?php } ?>
                                <li class="page-item"><a class="border-0 page-link text-decoration-none text-center <?= ($pageNo >= $totalNoOfPages) ? 'disabled' : ''; ?>" href="<?= ($pageNo < $totalNoOfPages) ? 'products.php?page_no=' . $nextPage : ''; ?>">></a></li>
                            </ul>
                        </nav>
                    </div>
                <?php
                } ?>
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
        height: 16vh;
        z-index: 999;
        margin: 0;
    }
</style>
<section id="compare-product" class="d-none shadow">
    <div class="container p-4">
        <div class="row">
            <div id="list-compare" class="col-10">
                <div class="  d-flex justify-content-center">
                    <?php
                    $messageCompare = '';
                    // echo count($listCompare);
                    if (count($listCompare) < 2) {
                        $messageCompare = 'You should add more item.';
                    } else {
                        $messageCompare = 'Compare other item please remove an item';
                    }
                    foreach ($listCompare as $value) {
                    ?>
                        <div class="col-6 d-flex">
                            <div>
                                <img src="../resources/img/img_cosmetics/<?= $value['url'] ?>" width="100" alt="">
                            </div>
                            <div class="mx-4 text-center ">
                                <a href="products_detail.php?products=<?= $value['id'] ?>" class="fs-4 m-0 text-decoration-none text-dark"><?= $value['name'] ?></a>
                                <p style="cursor: pointer;" class="fs-6 m-0 fw-light" onclick="deleteProductCompare(<?= $value['id'] ?>)">x Delete</p>
                            </div>
                        </div>
                    <?php  }
                    ?>
                </div>
            </div>
            <div class="col-2 text-center d-float">
                <div id="btnCompare">
                    <?php
                    if (count($listCompare) == 2) {
                        echo '<a href="compare.php" class="btn bg-dark text-white rounded-pill w-100 px-4 my-2 shadow">Proceed compare</a>';
                    } else {
                        echo '<button class="btn bg-dark text-white rounded-pill w-100 px-4 my-2 shadow">Proceed compare</button>';
                    }
                    ?>
                </div>
                <button href="compare.php" class="test-note btn bg-danger text-white rounded-pill w-100 px-4 my-2 shadow">Close compare</button>
            </div>
        </div>

        <div id="message-compare" class="text-center ">
            <p><span class=" text-danger ">Note</span>: Compare only 2 products. <?= $messageCompare ?></p>
        </div>

    </div>
</section>
<?php

include "../components/footer.php"

?>
<script>
    let blockCompare = document.getElementById('compare-product');
    let compare = document.querySelectorAll('.compare-product');
    let compareDeleteBtn = document.querySelectorAll('.compare-delete');
    compare.forEach((product, index) => {
        product.addEventListener('click', () => {
            if (blockCompare.classList.contains('d-none')) {
                blockCompare.classList.remove('d-none');
            }
            if (compareDeleteBtn[index].classList.contains('d-none')) {
                compareDeleteBtn[index].classList.remove('d-none');
                product.classList.add('d-none');
            }
        })
        compareDeleteBtn[index].addEventListener('click', () => {
            if (product.classList.contains('d-none')) {
                compareDeleteBtn[index].classList.add('d-none');
                product.classList.remove('d-none');
            }
        })
    });

    let close = document.querySelector('.test-note');
    console.log(close)
    close.addEventListener('click', () => {
        blockCompare.classList.add('d-none');
    })

    function addProductCompare(id) {
        $.post('../api/cookie.php', {
            'action': 'compare_add',
            'id_product': id
        }, function(data) {
            $('#list-compare').load("products.php #list-compare");
            $('#message-compare').load('products.php #message-compare');
            $('#btnCompare').load('products.php #btnCompare');

        })
    }

    function deleteProductCompare(id) {

        $.post('../api/cookie.php', {
            'action': 'compare_delete',
            'id_product': id
        }, function(data) {
            $('#list-compare').load('products.php #list-compare');
            $('#message-compare').load('products.php #message-compare');
            $('#btnCompare').load('products.php #btnCompare');
        })
    }
</script>