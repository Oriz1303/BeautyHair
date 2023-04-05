<?php
require_once "../database/helper.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../resources/css/stylestylestylestyle.css">
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
</head>

<body>
    <header class="w-100 text-decoration-none">
        <div class="container">
            <div class="row d-flex align-items-center">
                <div class="col-3">
                    <img class="w-50" src="../resources/img/logo4-removebg-preview.png" alt="">
                </div>
                <div class="col-9  d-flex justify-content-around align-items-center py-3">
                    <div class="d-inline-flex border rounded-pill">
                        <input class="search-bar px-4 rounded-circle" type="text" placeholder="Search...">
                        <i class="text-white p-3 bg-dark rounded-circle fa-solid fa-magnifying-glass"></i>
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
                    <div class="d-inline-flex justify-content-center align-items-center">
                        <div class="pe-2"><i class="fs-5 fa-solid fa-cart-shopping"></i></div>
                        <div>
                            <strong> Cart</strong>
                            <p><span>(0)</span> product</p>
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