<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>single</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="${ctx}/static/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="${ctx}/static/css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- js -->
<script src="${ctx}/static/js/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/bootstrap-3.1.1.min.js"></script>
<script src="${ctx}/static/js/imagezoom.js"></script>
<!-- //js -->
<!-- cart -->
<script src="${ctx}/static/js/simpleCart.min.js"> </script>
<!-- cart -->
<!-- FlexSlider -->
<script defer src="${ctx}/static/js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="${ctx}/static/css/flexslider.css" type="text/css" media="screen" />
<script>
	// Can also be used with $(document).ready()
	$(window).load(function() {
	  $('.flexslider').flexslider({
		animation: "slide",
		controlNav: "thumbnails"
	  });
	});
</script>
<!--//FlexSlider -->
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
	<!--//single-page-->
	<div class="single">
		<div class="container">
		<!-- c:forEach var="goods" items="${list}" varStatus="i"-->		
			<div class="single-grids">		
				<div class="col-md-4 single-grid">		
					<div class="flexslider">
					<div class="flex-viewport" style="overflow:hidden;position:relative">
						<ul class="slides">
						<c:set var="url" value="${goods.img1 }"/>
							<li data-thumb="${ctx}/static/image/${url}">
								<div class="thumb-image"> <img src="${ctx}/static/image/${url}" data-imagezoom="true" class="img-responsive"> </div>
							</li>
							<li data-thumb="${ctx}/static/image/${url}">
								 <div class="thumb-image"> <img src="${ctx}/static/image/${url}" data-imagezoom="true" class="img-responsive"> </div>
							</li>
							<li data-thumb="${ctx}/static/image/${url}">
							   <div class="thumb-image"> <img src="${ctx}/static/image/${url}" data-imagezoom="true" class="img-responsive"> </div>
							</li> 
						</ul>
					</div>
					</div>
				</div>	
				<div class="col-md-4 single-grid simpleCart_shelfItem">		
					<h4>Unbelievable <h3>${goods.gname}</h3></h4>
					<p>Buy it ! & Having a nice day !</p>
					<ul class="size">
						<h3>Size</h3>
							<li><a href="#">short</a></li>
							<li><a href="#">tall</a></li>
							<li><a href="#">grande</a></li>
							<li><a href="#">venti</a></li>
					</ul>
					
					<div class="galry">
						<div class="prices">
							<h5 class="item_price">$${goods.price }</h5>
						</div>
						<div class="rating">
							<span>☆</span>
							<span>☆</span>
							<span>☆</span>
							<span>☆</span>
							<span>☆</span>
						</div>
						<div class="clearfix"></div>
					</div>
					<p class="qty"> Qty :  </p><input name="count" min="1" type="number" id="quantity"  value="1" class="form-control input-small">
					<div class="btn_form">
						<a href="${ctx}/cart/addCart?gid=${goods.gid}&uname=${u.uname}" class="add-cart item_add">ADD TO CART</a>	
					</div>	
				</div>
				
				<div class="col-md-4 single-grid1">
					<h2>Account</h2>
					<ul>
						<li><a href="#">Offers</a></li>
						<li><a href="products.html">New products</a></li>
						<li><a href="account.html">Register</a></li>
						<li><a href="account.html">Forgot Your Password</a></li>
						<li><a href="account.html">My account</a></li>
						<li><a href="contact.html">Address</a></li>
						<li><a href="checkout.html.html">wishlist</a></li>
						<li><a href="checkout.html.html">Order history</a></li>
						<li><a href="#">Downloads</a></li>
						<li><a href="#">Reward points</a></li>
					</ul>
				</div>
				
				<div class="clearfix"> </div>				
			</div>	
			<!-- /c:forEach-->		
		</div>
		
	</div>
	<!-- collapse -->
	<div class="collpse tabs">
		<div class="container">
			<div class="panel-group collpse" id="accordion" role="tablist" aria-multiselectable="true">
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingOne">
						<h4 class="panel-title">
							<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
							  Description
							</a>
						</h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
						<div class="panel-body">
							At the Dessert House we have some great specials.Feel HOT in summer? Exhausted after shopping？Bored while watching soap opera?
Try this amazing ICECREAM! It is mixed by bluebarries, bananas, durians, watermelon and a variety of fruit. Different taste can satisfy different ppl either man or lady, either old or yound. PAY NOW, AND YOU'LL GET AN EXTRA ONE ! Done't hesitate to dial 400-8888-888, NOW!!! 
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingTwo">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
							   additional information
							</a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
						<div class="panel-body">
							Get yourself refreshed with our today.somebody says that woman own two stomachs,one keeps sweets,another for dinner.
sweets always make people love and hate them
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingThree">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
								reviews 
							</a>
						</h4>
					</div>
					<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
						<div class="panel-body">
							milk shake;milk tea;juice;coffee;cake;donut;tea
						</div>
					</div>
				</div>
			
			</div>
		</div>
	</div>
	<!--//collapse -->
	
	<!--footer-->
	<div class="footer-bottom">
		<div class="container">
			<p>Copyright &copy; 2015.Company name All rights reserved.</p>
		</div>
	</div>
</html>