<?php
require_once('../database/helper.php');
require_once('../utils/utility.php');
include_once('../components/header.php');

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
?>

<!-- body -->
<div class="container pt-3 fw-light fs-5">
    <a class="text-decoration-none text-dark " href="../main_page/index.php">Home</a><span class=""> > Cart</span>
</div>
<hr>
<div class="container pb-3">

    <div class="row">
        <div class="col-md-12">
            <table id="list-item" class="table table-bordered">
                <thead>
                    <tr>
                        <th>NO</th>
                        <th>Thumbnail</th>
                        <th>Title</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Total</th>
                        <th></th>
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
                                $num = $value['num'];
                                break;
                            }
                        }
                        $total +=  $num * $item['price'];
                        echo
                        '<tr class="text-center">
                            <td>' . (++$count) . '</td>
                            <td><img src="../resources/img/img_cosmetics/' . $item['url'] . '"style="height:100px"/></td>
                            <td>' . $item['name'] . '</td>
                            <td>' . $num . '</td>
                            <td>' . number_format($item['price'], 0, ',', '.') . '</td>
                            <td>' . number_format($num * $item['price'], 0, ',', '.') . '</td>
                            <td><button class="btn btn-warning" onclick="deleteCart(' . $item['id'] . ')">Delete</button></td>
                            <td><button class="btn btn-warning" onclick="addToCart(' . $item['id'] . ')">add</button></td>
                            </tr>';
                    }
                    ?>
                </tbody>
            </table>
            <p style="font-size : 30px; color:blue">
                Total : $ <?= number_format($total, 0, ',', '.') ?>
            </p>
            <a href="checkout.php">
                <button class='btn btn-success' style="width:100%; font-size:32px;">Checkout</button>
            </a>
        </div>

    </div>
</div>

<script type="text/javascript">
    function deleteCart(id) {
        $.post('../api/cookie.php', {
            'action': 'delete',
            'id': id
        }, function(data) {
            location.reload()
        })
    }
</script>
<script type="text/javascript">
    function addToCart(id) {
        $.post('../api/cookie.php', {
            'action': 'add',
            'id': id,
            'num': 1
        }, function(data) {
            $('#list-item').load("cart.php #list-item")
        });
    }
</script>

<?php
include_once('../components/footer.php');

?>