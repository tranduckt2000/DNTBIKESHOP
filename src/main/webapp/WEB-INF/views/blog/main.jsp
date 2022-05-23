<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>DNT bicycle Shop</title>
<meta name="robots" content="noindex, follow" />
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value='/resources/assets/images/icon.ico' />">

<!-- CSS
	============================================ -->
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="<c:url value='/resources/assets/css/vendor/bootstrap.min.css' />">

<!-- Test -->
<link rel="stylesheet"
	href="<c:url value='/resources/assets/images/icon.ico' />">
<!-- Font Awesome CSS -->
<link rel="stylesheet"
	href="<c:url value='/resources/assets/css/vendor/font.awesome.min.css' />">
<!-- Linear Icons CSS -->
<link rel="stylesheet"
	href="<c:url value='/resources/assets/css/vendor/linearicons.min.css' />">
<!-- Swiper CSS -->
<link rel="stylesheet"
	href="<c:url value='/resources/assets/css/plugins/swiper-bundle.min.css' />">

<!-- Animation CSS -->
<link rel="stylesheet"
	href="<c:url value='/resources/assets/css/plugins/animate.min.css' />">
<!-- Jquery ui CSS -->
<link rel="stylesheet"
	href="<c:url value='/resources/assets/css/plugins/jquery-ui.min.css' />">
<!-- Nice Select CSS -->
<link rel="stylesheet"
	href="<c:url value='/resources/assets/css/plugins/nice-select.min.css' />">
<!-- Magnific Popup -->
<link rel="stylesheet"
	href="<c:url value='/resources/assets/css/plugins/magnific-popup.css' />">
<!-- Main Style CSS -->
<link rel="stylesheet"
	href="<c:url value='/resources/assets/css/style.css' />">

<base href="${pageContext.servletContext.contextPath }" />
</head>

<body>
	<%@include file="/WEB-INF/views/include/header.jsp"%>

	<!-- Breadcrumb Area End Here -->
	<!-- Blog Main Area Start Here -->
	<div class="blog-main-area">
		<div class="container container-default custom-area">
			<div class="row">
				<div class="col-lg-12 col-12 col-custom widget-mt">
					<!-- Shop Wrapper Start -->
					<div class="row">
						<div class="col-12 col-md-6 col-lg-4 col-custom mb-30">
							<div class="blog-lst">
								<div class="single-blog">
									<div class="blog-content">
										<div class="blog-text">
											<h4>
												<a href="${pageContext.request.contextPath}/blog/detail.htm">Standard
													blog post one</a>
											</h4>
											<div class="blog-post-info">
												<span><a href="#">By admin</a></span> <span>December
													1, 2021</span>
											</div>
											<p>Xe đạp là phương tiện di chuyển đơn, chạy bằng sức
												người hoặc gắn thêm động cơ trợ lực. Xe đạp gồm một bánh
												trước và một bánh sau, gắn với nhau thông qua hệ thống khung
												xe và cách nhau một khoảng vừa phải. Xe đạp có cấu tạo đơn
												giản, dễ sử dụng. Xe di chuyển bằng lực đạp của người tác
												dụng lên bàn đạp và giữ thăng bằng trong quá trình hoạt động
												nhờ định luật bảo toàn Momen quán tính.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-12 col-md-6 col-lg-4 col-custom mb-30">
							<div class="blog-lst">
								<div class="single-blog">
									<div class="blog-content">
										<div class="blog-text">
											<h4>
												<a href="${pageContext.request.contextPath}/blog/detail.htm">Standard
													blog post two</a>
											</h4>
											<div class="blog-post-info">
												<span><a href="#">By admin</a></span> <span>November
													11, 2021</span>
											</div>
											<p>Xe đạp gồm những loại nào? Xe đạp được thiết kế với
												nhiều mẫu mã khác nhau. Mỗi chiếc xe sẽ có những đặc điểm
												riêng để di chuyển thuận tiện trên từng loại địa hình. Thông
												thường, xe sẽ được phân thành 2 nhóm lớn: - Nhóm xe đạp
												thông dụng: Gồm các mẫu xe đạp đường phố (City Bike) có kiểu
												dáng tương tự như dòng xe đạp truyền thống. Mọi người có thể
												dùng để rèn luyện sức khỏe, đi học hoặc đi làm trên những
												con đường bằng phẳng và ít gồ ghề.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-12 col-md-6 col-lg-4 col-custom mb-30">
							<div class="blog-lst">
								<div class="single-blog">
									<div class="blog-content">
										<div class="blog-text">
											<h4>
												<a href="${pageContext.request.contextPath}/blog/detail.htm">Standard
													blog post three</a>
											</h4>
											<div class="blog-post-info">
												<span><a href="#">By admin</a></span> <span>October
													7, 2021</span>
											</div>
											<p>Nguyên lý hoạt động của xe đạp - Chuyển động: Khi có
												lực tác động của người lái lên bàn xe đạp và đùi xe, bàn đạp
												quay tròn kéo theo trục giữa, đĩa, líp và bánh xe sau quay
												theo, làm cho xe bắt đầu chuyển động. - Đổi hướng chuyển
												động: Tay người điều khiển sẽ tác động lên cổ xe và ghi
												đông. Trục cổ xe xoay hướng nào thì bánh xe trước sẽ rẻ sang
												hướng đó. - Dừng xe: Khi bạn muốn xe đứng yên, bạn chỉ cần
												bóp phanh xe đạp. Khi bóp phanh, má phanh ở hai bên sẽ ép
												vào vành xe, giúp bạn giảm tốc độ và dừng xe lại.</p>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Shop Wrapper End -->
						<!-- Bottom Toolbar Start -->
						<div class="row">
							<div class="col-sm-12 col-custom">
								<div class="toolbar-bottom">
									<div class="pagination">
										<ul>
											<li class="current">1</li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li class="next"><a href="#">next</a></li>
											<li><a href="#">&gt;&gt;</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!-- Bottom Toolbar End -->
					</div>
				</div>
			</div>
		</div>
		<!-- Blog Main Area End Here -->


		<%@include file="/WEB-INF/views/include/footer.jsp"%>

		<!-- Scroll to Top Start -->
		<a class="scroll-to-top" href="#"> <i class="lnr lnr-arrow-up"></i>
		</a>
		<!-- Scroll to Top End -->

		<!-- JS
============================================ -->


		<!-- Modernizer JS -->
		<script
			src="<c:url value='/resources/assets/js/vendor/modernizr-3.7.1.min.js' />"></script>
		<!-- jQuery JS -->
		<script
			src="<c:url value='/resources/assets/js/vendor/jquery-3.5.1.min.js' />"></script>
		<!-- Bootstrap JS -->
		<script
			src="<c:url value='/resources/assets/js/vendor/bootstrap.bundle.min.js' />"></script>

		<!-- Swiper Slider JS -->
		<script
			src="<c:url value='/resources/assets/js/plugins/swiper-bundle.min.js' />"></script>
		<!-- nice select JS -->
		<script
			src="<c:url value='/resources/assets/js/plugins/nice-select.min.js' />"></script>
		<!-- Ajaxchimpt js -->
		<script
			src="<c:url value='/resources/assets/js/plugins/jquery.ajaxchimp.min.js' />"></script>
		<!-- Jquery Ui js -->
		<script
			src="<c:url value='/resources/assets/js/plugins/jquery-ui.min.js' />"></script>
		<!-- Jquery Countdown js -->
		<script
			src="<c:url value='/resources/assets/js/plugins/jquery.countdown.min.js' />"></script>
		<!-- jquery magnific popup js -->
		<script
			src="<c:url value='/resources/assets/js/plugins/jquery.magnific-popup.min.js' />"></script>

		<!-- Main JS -->
		<script src="<c:url value='/resources/assets/js/main.js' />"></script>

		<script>
			// Get all <li>
			var lis = document.getElementById('navbar_main').querySelectorAll(
					'li a');
			/*  lis.forEach((item, index) => {
			 	
			 	item.className += " active";
			     console.log({ index, item })
			   }); */
			var item = lis[2];
			item.className += " active";
		</script>
</body>
</html>