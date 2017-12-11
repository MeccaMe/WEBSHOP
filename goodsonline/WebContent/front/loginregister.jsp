<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Signup & Login </title>

	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />
  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet"> -->
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="../static/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="../static/css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="../static/css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="../static/css/lbootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="../static/css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="../static/css/owl.carousel.min.css">
	<link rel="stylesheet" href="../static/css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="../static/css/lstyle.css">

	<!-- Modernizr JS -->
	<script src="../static/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="../static/js/respond.min.js"></script>
	<![endif]-->

	</head>
</head>
<body>
	<div class="gtco-loader"></div>
	
	<div id="page"></div>

	
	<div class="page-inner"></div>
	<!-- <nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id="gtco-logo"><a href="index.html">Splash <em>.</em></a></div>
				</div>
				<div class="col-xs-8 text-right menu-1">
					<ul>
						<li><a href="features.html">Features</a></li>
						<li><a href="tour.html">Tour</a></li>
						<li class="has-dropdown">
							<a href="#">Dropdown</a>
							<ul class="dropdown">
								<li><a href="#">Web Design</a></li>
								<li><a href="#">eCommerce</a></li>
								<li><a href="#">Branding</a></li>
								<li><a href="#">API</a></li>
							</ul>
						</li>
						<li><a href="pricing.html">Pricing</a></li>
						<li><a href="contact.html">Contact</a></li>
						<li class="btn-cta"><a href="#"><span>Get started</span></a></li>
					</ul>
				</div>
			</div>
			
		</div>
	</nav> -->
	
	<header id="gtco-header" class="gtco-cover" role="banner" style="background-image: url(../static/image/a.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					

					<div class="row row-mt-15em">
						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
							<span class="intro-text-small">Welcome to TUASHOP</span>
							<h1>Women own two stomachs,one keeps sweets,another for dinner.</h1>	
						</div>
						<div class="col-md-4 col-md-push-1 animate-box" data-animate-effect="fadeInRight">
							<div class="form-wrap">
								<div class="tab">
									<ul class="tab-menu">
										<li class="active gtco-first"><a href="#" data-tab="signup">Sign up</a></li>
										<li class="gtco-second"><a href="#" data-tab="login">Login</a></li>
									</ul>
									<div class="tab-content">
										<div class="tab-content-inner active" data-content="signup">
											<form action="${ctx}/users/loginregister" method="post">
												<div class="row form-group">
													<div class="col-md-12">
														<label for="username">Username </label>
														<input name="uname" type="text" class="form-control" id="username">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="username">Email </label>
														<input name="email" type="text" class="form-control" id="username">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="password">Password</label>
														<input name="upassword" type="password" class="form-control" id="password">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="password2">Address</label>
														<input name="address" type="text" class="form-control" id="password2">
													</div>
												</div>

												<div class="row form-group">
													<div class="col-md-12">
														<input type="submit" class="btn btn-primary" value="Sign up">
													</div>
												</div>
											</form>	
										</div>

										<div class="tab-content-inner" data-content="login">
											<form action="${ctx }/users/userlogin" method="post">
												<div class="row form-group">
													<div class="col-md-12">
														<label for="username">Username</label>
														<input name="uname" type="text" class="form-control" id="username">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="password">Password</label>
														<input name="upassword" type="password" class="form-control" id="password">
													</div>
												</div>

												<div class="row form-group">
													<div class="col-md-12">
														<input type="submit" class="btn btn-primary" value="Login">
													</div>
												</div>
											</form>	
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
							
					
				</div>
			</div>
		</div>
	</header>
	
	
	
	<!-- jQuery -->
	<script src="../static/js/jqueryl.min.js"></script>
	<!-- jQuery Easing -->
	<script src="../static/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="../static/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="../static/js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="../static/js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="../static/js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="../static/js/jquery.magnific-popup.min.js"></script>
	<script src="../static/js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="../static/js/main.js"></script>
</body>
</html>