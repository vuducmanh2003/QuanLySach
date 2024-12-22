<?php
ob_start();
session_start();
?>
<?php
include "head.php"
?>
<?php
include "top.php"
?>
<?php
include "header.php"
?>
<?php
include "navigation.php"
?>
<!--//////////////////////////////////////////////////-->
<!--///////////////////Account Page///////////////////-->
<!--//////////////////////////////////////////////////-->
<?php
$tk = "";
$mk = "";
$kq = "";
if (isset($_POST['submit'])) {
	require 'inc/myconnect.php';
	$tk = $_POST['txtus'];
	$mk = $_POST['txtem'];
	if ($tk == 'admin' and $mk == 'admin') {
        header('Location: Admin/index.php');
    } else{
	$sql = "SELECT * FROM loginuser  where email = '$tk'  and matkhau = '$mk'  ";
	$result = $conn->query($sql);
	// echo  $mk;
	if ($result->num_rows > 0) {
		while ($row = $result->fetch_assoc()) {
			$_SESSION['txtus'] = $tk;
			$_SESSION['HoTen'] = $row["HoTen"];
			$_SESSION['email'] = $row["email"];
			$_SESSION['dienthoai'] = $row["DienThoai"];
			header('Location: index.php');
			$row = $result->fetch_assoc();
		}
	} else {
		$kq = "Thông tin không đúng vui lòng kiềm tra lại";
	}
	}
}
?>
<?php
$name = "";
$email = "";
$dt = "";
$mk = "";
$kqdk = "";
$repass = "";

if (isset($_POST['dangky'])) {
	require 'inc/myconnect.php';
	$name  = $_POST['fullname'];
	$email = $_POST['email'];
	$dt = $_POST['phone'];
	$mk = $_POST['password'];
	$repass = $_POST['repass'];
	if ($repass != $mk) {
		$kqdk = "Mật khẩu nhập lại không chính xác";
	} else {
		$sql = "INSERT INTO  loginuser (email,matkhau,hoten,DienThoai)
        VALUES ('$email', '$mk' ,'$name','$dt') ";
		// echo  $mk;
		if (mysqli_query($conn, $sql)) {
			$name = "";
			$email = "";
			$dt = "";
			$mk = "";
			$repass = "";
			$kqdk = "Đăng ký thành công";
		} else {
			$kqdk = "Đăng ký không thành công. Xin hay kiểm tra lại thông tin";
		}
	}
	mysqli_close($conn);
}
?>
<div id="page-content" class="single-page">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<ul class="breadcrumb">
					<li><a href="index.php">Trang chủ</a></li>
					<li><a href="account.php">Đăng nhập/Đăng ký</a></li>
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<center>
					<div class="heading">
						<h2>Đăng nhập</h2>
					</div>
				</center>
				<form name="form1" id="ff1" method="POST" action="#">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Email" name="txtus" required value="">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="Mật khẩu" name="txtem" required value="">
					</div>
					<center><button type="submit" name="submit" class="btn btn-login" name="login" id="login">Đăng nhập</button></center>
					<P style="color:red"><?php echo $kq; ?></p>
					<a href="#"></a>
					<br>
					<i>* Bạn chưa có tài khoản? Vui lòng đăng ký.</i>
				</form>
			</div>
			<div class="col-md-6">
				<center>
					<div class="heading">
						<h2> Đăng ký tài khoản</h2>
					</div>
				</center>
				<form name="form2" id="ff2" method="post" action="#">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Họ và tên" name="fullname" id="firstname" value="<?php echo $name; ?>" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Email" name="email" id="email" value="<?php echo $email; ?>" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Điện thoại" name="phone" id="phone" value="<?php echo $dt; ?>" required>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="Mật khẩu" name="password" id="password" value="<?php echo $mk; ?>" required>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="Nhập lại mật khẩu" name="repass" id="repass" value="<?php echo $repass; ?>" required>
					</div>
					<center><button type="submit" name="dangky" class="btn btn-login">Đăng ký</button></center>
					<P style="color:red"><?php echo $kqdk; ?></p>
				</form>
			</div>
		</div>
	</div>
</div>
<?php
include "footer.php"
?>
</body>

</html>
<?php ob_end_flush(); ?>