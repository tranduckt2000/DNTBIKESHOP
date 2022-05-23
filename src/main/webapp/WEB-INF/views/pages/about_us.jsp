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
<title>DNT Bicycle Shop</title>
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
	<!-- About Area Start Here -->
	<div class="about-area mt-no-text">
		<div class="container custom-area">
			<div class="row mb-30">
				<div class="col-md-6 col-custom">
					<div class="collection-content">
						<div class="section-title text-left">
							<span class="section-title-1">Bicycles for</span>
							<h3 class="section-title-3 pb-0">Mountain & Long Road</h3>
						</div>
						<div class="desc-content">
							<p>This bike is designed with excellent braking systems and
								shock-absorbing features that can easily handle serious bumps,
								rocks, dirt trails, roots and ruts. Mountain bikes are meant for
								dealing with steeper terrain which is why most of them consist
								of lower gears as compared to most other road bikes.</p>
						</div>
						<a href="${pageContext.request.contextPath}/shop/main.htm"
							class="btn flosun-button secondary-btn rounded-0">Shop
							Collection</a>
					</div>
				</div>
				<div class="col-md-6 col-custom">
					<!--Single Banner Area Start-->
					<div class="single-banner hover-style">
						<div class="banner-img">
							<a href="#"> <img
								src="${pageContext.request.contextPath}/resources/images/mountain.jpg"
								alt="">
								<div class="overlay-1"></div>
							</a>
						</div>
					</div>
					<!--Single Banner Area End-->
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-custom order-2 order-md-1">
					<!--Single Banner Area Start-->
					<div class="single-banner hover-style">
						<div class="banner-img">
							<a href="#"> <img
								src="${pageContext.request.contextPath}/resources/images/tour.jpg"
								alt="">
								<div class="overlay-1"></div>
							</a>
						</div>
					</div>
					<!--Single Banner Area End-->
				</div>
				<div class="col-md-6 col-custom order-1 order-md-2">
					<div class="collection-content">
						<div class="section-title text-left">
							<span class="section-title-1">Bicycles for the</span>
							<h3 class="section-title-3 pb-0">Tour</h3>
						</div>
						<div class="desc-content">
							<p>These are almost like the traditional road bikes, except
								with a few tweaks and changes that make them perfect for
								long-distance bike tours. Touring bikes come with multiple
								attachment points with the help of which you can attach fenders,
								pumps, lights, racks, water bottles and so much more. They also
								contain super sturdy frames that allow them to carry heavy loads
								on both the front and the rear racks.</p>
						</div>
						<a href="${pageContext.request.contextPath}/shop/main.htm"
							class="btn flosun-button secondary-btn rounded-0">Shop
							Collection</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- About Us Area End Here -->
	<!-- History Area Start Here -->
	<div class="our-history-area gray-bg pt-5 mt-text-3">
		<div class="our-history-area">
			<div class="container custom-area">
				<div class="row">
					<!--Section Title Start-->
					<div class="col-12 col-custom">
						<div class="section-title text-center mb-30">
							<span class="section-title-1">A little story about us</span>
							<h2 class="section-title-large">Our History</h2>
						</div>
					</div>
					<!--Section Title End-->
				</div>
				<div class="row">
					<div class="col-lg-8 ml-auto mr-auto">
						<div class="history-area-content text-center border-0">
							<p>
								<strong>DNT Bicycle Shop: From Three Student of PTITHCM</strong>
							</p>
							<p>After being dumped by a much younger man six months prior,
								I found myself in the office of a friend. "I'm ready to date!
								Who do you know?” I announced. She laughed and began rattling
								off a couple of names. "Wait! He has to bike!" As an avid
								cyclist who lived in an area where at the time there weren't
								many females who rode, I understood the importance of this
								trait. I had learned that, much like a golf match, cycling could
								take most of a morning, if not half the day. My friend quipped
								off a name, Zak, and promised to get his phone number. She
								called me that day and as I scribbled down the seven digits, I
								imagined what excuse I might provide once this strange man
								answered his phone. Conveniently, I was the membership director
								for our local cycling club. I left a message inviting him to a
								group ride that next day. Admittedly, I was a bit nervous as I
								looked around while unloading my bike. "How will I know it's
								him?" I thought. After a few minutes, I spotted Zak. And when I
								say I spotted him, I mean it wasn't too difficult to decipher
								him from the rest of the crowd. As a "roadie," I'd never really
								seen a mountain biker. Here he was wearing cutoff sweats over
								his bike shorts, a tattered jersey that looked like it could use
								a good wash and of course the knobby-tired bike that I'd seen
								only on... dirt! To say that I was less than impressed would be
								an understatement. but I politely introduced myself. As we all
								gathered around I couldn't help but notice his unshaven legs.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Brand Logo Area Start Here -->
	<div class="brand-logo-area gray-bg pt-text-3 pb-text-4 mt-text-2">
		<div class="container custom-area">
			<div class="row">
				<div class="col-12 col-custom">
					<div
						class="brand-logo-carousel swiper-container intro11-carousel-wrap arrow-style-3">
						<div class="swiper-wrapper">
							<div class="single-brand swiper-slide">
								<a href="#"> <img
									src="${pageContext.request.contextPath}/resources/assets/images/brand/1.png"
									alt="Brand Logo">
								</a>
							</div>
							<div class="single-brand swiper-slide">
								<a href="#"> <img
									src="${pageContext.request.contextPath}/resources/assets/images/brand/2.png"
									alt="Brand Logo">
								</a>
							</div>
							<div class="single-brand swiper-slide">
								<a href="#"> <img
									src="${pageContext.request.contextPath}/resources/assets/images/brand/3.png"
									alt="Brand Logo">
								</a>
							</div>
							<div class="single-brand swiper-slide">
								<a href="#"> <img
									src="${pageContext.request.contextPath}/resources/assets/images/brand/4.png"
									alt="Brand Logo">
								</a>
							</div>
							<div class="single-brand swiper-slide">
								<a href="#"> <img
									src="${pageContext.request.contextPath}/resources/assets/images/brand/5.png"
									alt="Brand Logo">
								</a>
							</div>
						</div>
						<!-- Slider Navigation -->
						<div class="home1-slider-prev swiper-button-prev main-slider-nav">
							<i class="lnr lnr-arrow-left"></i>
						</div>
						<div class="home1-slider-next swiper-button-next main-slider-nav">
							<i class="lnr lnr-arrow-right"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Brand Logo Area End Here -->



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
		var item = lis[lis.length - 2];
		item.className += " active";
	</script>
</body>
</html>