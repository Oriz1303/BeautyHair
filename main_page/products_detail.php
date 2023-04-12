<?php
require_once('../database/helper.php');
require_once('../utils/utility.php');
include '../components/header.php';
$id = $_GET['products'];
$result = executeResult("SELECT * FROM information_products WHERE id = $id");
$title = '';
foreach ($result as $row) {
    $title = $row['title'];
?>

    <div class="container pt-3 fw-light fs-5">
        <a class="text-decoration-none text-dark " href="../main_page/index.php">Home</a><span class=""> > Cosmetics > <?= $row['name'] ?></span>
    </div>
    <hr>
    <div class="container desProduct">
        <div class="row my-4">
            <div class="col-6 text-center">
                <img class="w-75" src="../resources/img/img_cosmetics/<?= $row['url'] ?>" alt="">
            </div>
            <div class="col-6 text-start my-5">
                <p class="fs-2"><?= $row['name'] ?></p>
                <p class="fs-3 text-danger">$ <?= $row['price'] ?></p>
                <p>Newest</p>
                <input id="quantity-product" pattern="\d[1,2]"  value="1" class=" w-100  px-4 py-2 border rounded-pill text-center " type="number"  min="1"  name="" >
                <div class="d-flex ">
                    <button id="quan" onclick="addToCart(<?= $row['id'] ?>)" class="btn text-white py-2 me-3 bg-dark fs-5  w-50 rounded-pill">Add to cart</button>
                    <button onclick="buyNow(<?= $row['id'] ?>);" class="btn text-white py-2 bg-danger fs-5 w-50  rounded-pill" >Buy now</button>
                </div>
                <div class="border-top border-bottom py-2">
                    <span class="fs-5 fw-light">Share this: </span>
                    <span class="px-2 text-info py-1 mx-3"><i class="fa-brands fa-facebook-f"></i> Facebook</span>
                    <span class="px-2 py-1 me-3"><i class="fa-brands fa-facebook-messenger"></i> Messenger</span>
                    <span class="px-2 py-1 me-3"><i class="fa-brands fa-instagram"></i> Instagram</span>
                    <span class="px-2 py-1 text-white bg-info"><i class="fa-brands fa-twitter"></i> Twitter</span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 fs-4 p-0 " style="cursor: default;">
                <span class="detail-title border shadow border-2 border-dark rounded-top-4 px-5">Description</span>
                <span class="detail-title border shadow border-2 rounded-top-4 px-5">Guide</span>
            </div>
        </div>
        <div class="row">
            <div class="col-12 mb-5 fs-5 border-2 shadow line border border-dark rounded-bottom-4 rounded-end-4 p-4">
                <span class="detail-content activeDisplay">- <?= $row['description'] ?></span>
                <span class="detail-content fw-light "><?= $row['guide'] ?></span>
            </div>
        </div>
    </div>
<?php
} ?>

<div class="container">
    <div class="title-cart">
        <p class="fs-1 fw-light">Related Products</p>
    </div>
</div>
<div class="container py-2">
    <div class="swiper detail-related-swiper">
        <div class="swiper-wrapper text-center">
            <?php
            $resultRelated = executeResult("SELECT * FROM information_products WHERE title = $title AND id <> $id");
            foreach ($resultRelated as $value) {
            ?>
                <div class="swiper-slide"><img class="w-50" src="../resources/img/img_cosmetics/<?= $value['url'] ?>" alt="">
                    <a class="text-decoration-none text-dark" href="products_detail.php?products=<?= $value['id'] ?>">
                        <p class="fs-4"><?= $value['name'] ?></p>
                    </a>
                    <p class="">$ <?= $value['price'] ?></p>
                </div>
                <div class="swiper-slide"><img class="w-50" src="../resources/img/img_cosmetics/<?= $value['url'] ?>" alt="">
                    <a class="text-decoration-none text-dark" href="products_detail.php?products=<?= $value['id'] ?>">
                        <p class="fs-4"><?= $value['name'] ?></p>
                    </a>
                    <p class="">$ <?= $value['price'] ?></p>
                </div>
            <?php }
            ?>

        </div>
        <!-- <div class="swiper-scrollbar"></div> -->
        <div class="text-dark swiper-button-next"></div>
        <div class="text-dark swiper-button-prev"></div>
    </div>
</div>
<script type="text/javascript">
    // function addToCart(id) {
    //     $.post('../api/cookie.php', {
    //         'action': 'add',
    //         'id': id,
    //         'num': 1
    //     }, function(data) {
    //         $("#totalCart").load("../components/header.php #totalCart")
    //     })
    // }

    let btns = document.querySelectorAll('.detail-title');
    let conntent = document.querySelectorAll('.detail-content');
    console.log(document.querySelector('.detail-title.border-dark'))

    function toggleBtn(btns, content) {
        btns.forEach((btn, index) => {
            btn.onclick = () => {
                document.querySelector('.detail-title.border-dark').classList.remove('border-dark');
                document.querySelector('.detail-content.activeDisplay').classList.remove('activeDisplay');
                content[index].classList.add('activeDisplay');
                btn.classList.add('border-dark');
            }
        });
    }

    toggleBtn(btns, conntent);
</script>

<?php
include '../components/footer.php';
?>
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<script>
    var swiper = new Swiper(".detail-related-swiper", {
        slidesPerView: 3,
        spaceBetween: 30,
        loop: true,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
    });
</script>