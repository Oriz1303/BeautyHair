<?php
require_once('../database/helper.php');
require_once('../utils/utility.php');
include "../components/header.php";
if (isset($_GET)) {
    $id = $_GET['blog'];
?>
    <div class="container pt-3 fw-light fs-5">
        <a class="text-decoration-none text-dark " href="../main_page/index.php">Home</a><span class=""> > Blog > <?php

                                                                                                                    $result = executeResult("SELECT * FROM posts_topics WHERE id = $id");
                                                                                                                    foreach ($result as $row) echo $row['topics'];
                                                                                                                    ?></span>
    </div>
    <hr>
    <?php
    if (isset($_GET)) {
        $id = $_GET['blog'];
        $result = executeResult("SELECT * FROM posts_images WHERE posts_topics_id = $id");
        foreach ($result as $row)
    ?>
        <img class="w-100" src="../resources/img/img_news/<?= $row['url'] ?>" alt="">
    <?php } ?>
    <section class="container">
        <div class="text-center fs-2 my-5"><?php
                                            $result = executeResult("SELECT * FROM posts_topics WHERE id = $id");
                                            foreach ($result as $row) echo $row['topics'];
                                            ?>
        </div>
        <div>
            <?php
            $count = 0;
            $result = executeResult("SELECT * FROM posts WHERE topics = $id");
            foreach ($result as $row) {
                ++$count;
            ?>
                <div class="my-3">
                    <div class="fs-2"><span><?= $count ?>.</span> <?= $row['titles'] ?></div>
                    <div class="text-justify">- <?= $row['description'] ?></div>
                </div>
            <?php } ?>
        </div>
    </section>

<?php
}
include "../components/footer.php"
?>