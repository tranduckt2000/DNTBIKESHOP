<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>DND Bicycle Shop</title>
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
	href="<c:url value='/resources/assets/css/style.css' />">
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

<style type="text/css">
.zoom:hover {
	-ms-transform: scale(1.1); /* IE 9 */
	-webkit-transform: scale(1.1); /* Safari 3-8 */
	transform: scale(1.1);
}

.image-holder {
	width: 100%;
	padding-right: 15px;
}
</style>
</head>

<body>

	<!--===== Pre-Loading area Start =====-->
	<div id="preloader">
		<div class="preloader">
			<div class="spinner-block">
				<h1 class="spinner spinner-3 mb-0">.</h1>
			</div>
		</div>
	</div>
	<!--==== Pre-Loading Area End ====-->
	<%@include file="/WEB-INF/views/include/header.jsp"%>

	<!-- Slider/Intro Section Start -->
	<div class="intro11-slider-wrap section-2">
		<div class="intro11-slider swiper-container">
			<div class="image-holder">
				<div
					class="intro11-section swiper-slide slide-5 slide-bg-1 bg-position">
					<img
						src="${pageContext.request.contextPath}/resources/images/bgg.jpg"
						alt="">

					<!-- Intro Content Start -->
					<div class="intro11-content-2 text-center">
						<h1 class="different-title">Quality</h1>
						<h2 class="title text-white">The Gift of Bicycles</h2>
						<a href="${pageContext.request.contextPath}/shop/main.htm"
							class="btn flosun-button  secondary-btn theme-color rounded-0">Shop
							Collection</a>
					</div>
					<!-- Intro Content End -->
				</div>
			</div>
			<!-- Slider Navigation -->
			<div class="home1-slider-prev swiper-button-prev main-slider-nav">
				<i class="lnr lnr-arrow-left"></i>
			</div>
			<div class="home1-slider-next swiper-button-next main-slider-nav">
				<i class="lnr lnr-arrow-right"></i>
			</div>
			<!-- Slider pagination -->
			<div class="swiper-pagination"></div>
		</div>
	</div>
	<!-- Slider/Intro Section End -->
	<!-- Shop Collection Start Here -->
	<div class="shop-collection-area gray-bg pt-no-text pb-no-text">
		<div class="container custom-area">
			<div class="row mb-30">
				<div class="col-md-6 col-custom">
					<div class="collection-content">
						<div class="section-title text-left">
							<span class="section-title-1">Xe d??nh cho</span>
							<h3 class="section-title-3 pb-0">Leo n??i & ???????ng d??i</h3>
						</div>
						<div class="desc-content">
							<p>Chi???c xe ?????p n??y ???????c thi???t k??? v???i h??? th???ng phanh tuy???t
								v???i v?? c??c t??nh n??ng gi???m s???c c?? th??? d??? d??ng x??? l?? c??c va ch???m
								nghi??m tr???ng, ????, ???????ng m??n, r??? v?? ???????ng m??n. Xe ?????p leo n??i
								d??ng ????? gi???i quy???t c??c ?????a h??nh d???c h??n, ???? l?? l?? do t???i sao h???u
								h???t ch??ng ?????u c?? b??nh r??ng th???p h??n so v???i h???u h???t c??c lo???i xe
								?????p ???????ng tr?????ng kh??c.</p>
						</div>
						<a href="${pageContext.request.contextPath}/shop/main.htm"
							class="btn flosun-button secondary-btn rounded-0">Mua h??ng</a>
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
							<span class="section-title-1">Xe d??nh cho</span>
							<h3 class="section-title-3 pb-0">Tour</h3>
						</div>
						<div class="desc-content">
							<p>Ch??ng g???n gi???ng nh?? nh???ng chi???c xe ?????p ???????ng tr?????ng truy???n
								th???ng, ngo???i tr??? m???t v??i ch???nh s???a v?? thay ?????i khi???n ch??ng tr???
								n??n ho??n h???o cho nh???ng chuy???n du l???ch b???ng xe ?????p ???????ng d??i. Xe
								?????p du l???ch c?? nhi???u ??i???m g???n v???i s??? tr??? gi??p c???a b???n c?? th??? g???n
								ch???n b??n, m??y b??m, ????n chi???u s??ng, gi?? ?????, b??nh n?????c v?? nhi???u
								h??n th??? n???a. Ch??ng c??ng ch???a c??c khung si??u ch???c ch???n cho ph??p
								ch??ng mang t???i n???ng ??? c??? gi?? tr?????c v?? gi?? sau.</p>
						</div>
						<a href="${pageContext.request.contextPath}/shop/main.htm"
							class="btn flosun-button secondary-btn rounded-0">Mua h??ng</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Shop Collection End Here -->
	<!--Product Area Start-->
	<div class="product-area mt-text-3">
		<div class="container custom-area-2 overflow-hidden">
			<div class="row">
				<!--Section Title Start-->
				<div class="col-12 col-custom">
					<div class="section-title text-center mb-30">
						<span class="section-title-1">The Most Trendy</span>
						<h3 class="section-title-3">Featured Products</h3>
					</div>
				</div>
				<!--Section Title End-->
			</div>
			<div class="row product-row">
				<div class="col-12 col-custom">
					<div class="product-slider swiper-container anime-element-multi">

						<div class="swiper-wrapper">
							<c:forEach var="flo" items="${TopBicycle}">
								<div class="single-item swiper-slide">
									<!--Single Product Start-->
									<div class="single-product position-relative mb-30">
										<div class="product-image">
											<a class="d-block"
												href="${pageContext.request.contextPath}/shop/product_detail/${flo.f1.id}.htm">
												<img
												src="${pageContext.request.contextPath}/resources/images/bicycle/${flo.f1.image}"
												alt="" class="product-image-1 w-100"> <img
												src="${pageContext.request.contextPath}/resources/images/bicycle/${flo.f1.image}"
												alt="" class="product-image-2 position-absolute w-100 zoom">
											</a>
											<c:if test="${flo.f1.discount!=0 && flo.f1.discount!=null }">
												<span class="onsale">-${flo.f1.discount}%</span>
											</c:if>
											<div class="add-action d-flex flex-column position-absolute">
												<a title="Compare"> <i class="lnr lnr-sync"
													data-toggle="tooltip" data-placement="left" title="Compare"></i>
												</a> <a title="Add To Wishlist"> <i class="lnr lnr-heart"
													data-toggle="tooltip" data-placement="left"
													title="Wishlist"></i>
												</a>
												<%--  <a href="#exampleModalCenter${flo.f1.id}" title="Quick View" data-toggle="modal" data-target="#exampleModalCenter${flo.f1.id}">
                                                <i class="lnr lnr-eye" data-toggle="tooltip" data-placement="left" title="Quick View"></i>
                                            </a> --%>
											</div>
										</div>
										<div class="product-content">
											<div class="product-title">
												<h4 class="title-2">
													<a
														href="${pageContext.request.contextPath}/shop/product_detail/${flo.f1.id}.htm">${flo.f1.name}</a>
												</h4>
											</div>
											<div class="product-rating">
												<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star-o"></i>
											</div>
											<div class="price-box">
												<c:if test="${flo.f1.discount==0 || flo.f1.discount==null }">
													<span class="regular-price "><fmt:formatNumber
															pattern="###,### VND" value="${flo.f1.price}"
															type="currency" /></span>
												</c:if>
												<c:if test="${flo.f1.discount!=0 && flo.f1.discount!=null }">
													<span class="regular-price "><fmt:formatNumber
															pattern="###,### VND"
															value="${flo.f1.price - (flo.f1.price*flo.f1.discount)/100 }"
															type="currency" /> </span>
													<del>
														<span class="old-price"><fmt:formatNumber
																pattern="###,### VND" value="${flo.f1.price}"
																type="currency" /></span>
													</del>
												</c:if>
											</div>
											<c:if test="${userLogin==null}">
												<a
													"href="${pageContext.request.contextPath}/pages/login.htm"
													class="btn product-cart">Add to Cart</a>
											</c:if>
											<c:if test="${userLogin!=null}">
												<a
													href="${pageContext.request.contextPath}/shop/cart/insert/${flo.f1.id}.htm"
													class="btn product-cart">Add to Cart</a>
											</c:if>
										</div>
									</div>
									<!--Single Product End-->

									<div class="single-product position-relative mb-30">
										<div class="product-image">
											<a class="d-block"
												href="${pageContext.request.contextPath}/shop/product_detail/${flo.f2.id}.htm">
												<img
												src="${pageContext.request.contextPath}/resources/images/bicycle/${flo.f2.image}"
												alt="" class="product-image-1 w-100"> <img
												src="${pageContext.request.contextPath}/resources/images/bicycle/${flo.f2.image}"
												alt="" class="product-image-2 position-absolute w-100 zoom">
											</a>
											<c:if test="${flo.f2.discount!=0 && flo.f2.discount!=null }">
												<span class="onsale">-${flo.f2.discount}%</span>
											</c:if>
											<div class="add-action d-flex flex-column position-absolute">
												<a title="Compare"> <i class="lnr lnr-sync"
													data-toggle="tooltip" data-placement="left" title="Compare"></i>
												</a> <a title="Add To Wishlist"> <i class="lnr lnr-heart"
													data-toggle="tooltip" data-placement="left"
													title="Wishlist"></i>
												</a>
											</div>
										</div>
										<div class="product-content">
											<div class="product-title">
												<h4 class="title-2">
													<a
														href="${pageContext.request.contextPath}/shop/product_detail/${flo.f2.id}.htm">${flo.f2.name}</a>
												</h4>
											</div>
											<div class="product-rating">
												<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star-o"></i>
											</div>
											<div class="price-box">
												<c:if test="${flo.f2.discount==0 || flo.f2.discount==null }">
													<span class="regular-price "><fmt:formatNumber
															pattern="###,### VND" value="${flo.f2.price}"
															type="currency" /></span>
												</c:if>
												<c:if test="${flo.f2.discount!=0 && flo.f2.discount!=null }">
													<span class="regular-price "><fmt:formatNumber
															pattern="###,### VND"
															value="${flo.f2.price - (flo.f2.price*flo.f2.discount)/100 }"
															type="currency" /> </span>
													<del>
														<span class="old-price"><fmt:formatNumber
																pattern="###,### VND" value="${flo.f2.price}"
																type="currency" /></span>
													</del>
												</c:if>
											</div>
											<c:if test="${userLogin==null}">
												<a href="${pageContext.request.contextPath}/pages/login.htm"
													class="btn product-cart">Add to Cart</a>
											</c:if>
											<c:if test="${userLogin!=null}">
												<a
													href="${pageContext.request.contextPath}/shop/cart/insert/${flo.f2.id}.htm"
													class="btn product-cart">Add to Cart</a>
											</c:if>
										</div>
									</div>
									<!--Single Product End-->
								</div>
							</c:forEach>
						</div>







						<!-- Slider pagination -->
						<div class="swiper-pagination default-pagination"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Product Area End-->
	<!-- Banner Area Start Here -->
	<div class="banner-area mt-text-3">
		<div class="container custom-area">
			<div class="row">
				<div class="col-md-6 col-custom">
					<!--Single Banner Area Start-->
					<div class="single-banner hover-style mb-30">
						<div class="banner-img">
							<a href="#"> <img
								src="${pageContext.request.contextPath}/resources/images/bg2.jpg"
								alt="">
								<div class="overlay-1"></div>
							</a>
						</div>
					</div>
					<!--Single Banner Area End-->
				</div>
				<div class="col-md-6 col-custom">
					<!--Single Banner Area Start-->
					<div class="single-banner hover-style mb-30">
						<div class="banner-img">
							<a href="#"> <img
								src="${pageContext.request.contextPath}/resources/images/bg1.jpg"
								alt="">
								<div class="overlay-1"></div>
							</a>
						</div>
					</div>
					<!--Single Banner Area End-->
				</div>
			</div>
		</div>
	</div>
	<!-- Banner Area End Here -->
	<!-- Testimonial Area Start Here -->
	<div class="testimonial-area-2 mt-text-2">
		<div class="container custom-area">
			<div class="row">
				<div class="col-lg-6 col-custom">
					<!--Section Title Start-->
					<div class="section-title text-center mb-30">
						<span class="section-title-1">Ch??ng t??i y??u b???n</span>
						<h3 class="section-title-3">Nh???ng g?? c??c b???n n??i v??? ch??ng t??i</h3>
					</div>
					<!--Section Title End-->
					<div
						class="testimonial-carousel swiper-container intro11-carousel-wrap arrow-style-2">
						<div class="swiper-wrapper">
							<div class="single-item swiper-slide">
								<!--Single Testimonial Start-->
								<div class="single-testimonial text-center">
									<div class="testimonial-img">
										<img
											src="${pageContext.request.contextPath}/resources/assets/images/testimonial/1.jpeg"
											alt="">
									</div>
									<div class="testimonial-content">
										<p>Xe ?????p Tr??? Em AVACYCLE Princess JY906-14 14 Inch v???i
											ki???u d??ng nh??? xinh, phong c??ch s??nh ??i???u, ph?? h???p v???i c??c b??
											c?? chi???u cao trung b??nh t??? 100 - 110 cm, ????? tu???i t??? 4 - 6
											tu???i. Xe c?? nhi???u phi??n b???n m??u s???c, ph?? h???p v???i m???c ????ch t???p
											th??? thao, d???o ch??i trong s??n nh?? hay c??ng vi??n h??ng ng??y (c??c
											phi??n b???n m??u c??n h??ng t??y v??o th???i ??i???m v?? khu v???c).</p>
										<div class="testimonial-author">
											<h6>
												T??m <span>Customer</span>
											</h6>
										</div>
									</div>
								</div>
								<!--Single Testimonial End-->
							</div>
							<div class="single-item swiper-slide">
								<!--Single Testimonial Start-->
								<div class="single-testimonial text-center">
									<div class="testimonial-img">
										<img
											src="${pageContext.request.contextPath}/resources/assets/images/testimonial/2.webp"
											alt="">
									</div>
									<div class="testimonial-content">
										<p>Nh???ng chi???c xe ?????p c???a shop b???n ?????m b???o an to??n khi di
											chuy???n, gi??p ng?????i d??ng y??n t??m h??n khi t???p luy???n v?? di
											chuy???n h??ng ng??y. Ch??nh v?? nh???ng ??u ??i???m k??? tr??n, vi???c s??? h???u
											m???t chi???c xe ?????p th??? thao l?? m???t ??i???u v?? c??ng c???n thi???t, gi??p
											b???n c?? ???????c gi??y ph??t ???s???ng ch???m??? ????? b???o v??? s???c kh???e c???a m??nh
											t???t h??n.</p>
										<div class="testimonial-author">
											<h6>
												H?? <span>Customer</span>
											</h6>
										</div>
									</div>
								</div>
								<!--Single Testimonial End-->
							</div>
						</div>
						<!-- Slider Navigation -->
						<div class="home1-slider-prev swiper-button-prev main-slider-nav">
							<i class="lnr lnr-arrow-left"></i>
						</div>
						<div class="home1-slider-next swiper-button-next main-slider-nav">
							<i class="lnr lnr-arrow-right"></i>
						</div>
						<!-- Slider pagination -->
						<div class="swiper-pagination default-pagination"></div>
					</div>
				</div>
				<div class="col-lg-6 col-custom">
					<!--Section Title Start-->
					<div class="section-title text-center mb-30">
						<span class="section-title-1">From The Blogs</span>
						<h3 class="section-title-3">B??i vi???t m???i nh???t</h3>
					</div>
					<!--Section Title End-->
					<div
						class="latest-post-carousel swiper-container intro11-carousel-wrap">
						<div class="swiper-wrapper">
							<div class="single-item swiper-slide">
								<!--Single Blog List Start-->
								<div class="blog-list-vertical">
									<div class="post-date">1/12/2021</div>
									<h3 class="post-title">
										<a href="${pageContext.request.contextPath}/blog/main.htm">Post
											with Gallery</a>
									</h3>
									<p class="post-author">
										<img
											src="${pageContext.request.contextPath}/resources/assets/images/icon/author2.png"
											alt=""> <span>Posted by </span> <a
											href="${pageContext.request.contextPath}/pages/about_us.htm">admin
										</a>
									</p>
								</div>
								<!--Single Blog list End-->
							</div>
							<div class="single-item swiper-slide">
								<!--Single Blog List Start-->
								<div class="blog-list-vertical">
									<div class="post-date">11/11/2021</div>
									<h3 class="post-title">
										<a href="${pageContext.request.contextPath}/blog/main.htm">Post
											with Video</a>
									</h3>
									<p class="post-author">
										<img
											src="${pageContext.request.contextPath}/resources/assets/images/icon/icon.png"
											alt=""> <span>Posted by </span> <a
											href="${pageContext.request.contextPath}/pages/about_us.htm">admin
										</a>
									</p>
								</div>
								<!--Single Blog list End-->
							</div>
							<div class="single-item swiper-slide">
								<!--Single Blog List Start-->
								<div class="blog-list-vertical">
									<div class="post-date">07/10/2021</div>
									<h3 class="post-title">
										<a href="${pageContext.request.contextPath}/blog/main.htm">Post
											with Audio</a>
									</h3>
									<p class="post-author">
										<img
											src="${pageContext.request.contextPath}/resources/assets/images/icon/author2.png"
											alt=""> <span>Posted by </span> <a
											href="${pageContext.request.contextPath}/pages/about_us.htm">admin
										</a>
									</p>
								</div>
								<!--Single Blog list End-->
							</div>
							<div class="single-item swiper-slide">
								<!--Single Blog List Start-->
								<div class="blog-list-vertical">
									<div class="post-date">01/09/2021</div>
									<h3 class="post-title">
										<a href="${pageContext.request.contextPath}/blog/main.htm">Standard
											Blog Post</a>
									</h3>
									<p class="post-author">
										<img
											src="${pageContext.request.contextPath}/resources/assets/images/icon/icon.png"
											alt=""> <span>Posted by </span> <a
											href="${pageContext.request.contextPath}/pages/about_us.htm">admin
										</a>
									</p>
								</div>
								<!--Single Blog list End-->
							</div>
						</div>
						<!-- Slider pagination -->
						<div class="swiper-pagination default-pagination"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Testimonial Area End Here -->
	<!-- Blog Area Start Here -->
	<div class="blog-post-area mt-text-3">
		<div class="container custom-area">
			<div class="row">
				<!--Section Title Start-->
				<div class="col-12">
					<div class="section-title text-center mb-30">
						<span class="section-title-1">From The Blogs</span>
						<h3 class="section-title-3">B??i ????ng c???a ch??ng t??i</h3>
					</div>
				</div>
				<!--Section Title End-->
			</div>
			<div class="row">
				<div class="col-12 col-md-4 col-lg-4 col-custom mb-30">
					<div class="blog-lst">
						<div class="single-blog">
							<div class="blog-content">
								<div class="blog-text">
									<h4>
										<a href="${pageContext.request.contextPath}/blog/detail.htm">L???i
											??ch c???a vi???c ?????p xe</a>
									</h4>
									<div class="blog-post-info">
										<span><a href="#">By admin</a></span> <span>January 25,
											2022</span>
									</div>
									<p>l???i ??ch c???a vi???c ??i xe ?????p m???i ng??y n??y s??? l??m thay ?????i
										suy ngh?? c???a b???n. Xe ?????p l?? ph????ng ti???n di chuy???n kh??ng h??? l???
										l???m. ???? l?? chi???c xe ???? g???n b?? v???i m???i ng?????i t??? th???i nh??? cho
										?????n tr?????c l??c b???n l??m quen v???i xe m??y. ??i xe ?????p v???a ch???m, l???i
										m???t nh??ng l???i c?? c??i th?? vui ri??ng v?? nh???ng t??c d???ng nh???t ?????nh
										?????i v???i s???c kh???e. Ch??ng ta c?? th??? ?????t ???????c nhi???u l???i ??ch s???c
										kh???e th??ng qua ?????p xe h??ng ng??y, ch???ng h???n nh?? r??n luy???n s???c
										kh???e tim m???ch, c???i thi???n s???c kh???e x????ng kh???p v?? c???i thi???n s???c
										m???nh c??ng nh?? ????? s??n ch???c c???a c?? b???p.</p>

									</p>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-4 col-lg-4 col-custom mb-30">
					<div class="blog-lst">
						<div class="single-blog">
							<div class="blog-content">
								<div class="blog-text">
									<h4>
										<a href="${pageContext.request.contextPath}/blog/detail.htm">T??nh
											ti???n d???ng c???a xe g???p</a>
									</h4>
									<div class="blog-post-info">
										<span><a href="#">By admin</a></span> <span>April 16,
											2022</span>
									</div>
									<p>Xe ?????p g???p g???n hay xe ?????p g???p l?? d??ng xe ?????p ???????c thi???t
										k??? ?????c bi???t, t???o thu???n l???i cho vi???c c???t tr??? g???n g??ng t???i m???t
										kh??ng gian. Sau khi di chuy???n tr??n ???????ng tr??? v???, ng?????i d??ng d???
										d??ng mang xe v??o trong nh??, c??n h??? cao t???ng, v??n ph??ng l??m
										vi???c,??? M???i d??ng xe ?????p g???p s??? c?? c?? ch??? g???p kh??c nhau nh?? g???p
										????i, g???p theo chi???u d???c, kh???p tam gi??c, th??o r???i m???t ph???n ?????
										l??u tr??? trong vali, balo du l???ch. Th???c t???, xe ?????p g???p si??u g???n
										c?? k??ch th?????c nh??? h??n xe ?????p th?????ng, y??n xe c?? th??? n??ng cao,
										h??? th???p ????? ph?? h???p v???i chi???u cao c???a ng?????i d??ng.</p>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-4 col-lg-4 col-custom mb-30">
					<div class="blog-lst">
						<div class="single-blog">
							<div class="blog-content">
								<div class="blog-text">
									<h4>
										<a href="${pageContext.request.contextPath}/blog/detail.htm">Xe
											?????p g???p</a>
									</h4>
									<div class="blog-post-info">
										<span><a href="#">By admin</a></span> <span>May 26,
											2022</span>
									</div>
									<p>Kh??ng c???ng k???nh v?? chi???m nhi???u di???n t??ch nh?? xe m??y, xe
										?? t??, xe ?????p g???p ti???n d???ng h??n, g???p g???n linh ?????ng, c?? th??? ?????t
										??? b???t c??? ????u trong nh??, treo t?????ng, b??? d?????i g???m gi?????ng, ?????t
										tr??n b??n ??n,??? Nhi???u b???n c??n g???p xe ?????p b??? v??o ba l?? ????? ??i du
										l???ch, d?? ngo???i n???a. B???n l?? ng?????i ??am m?? c??c m??n th??? d???c th???
										thao nh??ng kh??ng gian nh?? ??? kh?? ch???t th?? n??n s???m ngay m???t
										chi???c xe ?????p g???p g???n cho ti???n nh??. Xe ?????p g???p si??u nh??? nh??ng
										????? b???n th?? l???i r???t cao, l??m b???ng ch???t li???u h???p kim nh??m v??
										magie, kh??ng lo b??? han g??? theo th???i gian.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Blog Area End Here -->
	<!-- Brand Logo Area Start Here -->
	<div class="brand-logo-area gray-bg pt-no-text pb-no-text mt-text-5">
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
		var item = lis[0];
		item.className += " active";

		// view homepage

		var header = document.getElementById('header_main');
		header.className += " header-transparent";

		var footer = document.getElementById('footer_main');
		footer.classList.remove("mt-no-text");
	</script>


</body>

</html>