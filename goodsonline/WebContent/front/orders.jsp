<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Check Orders</title>
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
											<img src="${ctx}/static/image/${orders.img1}" alt="">
										</a>
									</td>
									<td class="product-info">
										<a>${orders.gname } </a>
										<span class="sub-title">Price for each:</span>
										<span class="amount">$${order.price }</span>
									</td>
									<td class="product-quantity">
										<div class="quantity">
											<input id="qty-1" type="number" min="0" name="number" value="1" class="input-text qty text" size="4">
										</div>
									</td>
									<td class="product-subtotal">
										<span class="amount">$${orders.price }</span>
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
										<td>$${orders.total }</td>
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
						Welcome to TUASHOP. Our products are freshly harvested, washed ready for box and finally delivered from our family farm right to your doorstep.
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