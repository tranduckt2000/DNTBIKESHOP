<!DOCTYPE html>
<html lang="en">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:set var="root" value="${pageContext.servletContext.contextPath}" />

<head>
<meta charset="UTF-8">
<title>Creto documentation</title>
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/fontawesome.css"
	integrity="sha384-u5J7JghGz0qUrmEsWzBQkfvc8nK3fUT7DCaQzNQ+q4oEXhGSx+P2OqjWsfIRB8QT"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/solid.css"
	integrity="sha384-rdyFrfAIC05c5ph7BKz3l5NG5yEottvO/DQ0dCrwD8gzeQDjYBHNr1ucUpQuljos"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/brands.css"
	integrity="sha384-QT2Z8ljl3UupqMtQNmPyhSPO/d5qbrzWmFxJqmY7tqoTuT2YrQLEqzvVOP2cT5XW"
	crossorigin="anonymous">
<style>
html {
	display: flex;
	align-items: center;
	align-content: stretch;
	justify-content: center;
	height: 100%;
}

body {
	background: #ffffff;
	color: #6f6d70;
	font-family: "Lato", sans-serif;
	line-height: 1.5;
	font-size: 16px;
	font-weight: 500
}

.main {
	max-width: 800px;
	padding: 30px;
	box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.2);
	box-sizing: border-box;
}

.header-text {
	font-size: 22px;
	font-weight: 700;
	text-transform: uppercase;
}

.header-text:after {
	content: '';
	height: 3px;
	width: 70px;
	display: block;
	background: #578cc7;
	margin-top: 15px;
}

a {
	color: #578cc7;
	text-decoration: none;
	transition: color .3s;
}

a:hover {
	color: #45474b;
}

.social-links {
	display: flex;
	align-content: center;
	justify-content: center;
}

.social-links ul {
	margin: 20px 0 0;
	font-size: 24px;
	padding: 0;
}

.social-links ul li {
	display: inline-block;
	margin-right: 6px;
}

.social-links ul li:last-child {
	margin-right: 0;
}
</style>
</head>

<body>
	<div class="main">
		<p class="header-text">Thank you for your purchase!</p>
		<p>
			We are very proud to have you as a customer. For the detailed
			information on this template please check the online
				documentation.
		</p>
		<p>
			We also be happy to help you with any issues you may have using it,
			so do not hesitate to <a href="http://localhost:8080/FLOWERSHOP_DND/pages/contact_us.htm">contact us</a> if you have some
			troubles with the template installation or customization. We do our
			best to provide the top notch customer experience!
		</p>
		<div class="social-links">
			<ul>
				<li><a href="https://www.facebook.com/rovadex" target="_blank"
					title="facebook"><i class="fab fa-facebook"></i></a></li>
				<li><a href="https://www.instagram.com/rovadex" target="_blank"
					title="instagram"><i class="fab fa-instagram"></i></a></li>
				<li><a href="https://www.behance.net/rovadex" target="_blank"
					title="github"><i class="fab fa-behance"></i></a></li>
				<li><a href="https://twitter.com/RovadexStudio" target="_blank"
					title="twitter"><i class="fab fa-twitter-square"></i></a></li>
				<li><a href="https://www.linkedin.com/company/rovadex-com/"
					target="_blank" title="linkedin"><i class="fab fa-linkedin"></i></a></li>
				<li><a href="https://rovadex.com" target="_blank"
					title="rovadex"><i class="fas fa-link"></i></a></li>
			</ul>
		</div>
	</div>
	<div class="single-input-item">
		<a href="${pageContext.request.contextPath}/shop/main.htm">Continue Shopping</a>
	</div>
</body>

</html>
