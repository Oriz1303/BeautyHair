<?php
require_once('../database/helper.php');
include "../components/header.php";

$total = 0;
$termSearch = '';
if (isset($_POST['submit'])) {
    if (empty($_POST['termSearch'])) {
        $total = 0;
    } else if (!empty($_POST['termSearch'])) {
        $termSearch = trim($_POST['termSearch']);
        $sql = executeResult("SELECT * FROM information_products  WHERE name LIKE '%$termSearch%' ");
        foreach ($sql as $key1 => $value1) {
            $total++;
        }
    }
}
?>

<div class="container pt-3 fw-light fs-5">
    <a class="text-decoration-none text-dark " href="../main_page/index.php">Home</a><span class=""> > Search</span>
</div>
<hr>

<div class="container">
    <h2>Found <?= $total ?> products "<?= $termSearch ?>"</h2>
    <div class="row">
        <div class="col-12">
            <div class="grid-containers">
                <?php
                if (isset($sql)) {
                    foreach ($sql as $key => $item) {
                ?>
                        <div class="grid item">
                            <a href="products_detail.php?products=<?= $item['id'] ?>"><img class="w-50" src="../resources/img/img_cosmetics/<?= $item['url'] ?>" alt=""></a>
                            <div class="text-center fs-5">
                                <i onclick="addToCart(<?= $item['id'] ?>)" class="fa-solid fa-cart-shopping"></i>
                                <p><?= $item['name'] ?></p>
                                <p class="fs-6 fw-light">$ <?= $item['price'] ?></p>
                            </div>
                        </div>
                <?php
                    }
                } else {
                    echo '';
                }
                ?>

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
include '../components/footer.php';
?>