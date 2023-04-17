<?php
require_once('../database/helper.php');
require_once('../utils/utility.php');
require_once('../components/header.php');
$cart = [];
if (isset($_COOKIE['cart'])) {
    $json = $_COOKIE['cart'];
    $cart = json_decode($json, true);
}
$idList = [];
foreach ($cart as $item) {
    $idList[] = $item['id'];
}
if (count($idList) > 0) {
    $idList = implode(',', $idList);
    $sql = " select * from information_products where id in ($idList)";
    $cartList = executeResult($sql);
} else {
    $cartList = [];
}
$id = getGet('id');

$btnCheckout = '';
if (count($cart) == 0) {
    $nothingCart = "Nothing in Cart";
    $_SESSION['nothingCart'] = $nothingCart;
    $btnCheckout = "<button class='fs-5 px-5 rounded-pill btn btn-dark'>Checkout</button>";
} else {
    $btnCheckout = '<a href="checkout.php"><button class="fs-5 px-5 rounded-pill btn btn-dark">Checkout</button></a>';
}
?>
<!-- body -->
<div class="container pt-3 fw-light fs-5">
    <a class="text-decoration-none text-dark " href="../main_page/index.php">Home</a><span class=""> > Cart</span>
</div>
<hr>
<div class="container pb-3">
    <div class="title-cart">
        <p class="fs-1 fw-light">Your cart</p>
    </div>
    <div class="row">
        <div id="listItem" class="col-md-12">
            <table  class="table ">
                <thead>
                    <tr>
                        <th>Products</th>
                        <th></th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Lấy dữ liệu rồi đổ ra bảng cart -->
                    <?php
                    $count = 0;
                    $total = 0;
                    foreach ($cartList as $item) {
                        $num = 0;
                        foreach ($cart as $value) {
                            if ($value['id'] == $item['id']) {
                                $num = (int)$value['num'];
                                break;
                            }
                        }
                        $total +=  (int)$num * (int)$item['price'];
                        echo
                        '<tr class="">
                            <td class="text-center"><img src="../resources/img/img_cosmetics/' . $item['url'] . '"style="height:100px"/></td>
                            <td class="fs-5 fw-light">' . $item['name'] . ' <br>
                            <i style="font-size:10px; cursor: pointer;" onclick="deleteCart(' . $item['id'] . ')" class="fa-solid fa-x pe-auto"></i> </td>
                            <td><input pattern="\d[1,2]"   min="1" style="width:4vw" onchange="quantityCart(' . $item['id'] . ')" class="border rounded-pill text-center p-2" type="number" value=' . $num . '></td>
                            <td>' . number_format($item['price'], 2, '.', ',') . '</td>
                            <td>' . number_format($num * $item['price'], 2, '.', ',') . '</td>
                            </tr>';
                    }
                    ?>
                </tbody>
            </table>
            <?php
            if (isset($_SESSION['nothingCart'])) {
                echo '<div id="" class="text-center fs-2">' . $_SESSION['nothingCart'] . '</div>';
                unset($_SESSION['nothingCart']);
            } else {
                echo '';
            }
            ?>
            <div class="float-right">
                <div class="fs-3" >
                    Total : <span class="text-danger">$ <?= number_format($total, 2, '.', ',') ?></span>
                </div>
                <div class="">
                    <?= $btnCheckout ?>
                    <a href="../main_page/products.php" class="ps-2"><button style="background: #f1f1f1;" class='fs-5 btn px-5 rounded-pill'>Continue shopping</button></a>
                </div>
            </div>
        </div>

    </div>
</div>

<script type="text/javascript">
    function deleteCart(id) {
        $.post('../api/cookie.php', {
            'action': 'delete',
            'id': id
        }, (data) => {
            $("#totalCart").load("../components/header.php #totalCart");
            $('#listItem').load("cart.php #listItem");
        })
    }

    function quantityCart(id) {
        num = $('#quantity-cart').val();
        $.post('../api/cookie.php', {
            'action': 'add',
            'id': id,
            'num': Number(num) ? Number(num) : 1
        }, (data) => {
            $("#totalCart").load("../components/header.php #totalCart");
            $('#listItem').load("cart.php #listItem");
        })
    }
</script>

<?php require_once('../components/footer.php'); ?>