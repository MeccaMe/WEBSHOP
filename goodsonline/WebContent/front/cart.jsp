<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your ShoppingCart</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="../static/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="../static/css/style.css" type="text/css" rel="stylesheet" media="all">


<!-- ../static/js -->
<script src="../static/js/jquery.min.js"></script>
<script type="text/javascript" src="../static/js/bootstrap-3.1.1.min.js"></script>
<!-- //../static/js -->
<!-- cart -->
<script src="../static/js/simpleCart.min.js"> </script>
<!-- cart -->
</head>
<body>
	<!--header-->
	<div class="header">
		<div class="container">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<h1 class="navbar-brand"><a  href="${ctx }/front/index.jsp">TUASHOP</a></h1>
				</div>
			<!--navbar-header-->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="${ctx }/front/index.jsp" class="active">Home</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Cold Drink<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<h4>juice</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/type?typeid=1">juice</a></li>
											
										</ul>
									</div>																		
									<div class="col-sm-3">
										<h4>milk tea</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/type?typeid=3">milk tea</a></li>
											
										</ul>
									</div>	
									<div class="col-sm-3">
										<h4>milk shake</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/type?typeid=7">milk shake</a></li>
											
										</ul>
									</div>			
								</div>
							</ul>
						</li>
					   <li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Hot Drink<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<h4>milk tea</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/type?typeid=3">milk tea</a></li>
											
										</ul>
									</div>																		
									<div class="col-sm-3">
										<h4>tea</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/type?typeid=2">tea</a></li>
											
										</ul>
									</div>	
									<div class="col-sm-3">
										<h4>coffee</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/type?typeid=4">coffee</a></li>
											
										</ul>
									</div>			
								</div>
							</ul>
						</li>				
						<li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Desserts <b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/type?typeid=6">Desserts</a></li>
										</ul>
									</div>																		
								</div>
							</ul>
						</li>
						<li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Ice cream<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">	
								<div class="col-sm-3">
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx}/goods/type?typeid=5">Ice cream</a></li>
										</ul>
									</div>																	
								</div>
							</ul>
						</li>
														
					</ul> 
				<!--/.navbar-collapse-->
			</div>
			<!--//navbar-header--> </nav>
			<!-- 关键字检索 -->
			<div class="header-info">
				<div class="header-right search-box">
					<a href="#"><span class="glyphicon glyphicon-search"
						aria-hidden="true"></span></a>
					<div class="search">
						<form class="navbar-form">
							<input type="text" class="form-control" name="search">
							<button type="submit" class="btn btn-default"
								aria-label="Left Align">Search</button>
						</form>
					</div>
				</div>
				<div class="header-right login">
					<a href="${ctx }/front/loginregister.jsp"><span
						class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
					<div id="loginBox">
					</div>
				</div>
				<div class="header-right cart">
					<a href="${ctx }/cart/showInCart?uname=${u.uname}"><span
						class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
					<div class="cart-box">
						<h4>
							<a href="${ctx }/cart/showInCart?uname=${u.uname}"> <span class="simpleCart_total">
									$0.00 </span> (<span id="simpleCart_quantity"
								class="simpleCart_quantity"> 0 </span>)
							</a>
						</h4>
						<p>
							<a href="javascript:;" class="simpleCart_empty">Empty cart</a>
						</p>
						<div class="clearfix"></div>
					</div>
					<div class="header-right login" style="color:yellow">
						<p>${u.uname }</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--//header-->
	<!--cart-items-->
	<div class="cart-items">
		<div class="container">
			<h2>My Shopping Cart(3)</h2>
			<script>$(document).ready(function(c) {
				$('.close1').on('click', function(c){
					$('.cart-header').fadeOut('slow', function(c){
						$('.cart-header').remove();
					});
					});	  
				});
			</script>
			<div class="cart-header">
				<div class="close1"> </div>
				<div class="cart-sec simpleCart_shelfItem">
				<div class="section pt-7 pb-7">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<table class="table shop-cart">
							<tbody>
								<tr class="cart_item">
									<td></td>
									<td class="product-thumbnail">
										<p>picture</p>
									</td>
									<td class="product-info">
										<span class="sub-title">goodsname</span>
									</td>
									<td class="product-quantity">
										<div class="quantity">
										<p>count</p>
										</div>
									</td>
									<td class="product-subtotal">
										<span class="amount">price</span>
									</td>
									<td class="product-subtotal">
										<span class="amount">total</span>
									</td>
								</tr>
								<c:forEach items="${ciList}" var="ci">
								<tr class="cart_item">
								<!-- 删除  -->
									<td class="product-remove">
										<a href="#" class="remove">×</a>
									</td>
									<td class="product-thumbnail">
										<a href="${ctx }/front/single">
											<img height="200px" width="200px" src="${ctx }/static/image/${ci.img1}" alt="">
										</a>
									</td>
									<td class="product-info">
										<a href="${ctx }/front/single"></a>
										<span class="sub-title">${ci.gname }</span>
									</td>
									<td class="product-quantity">
										<div class="quantity">
											count:<h4>${ci.count} </h4>
											<!-- input id="qty-2" type="number" min="0" name="number" value="1" class="input-text qty text" size="4"-->
										</div>
									</td>
									<td class="product-subtotal">
										<span class="amount">$${ci.price }</span>
									</td>
									<td class="product-subtotal">
										<span class="amount">$${ci.total }</span>
									</td>
								</tr>
								</c:forEach>
								<tr>
									
									<td></td>
									<td></td>
									<td></td>
									
									<td>total costs：</td>
								</tr>
								<tr>
									<td colspan="5" class="actions">
										<a class="item_add items" href="${ctx }/goods/list"> Continue Shopping</a>
										<a href="${ctx }/order/addOrders?uname=${u.uname}"><input type="button" class="item_add items" name="update_cart" value="Submit Cart" /></a>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				
					<div class="clearfix"></div>
				</div>
			</div>		
		</div>
	</div>
	
	<!--//checkout-->	
	<!--footer-->

	<!--footer-->
	<div class="footer-bottom">
		<div class="container">
			<p>Copyright &copy; 2015.Company name All rights reserved.</p>
		</div>
	</div>
</body>
</html>