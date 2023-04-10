<?php
$id_compare = '';
if(!empty($_POST)) {
    $id_compare = getPost('id_compare');
    $productCompare = [];
} else {
    $id_compare= 'none';
    echo $id_compare;
}


?>