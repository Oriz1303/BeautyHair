<?php
require_once('../database/helper.php');
require_once('../utils/utility.php');
include "../components/header.php";
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
echo $totalNoOfPages;

$sqlProducts = executeResult("SELECT * FROM information_products LIMIT $offset, $productsPerPage");
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
                    <p class="w-50">COSMETICS</p>
                    <p class="w-50 d-flex justify-content-end">Order</p>
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
                            <li class="page-item"><a class="page-link text-decoration-none text-center <?= ($pageNo <= 1) ? 'disabled' : ''; ?>" href="<?= ($pageNo > 1) ? 'products.php?page_no=' . $previousPage : ''; ?>"><</a></li>
                            <?php
                            for ($counter = 1; $counter <= $totalNoOfPages; $counter++) { ?>
                                <li class="page-item"><a class="px-2 text-decoration-none text-center" href="products.php?page_no=<?=$counter?>"><?=$counter?></a></li>
                            <?php } ?>
                            <li class="page-item"><a class="page-link text-decoration-none text-center <?= ($pageNo >= $totalNoOfPages) ? 'disabled' : ''; ?>" href="<?= ($pageNo < $totalNoOfPages) ? 'products.php?page_no=' . $nextPage : ''; ?>">></a></li>
                        </ul>
                    </nav>
            </div>
        </div>
    </div>

</div>

<script type="text/javascript">
    function addToCart(id) {
        $.post('../api/cookie.php', {
            'action': 'add',
            'id': id,
            'num': 1
        }, function(data) {
            $("#totalCart").load("../components/header.php #totalCart")
        })
    }
</script>
<?php
include "../components/footer.php"
?>

<!-- <?php
        // $i = 0;
        // if (mysqli_num_rows($result) > 0) {
        //     while ($row = mysqli_fetch_assoc($result)) {
        //         // kiểm tra nếu $i chia hết cho 4 thì in ra thẻ cha <div>
        //         if ($i % 4 == 0) {
        //             echo "<div>";
        //         }

        //         // in ra thẻ con <span>
        //         echo "<span>" . $row['ten_san_pham'] . "</span>";

        //         // nếu $i + 1 chia hết cho 4 thì đóng thẻ cha </div>
        //         if (($i + 1) % 4 == 0) {
        //             echo "</div>";
        //         }

        //         $i++;
        //     }

        //     // kiểm tra nếu $i không chia hết cho 4 thì cần đóng thẻ cha </div> bên ngoài vòng lặp
        //     if ($i % 4 != 0) {
        //         echo "</div>";
        //     }
        // }
        ?> -->


<!-- <?php
        // $i = 0;
        // if (mysqli_num_rows($result) > 0) {
        //     while ($row = mysqli_fetch_assoc($result)) {
        //         if ($i == 0 || $i % 4 == 0) {
        //             echo '<div class="row d-flex w-100">';
        //         }
        // 
        ?>
        //                 <div class="w-25"><?= $row['price'] ?></div>
        //         <?php
                    //         $i++;
                    //         if (($i + 1) % 4 == 0 || $i == 0) {
                    //             echo "</div>";
                    //         }
                    //     }
                    //     if ($i % 4 != 0) {
                    //         echo "</div>";
                    //     }
                    // } 
                    ?> -->