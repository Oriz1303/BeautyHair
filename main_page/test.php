<?php 
if(!empty($_POST))  {
    $address = $_POST('address').', '.$_POST('province').', '.$_POST('district').'.';
    echo $address;
}


?>