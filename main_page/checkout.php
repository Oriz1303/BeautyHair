<?php
require_once('../database/helper.php');
require_once('../utils/utility.php');
include_once('../components/header.php');

require_once('../api/checkout-form.php');

$cart = [];
if (isset($_COOKIE['cart'])) {
	$json = $_COOKIE['cart'];
	$cart = json_decode($json, true);
}
$idList = [];
foreach ($cart as $item) {
	$idList[] = $item['id'];
}
if (count($idList) > 0) {
	$idList = implode(',', $idList);
	//[2, 5, 6] => 2,5,6

	$sql = "select * from information_products where id in ($idList)";
	$cartList = executeResult($sql);
} else {
	$cartList = [];
}

?>
<!-- body -->
<div class="container pt-3 fw-light fs-5">
	<a class="text-decoration-none text-dark " href="../main_page/index.php">Home</a><span class=""> > Checkout</span>
</div>
<hr>

<form id="shipping-info" action="" method="post" class="py-5">
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<h3>Shipping Information</h3>
				<div class="form-group">
					<label for="usr">Name:</label>
					<input type="text" class="form-control" id="usr" value="<?php  ?>" placeholder="Ex: Nguyen Van A" rules="required" name="fullname">
					<span class="form-message text-danger"></span>
				</div>
				<div class="form-group">
					<label for="email">Email:</label>
					<input class="form-control" id="email" placeholder="Ex: nature@email.com" rules="required|email" name="email">
					<span class="form-message text-danger"></span>
				</div>
				<div class="form-group">
					<label for="phone_number">Phone Number:</label>
					<input type="text" class="form-control" id="phone_number" placeholder="Ex: (+84 or 0)123456789" rules="required|phone" name="phone_number">
					<span class="form-message text-danger"></span>
				</div>
				<div class="form-group">
					<label for="address">Address:</label>
					<div class="d-flex">
						<select id="province" class="w-50 border" rules="required" name="province">
							<option selected disabled value="">City/Province</option>
							<?php
							$resultCity = executeResult("SELECT * FROM province");
							foreach ($resultCity as $key => $city) {
							?>
								<option class="" value="<?= $city['id'] ?>"><?= $city['_name'] ?></option>
							<?php } ?>
						</select>
						<select class="w-50 border" name="district" rules="required" id="district">
							<option selected disabled value="">District</option>
							<?php
							$resultDistrict = executeResult("SELECT * FROM district");
							foreach ($resultDistrict as $key => $district) { ?>
								<option class="<?= $district['_province_id'] ?>" value="<?= $district['_name'] ?>"><?= $district['_name'] ?></option>
							<?php } ?>
						</select>
					</div>
					<span class="form-message text-danger"></span>


				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="address" placeholder="Ex: Street " rules="required" name="address">

					<span class="form-message text-danger"></span>
				</div>
				<div class="form-group">
					<label for="note">Note:</label>
					<textarea class="form-control" rows="3" name="note" id="note"></textarea>
					<span class="form-message text-danger"></span>
				</div>
			</div>
			<div class="col-md-7">
				<h3>Cart</h3>
				<table class="table  table-responsive">
					<thead>
						<tr>
							<th>Name</th>
							<th>Quantity</th>
							<th>Price</th>
							<th>Total</th>
						</tr>
					</thead>
					<tbody>
						<?php
						$count = 0;
						$total = 0;
						foreach ($cartList as $item) {
							$num = 0;
							foreach ($cart as $value) {
								if ($value['id'] == $item['id']) {
									$num = $value['num'];
									break;
								}
							}
							$total += $num * $item['price'];
						?>
							<tr>
								<td><img style="width:2vw" class="" src="../resources/img/img_cosmetics/<?= $item['url'] ?>" alt=""> <?= $item['name'] ?></td>
								<td><?= $num ?></td>
								<td><?= number_format($item['price'], 2, ',', '.') ?></td>
								<td><?= number_format($num * $item['price'], 2, ',', '.') ?></td>
							</tr>
						<?php
						}
						?>
					</tbody>
				</table>
				<p style="font-size: 30px; ">
					Total: <span class="text-danger">$ <?= number_format($total, 2, ',', '.') ?></span>
				</p>

				<div class="w-100 text-center ">
					<?php
					if(isset($_SESSION['account_id'])) {
						echo '<button class="btn btn-success rounded-pill  w-50" style="font-size: 32px;">Complete</button>';
						$requiredLogin = '';
					} else {
						echo '<span class="btn btn-success rounded-pill  w-50" style="font-size: 32px;">Complete</span>';
						$requiredLogin = '<div class="text-center bg-danger py-3">You must login before paying <a class="text-decoration-none" href="./login.php">Login</a></div>';
					}
					?>
				</div>
			</div>
		</div>
	</div>
</form>
<?=$requiredLogin?>



<script src="../resources/js/validator.js"></script>
<script>
	Validator('#shipping-info')
</script>
<script src="../resources/js/checkout3.js"></script>
<?php
include_once('../components/footer.php');
?>