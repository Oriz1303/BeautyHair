<?php
require_once './index2_header.php';
?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper"> 
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Statistical</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Statistical</li>
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
        <div class="col-12 col-sm-6 col-md-3">
          <div class="info-box">
            <span class="info-box-icon bg-info elevation-1"><i class="fa-solid fa-list"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Category</span>
              <span class="info-box-number">
                <?php
                $resultProductsCate = executeResult("SELECT * FROM products_categories");
                echo count($resultProductsCate);
                ?>
              </span>
            </div>
          </div>
        </div>
        <div class="col-12 col-sm-6 col-md-3">
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
          </div>
        </div>

        <!-- fix for small devices only -->
        <div class="clearfix hidden-md-up"></div>

        <div class="col-12 col-sm-6 col-md-3">
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
        <div class="col-12 col-sm-6 col-md-3">
          <div class="info-box mb-3">
            <a href="" class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></a>

            <div class="info-box-content">
              <span class="info-box-text">Members</span>
              <span class="info-box-number">
                <?php
                $resultMembers = executeResult("SELECT * FROM account WHERE status = 0");
                echo count($resultMembers);
                ?></span>
            </div>
          </div>
        </div>
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
              <h3 class="card-title">Latest Orders</h3>
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
                    <th>Order ID</th>
                    <th>Name</th>
                    <th>Phone number</th>
                    <th>Item</th>
                    <th>Quantity</th>
                    <th>Status</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  $resultInfoOrders = executeResult("SELECT * FROM info_orders ORDER BY id DESC LIMIT 6");
                  foreach ($resultInfoOrders as $row) {
                  ?>
                    <tr>
                      <td><?= $row['id'] ?></td>
                      <td><?= $row['fullname'] ?></td>
                      <td><?= $row['phone_number'] ?></td>
                      <td><?= $row['name'] ?></td>
                      <td><?= $row['quantity'] ?></td>
                      <td><?= $row['status'] ?></td>
                    </tr>
                  <?php } ?>
                </tbody>
              </table>
            </div>
            <div class="card-footer text-center">
              <a href="javascript:">View All Orders</a>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-8">
          <!-- USERS LIST -->
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Latest Members</h3>
              <div class="card-tools">
                <span class="badge badge-danger">9 New Members</span>
                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                  <i class="fas fa-minus"></i>
                </button>
                <button type="button" class="btn btn-tool" data-card-widget="remove">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
            <div class="card-body p-0">
              <ul class="users-list clearfix">
                <?php
                $resultLatestMembers = executeResult("SELECT * FROM account WHERE status = 0 order by create_at ASC LIMIT 6");
                foreach ($resultLatestMembers as $row) {
                ?>
                  <li>
                    <img src="./docs/assets/img/user1-128x128.jpg" alt="">
                    <span class="users-list-name"><?= $row['username'] ?></span>
                    <span class="users-list-name"><?= $row['phone_number'] ?></span>
                    <span class="users-list-date"><?= $row['create_at'] ?></span>
                  </li>
                <?php } ?>
              </ul>
            </div>
            <div class="card-footer text-center">
              <a href="javascript:">View All Users</a>
            </div>
          </div>
        </div>

        <!-- Products -->
        <div class="col-md-4">
          <!-- USERS LIST -->
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Latest Products</h3>

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
              <ul class="list-group clearfix">
                <?php
                $resultLatestProducts = executeResult("SELECT * FROM information_products ORDER BY id DESC LIMIT 4");
                foreach ($resultLatestProducts as $row) {
                ?>
                  <li class="list-group-item d-flex">
                    <img src="../resources/img/img_cosmetics/<?= $row['url'] ?>" width="80" class="users-list-name"></img>
                    <div class="mx-3">
                      <span class=""><?= $row['name'] ?></span><br>
                      <span class="text-danger">$ <?= $row['price'] ?></span>
                    </div>
                  </li>
                <?php } ?>
              </ul>
            </div>
            <div class="card-footer text-center">
              <a href="javascript:">View All Products</a>
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
<?php
require_once './index2_footer.php';
?>