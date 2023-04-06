<?php
require_once('../database/helper.php');
require_once('../utils/utility.php');
include '../components/header.php';
$id = $_GET['products'];
$result = executeResult("SELECT * FROM information_products WHERE id = $id");
foreach ($result as $row) {
?>

    <div class="container pt-3 fw-light fs-5">
        <a class="text-decoration-none text-dark " href="../main_page/index.php">Home</a><span class=""> > Cosmetics > <?= $row['name'] ?></span>
    </div>
    <hr>
    <div class="container">
        <div class="row">
            <div class="col-6 text-center">
                <img src="../resources/img/img_cosmetics/<?= $row['url'] ?>" alt="">
            </div>
            <div class="col-6 text-start">
                <p class="fs-2"><?= $row['name'] ?></p>
                <p class="fs-5">$ <?= $row['price'] ?></p>
                <button onclick="addToCart(<?= $row['id'] ?>)" class="btn btn-primary">Add to cart</button>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                Description
            </div>
        </div>
        <div class="row">
            <div class="col-12 mb-5">
                <?= $row['description'] ?>
            </div>
        </div>
    </div>
<?php
} ?>
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