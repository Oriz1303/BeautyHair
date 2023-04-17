<?php
include_once('../components/header.php');


?>
<div class="container pt-3 fw-light fs-5">
    <a class="text-decoration-none text-dark " href="../main_page/index.php">Home</a><span class=""> > Contact</span>
</div>
<hr>

<div class="container">
    <div class="fs-2 fw-light contact">
        <p class="">Contact</p>
    </div>
</div>
<div style="z-index: 9;">
    <div  class="">
        <iframe class="w-100" height="500" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.7300078167423!2d105.84651827669467!3d21.003457188644397!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135adca496594a1%3A0xced1bb35edb200f7!2zNTQgUC4gTMOqIFRoYW5oIE5naOG7iywgxJDhu5NuZyBUw6JtLCBIYWkgQsOgIFRyxrBuZywgSMOgIE7hu5lpLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1681110733431!5m2!1sen!2s" style="border:0;" allowfullscreen loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
    <div class="supertest position-absolute bg-white rounded p-4 text-center">
        <p class="text-center fs-3 pb-3 m-0">Send contact</p>
        <form class="w-100 text-center" action="" method="post">
            <input class="border w-100 mb-2 rounded-pill" type="text" placeholder="Full name">
            <input class="border w-100 mb-2 rounded-pill" type="text" placeholder="Email"><br>
            <input class="border w-100 mb-2 rounded-pill" type="text" placeholder="Phone"><br>
            <textarea rows="4" class="border w-100 mb-2 rounded-4 p-2" type="text" placeholder="Enter content"></textarea><br>
            <button class="w-50 bg-black text-white rounded-pill p-2" type="submit">Send</button>
        </form>
    </div>
</div>
<?php require_once('../components/footer.php'); ?>