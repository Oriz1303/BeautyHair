<style>

</style>
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
                        <a href="index2_products.php" class="info-box-icon bg-danger elevation-1"><i class="fa-solid fa-industry"></i></a>

                        <div class="info-box-content">
                            <span class="info-box-text">Products</span>
                            <span class="info-box-number">
                                <?php
                                $resultProducts = executeResult("SELECT * FROM products");
                                echo count($resultProducts);
                                ?>
                            </span>
                        </div>
                        <Span class="w-25 d-flex align-items-center justify-content-center btn btn-warning" data-target="#exampleModal" data-toggle="modal">New Product</Span>
                        <!-- Button trigger modal -->
                        <!-- Modal -->

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
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>NO</th>
                                        <th>Name</th>
                                        <th>Price</th>
                                        <th>Image</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $count = 0;
                                    $resultInfoProducts = executeResult("SELECT * FROM information_products ORDER BY id DESC");
                                    foreach ($resultInfoProducts as $row) {
                                        $products_id = $row['id'];
                                    ?>
                                        <form action="" method="POST">
                                            <input name="products_id" type="number" value="<?= $products_id ?>" hidden>
                                            <tr>
                                                <td><?= ++$count ?></td>
                                                <td>
                                                    <div>
                                                        <input class="form-control border-0 w-auto " disabled class="bg-dark" type="text" value="<?= $row['name'] ?>">
                                                    </div>
                                                </td>
                                                <td>
                                                    <input class="form-control border-0 w-auto" disabled class="bg-dark w-auto" type="text" value="<?= $row['price'] ?>">
                                                </td>
                                                <td>
                                                    <div class="d-flex align-items-center">
                                                        <img class="w-25 rounded-circle" src="../resources/img/img_cosmetics/<?= $row['url'] ?>" alt="">
                                                        <div class="m-2 h-100">
                                                            <button style="min-width: 200px;" class="d-none m-2 btn btn-warning ">Edit</button>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td style="min-width: 200px;">
                                                    <div>
                                                        <span class="editStatus text-center btn w-100 btn-primary  d-flex justify-content-center align-items-center">Edit</span>
                                                        <button class="saveStatus w-100 d-none btn  btn-warning">Save</button>
                                                    </div>
                                                </td>
                                            </tr>
                                        </form>
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

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog position-absolute" style="left:10vw; top:5vh;" role="document">
        <div style="height:80vh; width:80vw;" class="modal-content ">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
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
}
require_once './index2_footer.php';
?>