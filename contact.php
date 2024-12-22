<?php
include "head.php";
?>

<?php
include "top.php";
?>
<?php
include "Header.php";
?>
<?php
include "navigation.php";
?>
<!--//////////////////////////////////////////////////-->
<!--///////////////////Contact Page///////////////////-->
<!--//////////////////////////////////////////////////-->
<div id="page-content" class="single-page">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<ul class="breadcrumb">
					<li><a href="index.php">Trang chủ</a></li>
					<li><a href="contact.php">Liên hệ</a></li>
				</ul>
			</div>
		</div>

		<div class="row">

			<div class="col-md-6">
				<div class="heading">
					<h1>Liên hệ với chúng tôi</h1>
				</div>
				<p><span class="glyphicon glyphicon-home"></span> Km 10, Nguyễn Trãi, Hà Đông, Hà Nội</p>
				<p><span class="glyphicon glyphicon-earphone"></span> 079 528 1711</p>
				<p><span class="glyphicon glyphicon-envelope"></span> ltw@gmail.com</p>
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.292401303918!2d105.7848415750301!3d20.980912980656466!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135accdd8a1ad71%3A0xa2f9b16036648187!2zSOG7jWMgdmnhu4duIEPDtG5nIG5naOG7hyBCxrB1IGNow61uaCB2aeG7hW4gdGjDtG5n!5e0!3m2!1svi!2s!4v1733410876711!5m2!1svi!2s" width="100%" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>


			<div class="col-md-6">
				<h3>Đánh giá của bạn</h3>
				<hr>
				<form action="savefeedback.php" method="post">
					<div class="form-group">
						<label for="name">Tên của bạn:</label>
						<input type="text" class="form-control" id="name" name="name" required>
					</div>
					<div class="form-group">
						<label for="email">Email của bạn:</label>
						<input type="email" class="form-control" id="email" name="email" required>
					</div>
					<div class="form-group">
						<label for="message">Nội dung ý kiến:</label>
						<textarea class="form-control" id="message" name="message" rows="5" required></textarea>
					</div>
					<button type="submit" class="btn btn-primary">Gửi</button>
				</form>
			</div>
		</div>
	</div>
</div>

<?php
include "footer.php";
?>
</body>

</html>