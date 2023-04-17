<?php
ob_start();
require_once './index2_header.php';
?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Sales</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Sales</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>

    <!-- Main content -->

    <section class="content">
        <div class="container-fluid">
            <!-- Info boxes -->
            <div class="row">
                <div class="col-12 col-sm-6 col-md-12">
                    <div class="info-box mb-3">
                        <a href="index2_orders.php" class="info-box-icon bg-success elevation-1"><i class="fas fa-shopping-cart"></i></a>
                        <div class="info-box-content">
                            <span class="info-box-text">Sales</span>
                            <span class="info-box-number">
                                <?php
                                $resultSales = executeResult("SELECT * FROM info_orders");
                                echo count($resultSales);
                                ?></span>
                        </div>
                    </div>
                </div>
                <!-- fix for small devices only -->
                <div class="clearfix hidden-md-up"></div>
            </div>
        </div><!--/. container-fluid -->
    </section>

    <section class="content">
        <div class="container-fluid">
            <!--  LATEST ORDERS  -->
            <div class="row">
                <div class="col-12">
                    <!-- USERS LIST -->
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Orders Information</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                                <button type="button" class="btn btn-tool" data-card-widget="remove">
                                    <i class="fas fa-times"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body p-0">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>NO</th>
                                        <th>Name</th>
                                        <th>Phone number</th>
                                        <th>Time</th>
                                        <th>Item</th>
                                        <th>Quantity</th>
                                        <th>Status</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $count = 0;
                                    $resultInfoOrders = executeResult("SELECT * FROM info_orders ORDER BY id DESC");
                                    foreach ($resultInfoOrders as $row) {
                                        $details_id = $row['details_id'];
                                    ?>
                                        <tr>
                                            <td><?= ++$count ?></td>
                                            <td><?= $row['fullname'] ?></td>
                                            <td><?= $row['phone_number'] ?></td>
                                            <td><?= $row['date'] ?></td>
                                            <td><?= $row['name'] ?></td>
                                            <td><?= $row['quantity'] ?></td>
                                            <form action="" method="POST">
                                                <td>
                                                    <input type="hidden" name="details_id" value="<?= $details_id ?>">
                                                    <select name="status" disabled id="status" class="selectStatus p-2 rounded btn-outline-0">
                                                        <option value="Shipped" <?= $row['status'] == 'Shipped' ? 'selected="selected"' : ''; ?>>Shipped</option>
                                                        <option value="Delivered" <?= $row['status'] == 'Delivered' ? 'selected="selected"' : ''; ?>>Delivered</option>
                                                        <option value="Processcing" <?= $row['status'] == 'Processcing' ? 'selected="selected"' : ''; ?>>Processcing</option>
                                                        <option value="Pending" <?= $row['status'] == 'Pending' ? 'selected="selected"' : ''; ?>>Pending</option>
                                                    </select>
                                                </td>
                                                <td>
                                                    <span class="editStatus text-center btn w-100 btn-primary  d-flex justify-content-center align-items-center">Edit</span>
                                                    <button class="saveStatus w-100 d-none btn  btn-warning">Save</button>
                                                </td>
                                            </form>
                                        </tr>
                                    <?php
                                    } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>
<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
</aside>
<!-- Main Footer -->
<script>
    let editStatus = document.querySelectorAll('.editStatus');
    let saveStatus = document.querySelectorAll('.saveStatus');
    let selectStatus = document.querySelectorAll('.selectStatus');
    editStatus.forEach((btn, index) => {
        btn.onclick = () => {
            if (saveStatus[index].classList.contains('d-none')) {
                saveStatus[index].classList.remove('d-none')
                btn.classList.remove('d-flex')
                btn.classList.add('d-none')
            }
            selectStatus[index].removeAttribute('disabled');
        }
    });
</script>
<?php

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $status = $_POST['status'];
    $details_id = $_POST['details_id'];
    $resultDetails = ("UPDATE `order_details` SET `status` = '$status' WHERE `id` = $details_id");
    execute($resultDetails);
    header('Location: index2_orders.php');
    ob_end_flush();
}
require_once './index2_footer.php';
?>