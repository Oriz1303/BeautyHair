<?php
header("content-type:text/html; charset=UTF-8");
?>
<?php require_once('config/dbhelper.php'); ?>
<!DOCTYPE html>
<html>

<head>
    <title>Thêm Sản Phẩm</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Oswald', sans-serif;
            outline: none;
            border: none;
            text-decoration: none;
            transition: .2s linear;
            position: relative;
            /* cursor: default; */
        }
    </style>
</head>

<body>
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link" href="category/index.php">Thống kê</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="category/index.php">Quản lý danh mục</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="product/">Quản lý sản phẩm</a>
        </li>
        <li class="nav-item ">
            <a class="nav-link active" href="dashboard.php">Quản lý giỏ hàng</a>
        </li>
    </ul>
    <div class="container">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h2 class="text-center">Quản lý giỏ hàng</h2>
            </div>
            <div class="panel-body">
                <form action="" method="POST">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr style="font-weight: 500;text-align: center;">
                                <td width="50px">STT</td>
                                <td width="200px">Tên User</td>
                                <td>Tên Sản Phẩm/<br>Số lượng</td>
                                <td>Tổng tiền</td>
                                <td width="250px">Địa chỉ</td>
                                <td>Số điện thoại</td>
                                <td>Trạng thái</td>
                                <!-- <td width="50px">Lưu</td> -->
                            </tr>
                        </thead>
                        <tbody>
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
                                    echo '
                                        <tr style="text-align: center;">
                                            <td width="50px">' . (++$count) . '</td>
                                            <td style="text-align:center">' . $item['fullname'] . '</td>
                                            <td>' . $item['name'] . '<br>(<strong>' . $item['quantity'] . '</strong>)</td>
                                            <td class="b-500 red">$ ' . number_format($item['price'], 0, ',', '.') . '</td>
                                            <td width="100px">' . $item['address'] . '</td>
                                            <td width="100px">' . $item['phone_number'] . '</td>
                                            <td width="100px" class="green b-500">' . $item['status'] . '</td>
                                            <td width="100px">
                                                <a href="edit.php?order_id=' . $item['id'] . '" class="btn btn-success">Edit</a>
                                            </td>
                                        </tr>
                                    ';
                                }
                            } catch (Exception $e) {
                                die("Lỗi thực thi sql: " . $e->getMessage());
                            }
                            ?>
                        </tbody>
                    </table>
                </form>
            </div>
            <ul class="pagination">
                <?php
                $sql = "SELECT * from orders, order_details, products
                where order_details.order_id=orders.id and products.id=order_details.product_id";
                $conn = mysqli_connect("localhost", "root", "Oriz203031", "haircare");
                $result = mysqli_query($conn, $sql);
                $current_page = 0;
                if (mysqli_num_rows($result)) {
                    $numrow = mysqli_num_rows($result);
                    $current_page = ceil($numrow / 10);
                }
                for ($i = 1; $i <= $current_page; $i++) {
                    // Nếu là trang hiện tại thì hiển thị thẻ span
                    // ngược lại hiển thị thẻ a
                    if ($i == $current_page) {
                        echo '
            <li class="page-item"><a class="page-link" href="?page=' . $i . '">' . $i . '</a></li>';
                    } else {
                        echo '
            <li class="page-item"><a class="page-link" href="?page=' . $i . '">' . $i . '</a></li>
                    ';
                    }
                }
                ?>
            </ul>
        </div>
    </div>
</body>
<style>
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