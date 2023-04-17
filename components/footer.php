<footer class="footer-web">
    <div class="container">
        <div class="row">
            <div class="col-4">
                <p class="brand">N A T U R E</p>
                <p class="text-white">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quas debitis quam iste ad omnis minus veniam velit repudiandae nihil consequuntur saepe veritatis pariatur reiciendis ea ullam, praesentium repellendus, asperiores fugiat.</p>
                <div class="">
                    <strong class="text-white">FOLLOW US</strong>
                    <div class="social-media-brand">
                        <i class="fa-brands fa-facebook-f"></i>
                        <i class="fa-brands fa-instagram"></i>
                        <i class="fa-brands fa-youtube"></i>
                        <i class="fa-brands fa-twitter"></i>
                    </div>
                </div>
            </div>
            <div class="col-6 mt-3">
                <strong class="text-white ">FANPAGE</strong><br>
                <div class="fb-page mt-3" data-href="https://www.facebook.com/profile.php?id=100004411068597" data-tabs="" data-width="500" data-height="200" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"></div>
            </div>
            <div class="col-2 mt-3">
                <strong class="text-white">INFOMATION</strong>
                <div class="text-white mt-3">
                    <p class="m-0">Address: </p>
                    <p class="text-secondary">54 Le Thanh Nghi, Ha Noi</p>
                </div>
                <div class="text-white mt-3">
                    <p class="m-0">Phone: </p>
                    <p class="text-secondary">0123456789</p>
                </div>
                <div class="text-white mt-3">
                    <p class="m-0">Email: </p>
                    <p class="text-secondary">email@gmail.com</p>
                </div>
            </div>
        </div>
    </div>
    <div class="bg-dark py-3 ">
        <div class="container ">
            <div class="row">
                <div class="col-12 text-white">© Copyright TEAM FOUR</div>
            </div>
        </div>
    </div>
</footer>

<script type="text/javascript">
    function addToCart(id) {
        num = $('#quantity-product').val();
        console.log(num)
        $.post('../api/cookie.php', {
            'action': 'add',
            'id': id,
            'num': Number(num) ? Number(num) : 1
        }, (data) => {
            $("#totalCart").load("../components/header.php #totalCart");
            $('#totalOrder').load("cart.php #totalOrder");
            $('#listItem').load("cart.php #listItem");
        })
    }

    function buyNow(id) {
        $.post('../api/cookie.php', {
            'action': 'add',
            'id': id,
            'num': 1
        }, (data) => {
            window.location = "cart.php";
        })
    }
</script>


<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<script src="../resources/js/main8.js"></script>
<script src="../resources/js/sliderSwiper.js"></script>
</body>

</html>