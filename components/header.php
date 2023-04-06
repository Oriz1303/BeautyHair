<?php
$cart = [];
if (isset($_COOKIE['cart'])) {
    $json = $_COOKIE['cart'];
    $cart = json_decode($json, true);
}
$count = 0;
foreach ($cart as $item) {
    $count += $item['num'];
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../resources/css/style3.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <!-- <link rel="stylesheet" href="../resources/css/bootstrap.min.css"> -->
    <!-- lam cai gi ay nhi loi gi -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>

</head>

<body>
    <header class="w-100 text-decoration-none">
        <div class="container">
            <div class="row d-flex align-items-center">
                <div class="col-3">
                    <img class="w-50" src="../resources/img/logo4-removebg-preview.png" alt="">
                </div>
                <div class="col-9  d-flex justify-content-around align-items-center ">
                    <div class="d-inline-flex border rounded-pill">
                        <form action="../main_page/search.php" method="post">
                            <input name="termSearch" class="search-bar px-4 rounded-circle" type="text" placeholder="Search...">
                            <button class="rounded-circle" name="submit" type="submit"><i class="text-white p-3 bg-dark rounded-circle fa-solid fa-magnifying-glass"></i></button>
                        </form>
                    </div>
                    <div class="d-inline-flex justify-content-center align-items-center">
                        <div class="pe-2"><i class="fs-5 fa-solid fa-location-dot"></i></div>
                        <div>
                            <strong> Address</strong>
                            <p><a href="#">View the map</a></p>
                        </div>
                    </div>
                    <div class="d-inline-flex justify-content-center align-items-center">
                        <div class="pe-2"><i class="fs-5 fa-solid fa-user"></i></div>
                        <div>
                            <strong> Account</strong>
                            <p><a href="../main_page/login.php">Login</a></p>
                        </div>
                    </div>
                    <div id="totalCart" class="d-inline-flex justify-content-center align-items-center">
                        <div class="pe-2"><a href="../main_page/cart.php"><i class="fa-solid fa-cart-shopping"></i></a></div>
                        <div>
                            <strong> Cart</strong>
                            <p><span><?= $count ?></span> product</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="nav-bar bg-dark d-flex justify-content-center align-items-center py-1">
            <a class="nav-link text-white after-bar" href="../main_page/index.php">HOME</a>
            <a class="nav-link text-white after-bar" href="../main_page/products.php">PRODUCTS <i class="fa-solid fa-chevron-down"></i></a>
            <a class="nav-link text-white after-bar" href="">PROBLEM <i class="fa-solid fa-chevron-down"></i></a>
            <a class="nav-link text-white after-bar" href="">NEWS</a>
            <a class="nav-link text-white " href="">ABOUT</a>
        </div>
    </header>