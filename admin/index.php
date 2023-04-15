<?php
session_start();
if (!isset($_SESSION['submit'])) {
    header('Location: login.php');
}
?>

<?php require_once('config/dbhelper.php'); ?>
<?php
header("content-type:text/html; charset=UTF-8");
?>
<!DOCTYPE html>
<html>

<head>
    <title>Thêm Sản Phẩm</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <!-- summernote -->
    <!-- include summernote css/js -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <link rel="stylesheet" href="style3.css">
    <style>
        .blockList {
            position: absolute;
            left: 0;
            top: 100px;
            height: 100%;
            width: 10vw;
            padding: 20px;
            text-align: center;
            background-color: #b0b0b0;
        }
    </style>
</head>

<body>
    <div class="blockList">
        <section class="dashboard">
            <div class="container ">
                <div class="sp">
                    <p>Sản phẩm</p>
                    <?php
                    $sql = executeResult("SELECT * FROM `products`");
                    echo '<span>' . count($sql) . '</span>';
                    ?>
                    <p><a href="product/">click here➜</a></p>
                </div>
                <div class="sp kh">
                    <p>Khách hàng</p>
                    <?php
                    $sql = executeResult("SELECT * FROM account WHERE status =0 ");
                    echo '<span>' . count($sql) . '</span>';
                    ?>
                    <p><a href="costomer.php">click here➜</a></p>
                </div>
                <div class="sp dm">
                    <p>Danh mục</p>
                    <?php
                    $sql = executeResult("SELECT * FROM `products_categories`");
                    echo '<span>' . count($sql) . '</span>';
                    ?>
                    <p><a href="category/index.php">click here➜</a></p>
                </div>
                <div class="sp dh">
                    <p>Đơn hàng</p>
                    <?php
                    $sql = executeResult("SELECT * FROM `order_details`");
                    echo '<span>' . count($sql) . '</span>';
                    ?>
                    <p><a href="dashboard.php">click here➜</a></p>
                </div>
            </div>
        </section>
    </div>
    <div id="wrapper">
        <header>
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link active" href="category/index.php">Thống kê</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="category/index.php">Quản lý danh mục</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="product/">Quản lý sản phẩm</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link " href="dashboard.php">Quản lý đơn hàng</a>
                </li>
            </ul>
        </header>
        <div class="container">
            <div class="text-center">
                <img width="360" src="../resources/img/logo4-removebg-preview.png" alt="">
            </div>
        </div>
        <div class="container">
            <main>

                <section class="new-order">
                    <h4>Đơn hàng mới</h4>
                    <table class="table">
                        <tr class="bold">
                            <th>NO</th>
                            <th>Name/Phone</th>
                            <th>Products</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th>Address</th>
                        </tr>
                        <?php
                        try {
                            if (isset($_GET['page'])) {
                                $page = $_GET['page'];
                            } else {
                                $page = 1;
                            }
                            $limit = 10;
                            $start = ($page - 1) * $limit;

                            $sql = "SELECT * from info_orders ORDER BY date DESC limit $start,$limit ";
                            $order_details_List = executeResult($sql);
                            $total = 0;
                            $count = 0;
                            // if (is_array($order_details_List) || is_object($order_details_List)){
                            foreach ($order_details_List as $item) {
                        ?>
                                <tr>
                                    <th><?= ++$count ?></th>
                                    <td><?= $item['fullname'] ?><br><?= $item['phone_number'] ?></td>
                                    <td>
                                        <div>
                                            <?= $item['name'] ?><br><strong></strong>
                                        </div>
                                    </td>
                                    <td class=""><?= $item['quantity'] ?></td>
                                    <td class="text-danger fw-bold"> $ <?= number_format($item['quantity'] * $item['price'], 2, ',', '.') ?></td>
                                    <td class="b-500"><?= $item['address'] ?><br><?= $item['date'] ?></td>
                                </tr>
                        <?php


                            }
                        } catch (Exception $e) {
                            die("Lỗi thực thi sql: " . $e->getMessage());
                        }
                        ?>
                    </table>
                </section>
            </main>
        </div>
    </div>
</body>
<style>
    #wrapper {
        padding-bottom: 5rem;
    }

    .b-500 {
        font-weight: 500;
    }

    .red {
        color: red;
    }

    .green {
        color: green;
    }
</style>

</html>