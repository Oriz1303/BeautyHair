<?php
include "../components/header.php";
?>

<section>
    <div class="swiper home-slider-news">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><img class="w-100" src="../resources/img/home-slider-news-1.jpg" alt=""></div>
            <div class="swiper-slide"><img class="w-100" src="../resources/img/home-slider-news-2.jpg" alt=""></div>
            <div class="swiper-slide"><img class="w-100" src="../resources/img/home-slider-news-3.jpg" alt=""></div>
        </div>
        <div class="swiper-pagination"></div>
    </div>
</section>

<section>
    <div class="container">
        <div class="row">
            <div class="col-12 d-flex justify-content-center">
                <img src="../resources/img/home-bg-products-1.jpg" alt="">
                <img src="../resources/img/home-bg-products-2.jpg" alt="">
                <img src="../resources/img/home-bg-products-3.jpg" alt="">
            </div>
        </div>
    </div>
</section>


<section class="home-products">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h1 class="heading">COSMETICS</h1>
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
                $resultCream = mysqli_query($conn, "SELECT * FROM information_products WHERE title= 1");
                if (mysqli_num_rows($resultCream) > 0) {
                    while ($rowCream = mysqli_fetch_assoc($resultCream)) {
                ?>
                        <div>
                            <div class="text-center">
                                <img class="w-50 text-center" src="../resources/img/img_cosmetics/<?= $rowCream['url'] ?>" alt="">

                                <div>

                                </div>
                                <div class="text-center fs-4">
                                    <p><?=$rowCream['name']?></p>
                                    <p class="fs-5 fw-light">$ <?=$rowCream['price']?></p>
                                </div>
                            </div>
                        </div>

                <?php
                    }
                }
                ?>
            </div>
            <div class="products-item">
                <?php
                $resultShampoo = mysqli_query($conn, "SELECT * FROM information_products WHERE title=2");
                if (mysqli_num_rows($resultShampoo) > 0) {
                    while ($rowShampoo = mysqli_fetch_assoc($resultShampoo)) {
                ?>
                        <div>
                            <div class="text-center">
                                <img class="w-50 text-center" src="../resources/img/img_cosmetics/<?= $rowShampoo['url'] ?>" alt="">

                                <div>

                                </div>
                                <div class="text-center fs-4">
                                    <p><?=$rowShampoo['name']?></p>
                                    <p class="fs-5 fw-light">$ <?=$rowShampoo['price']?></p>
                                </div>
                            </div>
                        </div>
                <?php
                    }
                }
                ?>
            </div>
            <div class="products-item">
                <?php
                $resultMask = mysqli_query($conn, "SELECT * FROM information_products WHERE title=3");
                if (mysqli_num_rows($resultMask) > 0) {
                    while ($rowMask = mysqli_fetch_assoc($resultMask)) {
                ?>
                        <div>
                            <div class="text-center">
                                <img class="w-50 text-center" src="../resources/img/img_cosmetics/<?= $rowMask['url'] ?>" alt="">

                                <div>

                                </div>
                                <div class="text-center fs-4">
                                    <p><?=$rowMask['name']?></p>
                                    <p class="fs-5 fw-light">$ <?=$rowMask['price']?></p>
                                </div>
                            </div>
                        </div>
                <?php
                    }
                }
                ?>
            </div>
            <div class="products-item">
                <?php
                $resultSerum = mysqli_query($conn, "SELECT * FROM information_products WHERE title=4");
                if (mysqli_num_rows($resultSerum) > 0) {
                    while ($rowSerum = mysqli_fetch_assoc($resultSerum)) {
                ?>
                        <div>
                            <div class="text-center">
                                <a href=""><img class="w-50 text-center" src="../resources/img/img_cosmetics/<?= $rowSerum['url'] ?>" alt=""></a>

                                <div>

                                </div>
                                <div class="text-center fs-4">
                                    <p><?=$rowSerum['name']?></p>
                                    <p class="fs-5 fw-light">$ <?=$rowSerum['price']?></p>
                                </div>
                            </div>
                        </div>
                <?php
                    }
                }
                ?>
            </div>
            <div class="products-item">
                <?php
                $resultOther = mysqli_query($conn, "SELECT * FROM information_products WHERE title=6");
                if (mysqli_num_rows($resultOther) > 0) {
                    while ($rowOther = mysqli_fetch_assoc($resultOther)) {
                ?>
                        <div>
                            <div class="text-center">
                                <img class="w-50 text-center" src="../resources/img/img_cosmetics/<?= $rowOther['url'] ?>" alt="">

                                <div>

                                </div>
                                <div class="text-center fs-4">
                                    <p><?=$rowOther['name']?></p>
                                    <p class="fs-5 fw-light">$ <?=$rowOther['price']?></p>
                                </div>
                            </div>
                        </div>
                <?php
                    }
                }
                ?>
            </div>
            

        </div>
    </div>
</section>




<!-- <section class="home-bg-cosmetics">

    <img class="" src="../resources/img/home-bg-cosmetics-1.jpg" alt="">
</section> -->

<section class="icons-container  py-4">

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
    <div class="container">
        <div class="row">
            <div class="col-6">
                <h3>News</h3>
            </div>
            <div class="col-6">
                <h3>Events</h3>
            </div>
        </div>
    </div>
</section>



<?php
include '../components/footer.php';
?>