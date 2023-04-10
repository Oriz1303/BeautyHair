<?php
ob_start();
if(!empty($_POST)) {
	$cart = [];
	if(isset($_COOKIE['cart'])) {
		$json = $_COOKIE['cart'];
		$cart = json_decode($json, true);
	}
	if($cart ==null || count($cart) == 0) {
		header('Location: ../components/header.php');
		ob_end_flush();
		die();
	}

	$fullname = getPost('fullname');
	$email = getPost('email');
	$phone_number = getPost('phone_number');
	$address = getPost('address').', '.getPost('province').', '.getPost('district').'.';
	$orderDate = date('Y-m-d H:i:s');
	echo $address;

	//add order
	$sql = "insert into orders(fullname, email, phone_number, address, order_date) values ('$fullname', '$email', '$phone_number', '$address', '$orderDate')";
	execute($sql);

	$sql = "select * from orders where order_date = '$orderDate'";
	$order = executeResult($sql, true);

	$orderId = $order['id'];

	$idList = [];
	foreach ($cart as $item) {
		$idList[] = $item['id'];
	}
	if(count($idList) > 0) {
		$idList = implode(',', $idList);
		//[2, 5, 6] => 2,5,6

		$sql = "select * from information_products where id in ($idList)";
		$cartList = executeResult($sql);
	} else {
		$cartList = [];
	}

	foreach ($cartList as $item) {
		$num = 0;
		foreach ($cart as $value) {
			if($value['id'] == $item['id']) {
				$num = $value['num'];
				break;
			}
		}

		$sql = "insert into order_details (order_id, product_id, num, price) values ($orderId, ".$item['id'].", $num, ".$item['price'].")";
		execute($sql);
	}

	header('Location: complete.php');
	ob_end_flush();
	setcookie('cart', '[]', time()-1000, '/');
	ob_end_flush();
}