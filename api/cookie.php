<?php
require_once('../utils/utility.php');

if (!empty($_POST)) {
	$action = getPost('action');
	$id = getPost('id');
	$num = getPost('num');
	$id_product = getPost('id_product');
	$cart = [];
	$compare = [];
	if (isset($_COOKIE['cart'])) {
		$json = $_COOKIE['cart'];
		$cart = json_decode($json, true);
	}
	if (isset($_COOKIE['compare'])) {
		$json = $_COOKIE['compare'];
		$compare = json_decode($json, true);
	}

	switch ($action) {
		case 'add':
			$isFind = false;
			for ($i = 0; $i < count($cart); $i++) {
				if ($cart[$i]['id'] == $id) {
					$cart[$i]['num'] += $num;
					$isFind = true;
					break;
				}
			}

			if (!$isFind) {
				$cart[] = [
					'id' => $id,
					'num' => $num
				];
			}
			setcookie('cart', json_encode($cart), time() + 30 * 24 * 60 * 60, '/');
			break;
		case 'delete':
			for ($i = 0; $i < count($cart); $i++) {
				if ($cart[$i]['id'] == $id) {
					array_splice($cart, $i, 1);
					break;
				}
			}
			setcookie('cart', json_encode($cart), time() + 30 * 24 * 60 * 60, '/');
			break;

		case 'compare_add':
			$isExisted = true;
			for ($i = 0; $i <= 1; $i++) {
				if ($compare[$i]['id_product'] == $id_product) {
					$isExisted = false;
				} else if (count($compare) > 1) {
					$isExisted = false;
				}
			}

			if ($isExisted) {
				$compare[] = [
					'id_product' => $id_product
				];
			}
			setcookie('compare', json_encode($compare), time() + 30 * 24 * 60 * 60, '/');
			break;
		case 'compare_delete':
			for ($i = 0; $i < 2; $i++) {
				if ($compare[$i]['id_product'] == $id_product) {
					array_splice($compare, $i, 1);
					break;
				}
			}
			setcookie('compare', json_encode($compare), time() + 30 * 24 * 60 * 60, '/');
			break;
	}
} else {
	echo 'none';
}
