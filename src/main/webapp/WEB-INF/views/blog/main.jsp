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
											<p>Xe ?????p l?? ph????ng ti???n di chuy???n ????n, ch???y b???ng s???c
												ng?????i ho???c g???n th??m ?????ng c?? tr??? l???c. Xe ?????p g???m m???t b??nh
												tr?????c v?? m???t b??nh sau, g???n v???i nhau th??ng qua h??? th???ng khung
												xe v?? c??ch nhau m???t kho???ng v???a ph???i. Xe ?????p c?? c???u t???o ????n
												gi???n, d??? s??? d???ng. Xe di chuy???n b???ng l???c ?????p c???a ng?????i t??c
												d???ng l??n b??n ?????p v?? gi??? th??ng b???ng trong qu?? tr??nh ho???t ?????ng
												nh??? ?????nh lu???t b???o to??n Momen qu??n t??nh.</p>
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
											<p>Xe ?????p g???m nh???ng lo???i n??o? Xe ?????p ???????c thi???t k??? v???i
												nhi???u m???u m?? kh??c nhau. M???i chi???c xe s??? c?? nh???ng ?????c ??i???m
												ri??ng ????? di chuy???n thu???n ti???n tr??n t???ng lo???i ?????a h??nh. Th??ng
												th?????ng, xe s??? ???????c ph??n th??nh 2 nh??m l???n: - Nh??m xe ?????p
												th??ng d???ng: G???m c??c m???u xe ?????p ???????ng ph??? (City Bike) c?? ki???u
												d??ng t????ng t??? nh?? d??ng xe ?????p truy???n th???ng. M???i ng?????i c?? th???
												d??ng ????? r??n luy???n s???c kh???e, ??i h???c ho???c ??i l??m tr??n nh???ng
												con ???????ng b???ng ph???ng v?? ??t g??? gh???.</p>
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
											<p>Nguy??n l?? ho???t ?????ng c???a xe ?????p - Chuy???n ?????ng: Khi c??
												l???c t??c ?????ng c???a ng?????i l??i l??n b??n xe ?????p v?? ????i xe, b??n ?????p
												quay tr??n k??o theo tr???c gi???a, ????a, l??p v?? b??nh xe sau quay
												theo, l??m cho xe b???t ?????u chuy???n ?????ng. - ?????i h?????ng chuy???n
												?????ng: Tay ng?????i ??i???u khi???n s??? t??c ?????ng l??n c??? xe v?? ghi
												????ng. Tr???c c??? xe xoay h?????ng n??o th?? b??nh xe tr?????c s??? r??? sang
												h?????ng ????. - D???ng xe: Khi b???n mu???n xe ?????ng y??n, b???n ch??? c???n
												b??p phanh xe ?????p. Khi b??p phanh, m?? phanh ??? hai b??n s??? ??p
												v??o v??nh xe, gi??p b???n gi???m t???c ????? v?? d???ng xe l???i.</p>
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