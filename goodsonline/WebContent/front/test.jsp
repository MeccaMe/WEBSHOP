<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<link rel="stylesheet" href="${ctx}/static/css/bootstrap.min.css" type="text/css" media="all">
<link rel="stylesheet" href="${ctx}/static/css/font-awesome.min.css" type="text/css" media="all" />
<link rel="stylesheet" href="${ctx}/static/css/ionicons.min.css" type="text/css" media="all" />
<link rel="stylesheet" href="${ctx}/static/css/owl.carousel.css" type="text/css" media="all">
<link rel="stylesheet" href="${ctx}/static/css/owl.theme.css" type="text/css" media="all">
<link rel='stylesheet' href='${ctx}/static/css/prettyPhoto.css' type='text/css' media='all'>
<link rel="stylesheet" href="${ctx}/static/css/cstyle.css" type="text/css" media="all">
<link rel="stylesheet" href="${ctx}/static/css/custom.css" type="text/css" media="all">
<link href="http://fonts.googleapis.com/css?family=Great+Vibes%7CLato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
</head>
<body>
<!-- div class="noo-spinner">
	<div class="spinner">
		<div class="cube1"></div>
		<div class="cube2"></div>
	</div>
</div-->
<!-- div id="menu-slideout" class="slideout-menu hidden-md-up">
	<div class="mobile-menu">
		<ul id="mobile-menu" class="menu">
			<li><a href="index.html">Home</a></li>
			<li><a href="about-us.html">About us</a></li>
			<li><a href="shop.html">Shop</a></li>
			<li><a href="shop-list.html">Shop List</a></li>
			<li><a href="cart.html">Cart</a></li>
			<li><a href="checkout.html">Checkout</a></li>
			<li><a href="contact-us.html">Contact</a></li>
		</ul>
	</div>
</div>
<div class="site">
	<div class="topbar">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="topbar-text">
						<span>Work time: Monday - Friday: 08AM-06PM</span> 
						<span>Saturday - Sunday: 10AM-06PM</span>
					</div>
				</div>
				<div class="col-md-6">
					<div class="topbar-menu">
						<ul class="topbar-menu">
							<li class="dropdown">
								<a href="#">Languages</a>
								<ul class="sub-menu">
									<li><a href="#">English</a></li>
									<li><a href="#">Français</a></li>
								</ul>
							</li>
							<li><a href="#">Login</a></li>
							<li><a href="#">Register</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<header id="header" class="header header-desktop header-2">
		<div class="top-search">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<form>
							<input type="search" class="top-search-input" name="s" placeholder="What are you looking for?" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<a href="#" id="logo">
						<img class="logo-image" src="images/logo.png" alt="Organik Logo" />
					</a>
				</div>
				<div class="col-md-9">
					<div class="header-right">
						<nav class="menu">
							<ul class="main-menu">
								<li><a href="index.html">Home</a></li>
								<li><a href="about-us.html">About us</a></li>
								<li><a href="shop.html">Shop</a></li>
								<li><a href="shop-list.html">Shop List</a></li>
								<li><a href="cart.html">Cart</a></li>
								<li><a href="checkout.html">Checkout</a></li>
								<li><a href="contact-us.html">Contact</a></li>
							</ul>
						</nav>
						<div class="btn-wrap">
							<div class="mini-cart-wrap">
								<div class="mini-cart">
									<div class="mini-cart-icon" data-count="2">
										<i class="ion-bag"></i>
									</div>
								</div>
								<div class="widget-shopping-cart-content">
									<ul class="cart-list">
										<li>
											<a href="#" class="remove">×</a>
											<a href="shop-detail.html">
												<img src="images/shop/thumb/shop_1.jpg" alt="" />
												Orange Juice&nbsp;
											</a>
											<span class="quantity">1 × $12.00</span>
										</li>
										<li>
											<a href="#" class="remove">×</a>
											<a href="shop-detail.html">
												<img src="images/shop/thumb/shop_2.jpg" alt="" />
												Aurore Grape&nbsp;
											</a>
											<span class="quantity">1 × $9.00</span>
										</li>
									</ul>
									<p class="total">
										<strong>Subtotal:</strong> 
										<span class="amount">$21.00</span>
									</p>
									<p class="buttons">
										<a href="cart.html" class="view-cart">View cart</a>
										<a href="checkout.html" class="checkout">Checkout</a>
									</p>
								</div>
							</div>
							<div class="top-search-btn-wrap">
								<div class="top-search-btn">
									<a href="javascript:void(0);">
										<i class="ion-search"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<header class="header header-mobile">
		<div class="container">
			<div class="row">
				<div class="col-xs-2">
					<div class="header-left">
						<div id="open-left"><i class="ion-navicon"></i></div>
					</div>
				</div>
				<div class="col-xs-8">
					<div class="header-center">
						<a href="#" id="logo-2">
							<img class="logo-image" src="images/logo.png" alt="Organik Logo" />
						</a>
					</div>
				</div>
				<div class="col-xs-2">
					<div class="header-right">
						<div class="mini-cart-wrap">
							<a href="cart.html">
								<div class="mini-cart">
									<div class="mini-cart-icon" data-count="2">
										<i class="ion-bag"></i>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div id="main">
		<div class="section section-bg-10 pt-11 pb-17">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<h2 class="page-title text-center">Cart</h2>
					</div>
				</div>
			</div>
		</div>
		<div class="section border-bottom pt-2 pb-2">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<ul class="breadcrumbs">
							<li><a href="#">Home</a></li>
							<li><a href="#">Shop</a></li>
							<li>Cart</li>
						</ul>
					</div>
				</div>
			</div>
		</div-->
		
		<div class="section pt-7 pb-7">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<table class="table shop-cart">
							<tbody>
								<tr class="cart_item">
									<td class="product-remove">
										<a href="#" class="remove">×</a>
									</td>
									<td class="product-thumbnail">
										<a href="shop-detail.html">
											<c:set var="url" value="${goods.img1 }"/>
											<img src="${ctx}/static/image/${url}" alt="">
										</a>
									</td>
									<td class="product-info">
										<a href="${ctx }/goods/single?">Black Hoodie</a>
										<span class="sub-title">Price for each:</span>
										<span class="amount">$${cart.price }</span>
									</td>
									<td class="product-quantity">
										<div class="quantity">
											<input id="qty-1" type="number" min="0" name="number" value="1" class="input-text qty text" size="4">
										</div>
									</td>
									<td class="product-subtotal">
										<span class="amount">$2.00</span>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="col-md-4">
						<div class="cart-totals">
							<table>
								<tbody>
									<tr class="cart-subtotal">
										<th>Total Costs</th>
										<td>$${total }</td>
									</tr>
								</tbody>
							</table>
							<div class="proceed-to-checkout">
								<a href="${ctx}/front/pay.jsp">Proceed to Checkout</a>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<p>
						Welcome to Organik. Our products are freshly harvested, washed ready for box and finally delivered from our family farm right to your doorstep.
					</p>
				</div>
				
				<div class="col-md-2">
					
				</div>
				<div class="col-md-3">
					<div class="widget">
						<h3 class="widget-title">Subscribe</h3>
						<p>
							Enter your email address for our mailing list to keep yourself updated.
						</p>
						<form class="newsletter">
							<input type="email" name="EMAIL" placeholder="Your email address" required="" />
							<button><i class="fa fa-paper-plane"></i></button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					Copyright &copy; 2017.Company name All rights reserved.
				</div>
			</div>
		</div>
		<div class="backtotop" id="backtotop"></div>
	</div>
</div>

<script type="text/javascript" src="${ctx}/static/js/cjquery.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/jquery-migrate.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/cbootstrap.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/modernizr-2.7.1.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/cowl.carousel.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/jquery.countdown.min.js"></script>
<script type='text/javascript' src='${ctx}/static/js/jquery.prettyPhoto.js'></script>
<script type='text/javascript' src='${ctx}/static/js/jquery.prettyPhoto.init.min.js'></script>
<script type="text/javascript" src="${ctx}/static/js/script.js"></script>
</body>
</html>