<?php
ob_start();
require_once('../database/helper.php');
require_once('../utils/utility.php');
include("../components/header.php");


?>
<?php

?>
<section class="m-0">
    <div class="swiper home-slider-news">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><img class="w-100" src="../resources/img/home-slider-news-1.jpg" alt=""></div>
            <div class="swiper-slide"><img class="w-100" src="../resources/img/home-slider-news-2.jpg" alt=""></div>
            <div class="swiper-slide"><img class="w-100" src="../resources/img/home-slider-news-3.jpg" alt=""></div>
        </div>
        <div class="swiper-pagination"></div>
    </div>
</section>

<section >
    <div style="background-image: url(../resources/img/thumbnail.jpg);height:155px;"></div>
    <div class="container">
        <div class="row">
            <!-- <div class="col-12 d-flex justify-content-center">
                <img src="../resources/img/home-bg-products-1.jpg" alt="">
                <img src="../resources/img/home-bg-products-2.jpg" alt="">
                <img src="../resources/img/home-bg-products-3.jpg" alt="">
            </div> -->
        </div>
    </div>
</section>


<section class="home-products">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h1 class="heading ">COSMETICS</strong>
            </div>
        </div>
        <div class="row slider-products">
            <div class="col-12 d-flex justify-content-center">
                <p class="cosmetics-item status-on">Cream</p>
                <p class="cosmetics-item">Shampoo</p>
                <p class="cosmetics-item">Mask</p>
                <p class="cosmetics-item">Serum</p>
                <p class="cosmetics-item">Other</p>
            </div>
            <div class="active-line"></div>
        </div>

        <div class="products-tab container pt-4">
            <div class="products-item status-on row row-cols-4">
                <?php
                $resultCream = executeResult("SELECT * FROM information_products WHERE title= 1");
                foreach ($resultCream as $cream) {
                ?>
                    <div>
                        <div class="text-center">
                            <a href="./products_detail.php?products=<?= $cream['id'] ?>"><img class="w-50 text-center" src="../resources/img/img_cosmetics/<?= $cream['url'] ?>" alt=""></a>
                            <div class="text-center fs-4">
                                <i onclick="addToCart(<?= $cream['id'] ?>)" class="fa-solid fa-cart-shopping"></i>
                                <p><?= $cream['name'] ?></p>
                                <p class="fs-5 fw-light">$ <?= $cream['price'] ?></p>
                            </div>
                        </div>
                    </div>
                    
                <?php
                }
                ?>
            </div>
            <div class="products-item">
                <?php
                $resultShampoo = executeResult("SELECT * FROM information_products WHERE title=2");
                foreach ($resultShampoo as $shampoo) {
                ?>
                    <div>
                        <div class="text-center">
                            <a href="./products_detail.php?products=<?= $shampoo['id'] ?>"><img class="w-50 text-center" src="../resources/img/img_cosmetics/<?= $shampoo['url'] ?>" alt=""></a>
                            <div class="text-center fs-4">
                                <i onclick="addToCart(<?= $shampoo['id'] ?>)" class="fa-solid fa-cart-shopping"></i>
                                <p><?= $shampoo['name'] ?></p>
                                <p class="fs-5 fw-light">$ <?= $shampoo['price'] ?></p>
                            </div>
                        </div>
                    </div>
                <?php
                }
                ?>
            </div>
            <div class="products-item">
                <?php
                $resultMask = executeResult("SELECT * FROM information_products WHERE title=3");
                foreach ($resultMask as $mask) {
                ?>
                    <div>
                        <div class="text-center">
                            <a href="./products_detail.php?products=<?= $mask['id'] ?>"><img class="w-50 text-center" src="../resources/img/img_cosmetics/<?= $mask['url'] ?>" alt=""></a>
                            <div class="text-center fs-4">
                                <i onclick="addToCart(<?= $mask['id'] ?>)" class="fa-solid fa-cart-shopping"></i>
                                <p><?= $mask['name'] ?></p>
                                <p class="fs-5 fw-light">$ <?= $mask['price'] ?></p>
                            </div>
                        </div>
                    </div>
                <?php
                }
                ?>
            </div>
            <div class="products-item">
                <?php
                $resultSerum = executeResult("SELECT * FROM information_products WHERE title=4");
                foreach ($resultSerum as $serum) {
                ?>
                    <div>
                        <div class="text-center">
                            <a href="./products_detail.php?products=<?= $serum['id'] ?>"><img class="w-50 text-center" src="../resources/img/img_cosmetics/<?= $serum['url'] ?>" alt=""></a>
                            <div class="text-center fs-4">
                                <i onclick="addToCart(<?= $serum['id'] ?>)" class="fa-solid fa-cart-shopping"></i>
                                <p><?= $serum['name'] ?></p>
                                <p class="fs-5 fw-light">$ <?= $serum['price'] ?></p>
                            </div>
                        </div>
                    </div>
                <?php
                }
                ?>
            </div>
            <div class="products-item">
                <?php
                $resultOther = executeResult("SELECT * FROM information_products WHERE title=6");
                foreach ($resultOther as $other) {
                ?>
                    <div>
                        <div class="text-center">
                            <a href="./products_detail.php?products=<?= $other['id'] ?>"><img class="w-50 text-center" src="../resources/img/img_cosmetics/<?= $other['url'] ?>" alt=""></a>
                            <div class="text-center fs-4">
                                <i onclick="addToCart(<?= $other['id'] ?>)" class="fa-solid fa-cart-shopping"></i>
                                <p><?= $other['name'] ?></p>
                                <p class="fs-5 fw-light">$ <?= $other['price'] ?></p>
                            </div>
                        </div>
                    </div>
                <?php
                }
                ?>
            </div>


        </div>
    </div>
</section>





<!-- <section class="home-bg-cosmetics">

    <img class="" src="../resources/img/home-bg-cosmetics-1.jpg" alt="">
</section> -->

<section class="icons-container  py-4" style="background-image: url(../resources/img/thumbnail.jpg);">

    <div class="icons">
        <img src="../resources/img/icon-1.png" alt="">
        <div class="info">
            <h3>free delivery</h3>
            <span>on all orders</span>
        </div>
    </div>

    <div class="icons">
        <img src="../resources/img/icon-2.png" alt="">
        <div class="info">
            <h3>10 days returns</h3>
            <span>moneyback guarantee</span>
        </div>
    </div>

    <div class="icons">
        <img src="../resources/img/icon-3.png" alt="">
        <div class="info">
            <h3>offer & gifts</h3>
            <span>on all orders</span>
        </div>
    </div>

    <div class="icons">
        <img src="../resources/img/icon-4.png" alt="">
        <div class="info">
            <h3>secure paymens</h3>
            <span>protected by paypal</span>
        </div>
    </div>

</section>

<section>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h1 class="heading">HAIR STYLE</h1>
            </div>
        </div>
        <div class="row d-flex justify-content-center">
            <div class="col-12 col-md-4 p-0 text-center">
                <img class="w-75" src="../resources/img/hairstyle-bow-braid.jpg" alt="">
                <h3>Bow Braid Hairstyle</h3>
                <p>Add Upper East Side flair to your style.</p>
            </div>
            <div class="col-12 col-md-4 p-0 text-center">
                <img class="w-75" src="../resources/img/hairstyle-waterfall-braid.jpg" alt="">
                <h3>Waterfall Hairstyle</h3>
                <p>Give your hair a personal touch of style.</p>
            </div>
            <div class="col-12 col-md-4 p-0 text-center">
                <img class="w-75" src="../resources/img/hairstyle-wavy.jpg" alt="">
                <h3>Wavy Hairstyle</h3>
                <p>Controlling your hair with braids is easy.</p>
            </div>
        </div>
    </div>
</section>

<section class="home-news-events">
    <div class="container ">
        <div class="row d-flex">
            <div class="w-50">
                <h3>News</h3>
                <div class="text-center shadow bg-white">
                    <a class="text-decoration-none text-center" href="">
                        <img class="w-100" style="cursor: pointer;" src="../resources/img/img_news/NYFW.jpg" alt="">
                        <strong style="cursor: pointer;" class="fs-4 w-75  text-dark py-4">NEW YORK FASHION WEEK(NYFW)</strong>
                    </a>
                    <div class="p-2">
                        <span class="w-50 py-1 fw-light">No doubt Jonathan Simkhais Spring 2018 Ready-to-Wear collection had a sense of airiness about it — something weve long been waiting for from one of our favorite designers. Its an essence he carried from head to hip to toe,..</span>
                    </div>
                </div>

            </div>
            <div class="w-50">
                <h3>Guide</h3>
                <div class="home-guide container">
                    <div style="margin-bottom: 30px" class=" d-flex shadow">
                        <div class="col-6">
                            <img class="w-75" src="../resources/img/img_news/NYFW2.jpg" alt="">
                        </div>
                        <div class="w-50 p-2">
                            <strong>Guide1</strong>
                        </div>
                    </div>
                    <div style="margin-bottom: 31px" class="d-flex shadow">
                        <div class="w-50">
                            <img class="w-75" src="../resources/img/img_news/NYFW2.jpg" alt="">
                        </div>
                        <div class="w-50 p-2">
                            <strong class="">Guide2</strong>
                        </div>
                    </div>
                    <div class="d-flex shadow">
                        <div class="w-50 ">
                            <img class="w-75" src="../resources/img/img_news/NYFW2.jpg" alt="">
                        </div>
                        <div class="w-50 p-2">
                            <strong>Guide3</strong>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<script type="text/javascript">
    function addToCart(id) {
        $.post('../api/cookie.php', {
            'action': 'add',
            'id': id,
            'num': 1
        }, function(data) {
            $("#totalCart").load("index.php #totalCart")
        })
    }
</script>

<?php
include '../components/footer.php';
?>