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
            <h2 class="text-center>Khách Háng</h2>
        </div>
        <div class="panel-body">
            <form action="" method="POST">
                <table class="table table-bordered table-hover">
                    <thead>
                    <tr style="font-weight: 500;text-align: center;">
                        <td width="50px">STT</td>
                        <td width="200px">Tên User</td>
                        <td width="250px">Địa chỉ</td>
                        <td>Số điện thoại</td>
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

                        $sql = "SELECT * FROM tbl_user";
                        $order_details_List = executeResult($sql);
                        $total = 0;
                        $count = 0;
                        // if (is_array($order_details_List) || is_object($order_details_List)){
                        foreach ($order_details_List as $item) {
                            echo '
                                        <tr style="text-align: center;">
                                            <td width="50px">' . (++$count) . '</td>
                                            <td style="text-align:center">' . $item['fullname'] . '</td>
                                            <td style="text-align: center">' . $item['address'] . '</td>
                                            <td width="100px">' . $item['phone'] . '</td>
                                            
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