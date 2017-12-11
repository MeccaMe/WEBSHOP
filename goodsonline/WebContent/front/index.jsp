<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="${ctx}/static/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="${ctx}/static/css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- js -->
<script src="../static/js/jquery.min.js"></script>
<script type="text/javascript" src="../static/js/bootstrap-3.1.1.min.js"></script>
<!-- //js -->	
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
					<h1 class="navbar-brand"><a  href="index.jsp">TUASHOP</a></h1>
				</div>
				<!--navbar-header-->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="index.jsp" class="active">Home</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Birthday<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<h4>By Relation</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/list">Friend</a></li>
											<li><a class="list" href="${ctx }/goods/list">Lover</a></li>
											<li><a class="list" href="${ctx }/goods/list">Sister</a></li>
											<li><a class="list" href="${ctx }/goods/list">Brother</a></li>
											<li><a class="list" href="${ctx }/goods/list">Kids</a></li>
											<li><a class="list" href="${ctx }/goods/list">Parents</a></li>
										</ul>
									</div>																		
									<div class="col-sm-3">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/list">Chocolate</a></li>
											<li><a class="list" href="${ctx }/goods/list">Mixed Fruit</a></li>
											<li><a class="list" href="${ctx }/goods/list">Butterscotch</a></li>
											<li><a class="list" href="${ctx }/goods/list">Strawberry</a></li>
											<li><a class="list" href="${ctx }/goods/list">Vanilla</a></li>
											<li><a class="list" href="${ctx }/goods/list">Eggless Cakes</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Theme</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/list">Heart shaped</a></li>
											<li><a class="list" href="${ctx }/goods/list">Cartoon Cakes</a></li>
											<li><a class="list" href="${ctx }/goods/list">2-3 Tier Cakes</a></li>
											<li><a class="list" href="${ctx }/goods/list">Square shape</a></li>
											<li><a class="list" href="${ctx }/goods/list">Round shape</a></li>
											<li><a class="list" href="${ctx }/goods/list">Photo cakes</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>Weight</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/list">1 kG</a></li>
											<li><a class="list" href="${ctx }/goods/list">1.5 kG</a></li>
											<li><a class="list" href="${ctx }/goods/list">2 kG</a></li>
											<li><a class="list" href="${ctx }/goods/list">3 kG</a></li>
											<li><a class="list" href="${ctx }/goods/list">4 kG</a></li>
											<li><a class="list" href="${ctx }/goods/list">Large</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>
					   <li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Wedding<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<h4>By Relation</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/list">Friend</a></li>
											<li><a class="list" href="${ctx }/goods/list">Lover</a></li>
											<li><a class="list" href="${ctx }/goods/list">Sister</a></li>
											<li><a class="list" href="${ctx }/goods/list">Brother</a></li>
											<li><a class="list" href="${ctx }/goods/list">Kids</a></li>
											<li><a class="list" href="${ctx }/goods/list">Parents</a></li>
										</ul>
									</div>																		
									<div class="col-sm-3">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/list">Chocolate</a></li>
											<li><a class="list" href="${ctx }/goods/list">Mixed Fruit</a></li>
											<li><a class="list" href="${ctx }/goods/list">Butterscotch</a></li>
											<li><a class="list" href="${ctx }/goods/list">Strawberry</a></li>
											<li><a class="list" href="${ctx }/goods/list">Vanilla</a></li>
											<li><a class="list" href="${ctx }/goods/list">Eggless Cakes</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Theme</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/list">Heart shaped</a></li>
											<li><a class="list" href="${ctx }/goods/list">Cartoon Cakes</a></li>
											<li><a class="list" href="${ctx }/goods/list">2-3 Tier Cakes</a></li>
											<li><a class="list" href="${ctx }/goods/list">Square shape</a></li>
											<li><a class="list" href="${ctx }/goods/list">Round shape</a></li>
											<li><a class="list" href="${ctx }/goods/list">Photo cakes</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>Weight</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/list">1 kG</a></li>
											<li><a class="list" href="${ctx }/goods/list">1.5 kG</a></li>
											<li><a class="list" href="${ctx }/goods/list">2 kG</a></li>
											<li><a class="list" href="${ctx }/goods/list">3 kG</a></li>
											<li><a class="list" href="${ctx }/goods/list">4 kG</a></li>
											<li><a class="list" href="${ctx }/goods/list">Large</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>				
						<li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Special Offers <b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<h4>By Relation</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/list">Friend</a></li>
											<li><a class="list" href="${ctx }/goods/list">Lover</a></li>
											<li><a class="list" href="${ctx }/goods/list">Sister</a></li>
											<li><a class="list" href="${ctx }/goods/list">Brother</a></li>
											<li><a class="list" href="${ctx }/goods/list">Kids</a></li>
											<li><a class="list" href="${ctx }/goods/list">Parents</a></li>
										</ul>
									</div>																		
									<div class="col-sm-3">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/list">Chocolate</a></li>
											<li><a class="list" href="${ctx }/goods/list">Mixed Fruit</a></li>
											<li><a class="list" href="${ctx }/goods/list">Butterscotch</a></li>
											<li><a class="list" href="${ctx }/goods/list">Strawberry</a></li>
											<li><a class="list" href="${ctx }/goods/list">Vanilla</a></li>
											<li><a class="list" href="${ctx }/goods/list">Eggless Cakes</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Theme</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/list">Heart shaped</a></li>
											<li><a class="list" href="${ctx }/goods/list">Cartoon Cakes</a></li>
											<li><a class="list" href="${ctx }/goods/list">2-3 Tier Cakes</a></li>
											<li><a class="list" href="${ctx }/goods/list">Square shape</a></li>
											<li><a class="list" href="${ctx }/goods/list">Round shape</a></li>
											<li><a class="list" href="${ctx }/goods/list">Photo cakes</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>Weight</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/list">1 kG</a></li>
											<li><a class="list" href="${ctx }/goods/list">1.5 kG</a></li>
											<li><a class="list" href="${ctx }/goods/list">2 kG</a></li>
											<li><a class="list" href="${ctx }/goods/list">3 kG</a></li>
											<li><a class="list" href="${ctx }/goods/list">4 kG</a></li>
											<li><a class="list" href="${ctx }/goods/list">Large</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>
						<li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Store<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">
									<div class="col-sm-4">
										<h4>By Relation</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/list">Friend</a></li>
											<li><a class="list" href="${ctx }/goods/list">Lover</a></li>
											<li><a class="list" href="${ctx }/goods/list">Sister</a></li>
											<li><a class="list" href="${ctx }/goods/list">Brother</a></li>
											<li><a class="list" href="${ctx }/goods/list">Kids</a></li>
											<li><a class="list" href="${ctx }/goods/list">Parents</a></li>
										</ul>
									</div>																		
									<div class="col-sm-4">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/list">Chocolate</a></li>
											<li><a class="list" href="${ctx }/goods/list">Mixed Fruit</a></li>
											<li><a class="list" href="${ctx }/goods/list">Butterscotch</a></li>
											<li><a class="list" href="${ctx }/goods/list">Strawberry</a></li>
											<li><a class="list" href="${ctx }/goods/list">Vanilla</a></li>
											<li><a class="list" href="${ctx }/goods/list">Eggless Cakes</a></li>
										</ul>
									</div>								
									<div class="col-sm-4">
										<h4>Specials</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx }/goods/list">Ice cream cake</a></li>
											<li><a class="list" href="${ctx }/goods/list">Swiss roll</a></li>
											<li><a class="list" href="${ctx }/goods/list">Ruske kape</a></li>
											<li><a class="list" href="${ctx }/goods/list">Cupcakes</a></li>
											<li><a class="list" href="${ctx }/goods/list">Muffin</a></li>
											<li><a class="list" href="${ctx }/goods/list">Merveilleux</a></li>										
										</ul>
									</div>
								</div>
							</ul>
						</li>								
					</ul> 
					<!--/.navbar-collapse-->
				</div>
				<!--//navbar-header-->
			</nav>
			<div class="header-info">
				<div class="header-right search-box">
					<a href="#"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>				
					<div class="search">
						<form class="navbar-form">
							<input type="text" class="form-control">
							<button type="submit" class="btn btn-default" aria-label="Left Align">
								Search
							</button>
						</form>
					</div>	
				</div>
				<div class="header-right login">
					<a href="front/loginregister.jsp"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
					<div id="loginBox">                
						<!-- <form id="loginForm">
							<fieldset id="body">
								<fieldset>
									<label for="email">Email Address</label>
									<input type="text" name="email" id="email">
								</fieldset>
								<fieldset>
									<label for="password">Password</label>
									<input type="password" name="password" id="password">
								</fieldset>
								<input type="submit" id="login" value="Sign in">
								<label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label>
							</fieldset>
							<p>New User ? <a class="sign" href="account.jsp">Sign Up</a> <span><a href="#">Forgot your password?</a></span></p>
						</form> -->
					</div>
				</div>
				<div class="header-right cart">
					<a href="front/cart.jsp"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
					<div class="cart-box">
						<h4><a href="cart.jsp">
							<span class="simpleCart_total"> $0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>) 
						</a></h4>
						<p><a href="javascript:;" class="simpleCart_empty">Empty cart</a></p>
						<div class="clearfix"> </div>
					</div> 
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-->
	<!--banner-->
	<div class="banner">
		<div class="container">
			<h2 class="hdng"> Organic<br><span>Drinks&Dessert</span></br> for u</h2>
			<p>Try our best to make your day special</p>
				<a href="${ctx }/goods/list">SHOP NOW</a>
			<div class="banner-text">			
				<img src="${ctx }/static/image/1.png" height="500px" alt=""/>	
			</div>
		</div>
	</div>			
	<!--//banner-->
	<!--gallery-->
	<div class="gallery">
		<div class="container">
			<div class="gallery-grids">
				<div class="col-md-8 gallery-grid glry-one">
					<a href="${ctx }/goods/list"><img src="../static/image/berrycake.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single?goodsId=${goods.gid }">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Berrycake with fresh,yummy raspberry. </p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$90</h5>
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
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="${ctx }/goods/list"><img src="../static/image/timg.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Summer icy lemon juice.</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$30.00</h5>
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
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="${ctx }/goods/list"><img src="../static/image/strawberryms2.jpeg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Icy strawberry milk shake.</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$40.00</h5>
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
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="${ctx }/goods/list"><img src="../static/image/flowerms.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Smiling and delicious flower milk shake.</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$60.00</h5>
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
					</div>
				</div>
				
					<div class="col-md-4 gallery-grid glry-two">
					<a href="${ctx }/goods/list"><img src="../static/image/kiwi.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info galrr-info-two">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Fresh kiwi milk shake</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$60</h5>
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
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="${ctx }/goods/list"><img src="../static/image/ic4.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Smiling ice cream.</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$40.00</h5>
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
					</div>
				</div>
				
				<div class="col-md-3 gallery-grid ">
					<a href="${ctx }/goods/list"><img src="../static/image/donut3.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Pretty animal donuts.</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$40.00</h5>
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
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="${ctx }/goods/list"><img src="../static/image/penzaimt.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Special milk tea with fun.</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$70.00</h5>
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
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="${ctx }/goods/list"><img src="../static/image/mangocake.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Sweety mango cake.</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$50.00</h5>
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
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="${ctx }/goods/list"><img src="../static/image/naicha2.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Milk tea in classical.</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$45.00</h5>
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
					</div>
				</div>
			</div>	
		</div>
	</div>
	<!--//gallery-->
	<!--subscribe-->
	<div class="subscribe">
		 <div class="container">
			 <h3>Newsletter</h3>
			 <form>
				 <input type="text" class="text" value="Email" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Email';}">
				 <input type="submit" value="Subscribe">
			 </form>
		 </div>
	</div>
	<!--//subscribe-->
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-2 footer-grid">
					<h4>company</h4>
					<ul>
						<li><a href="${ctx }/goods/list">products</a></li>
						<li><a href="#">Work Here</a></li>
						<li><a href="#">Team</a></li>
						<li><a href="#">Happenings</a></li>
						<li><a href="#">Dealer Locator</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grid">
					<h4>service</h4>
					<ul>
						<li><a href="#">Support</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">Warranty</a></li>
						<li><a href="contact.jsp">Contact Us</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<h4>order & returns</h4>
					<ul>
						<li><a href="#">Order Status</a></li>
						<li><a href="#">Shipping Policy</a></li>
						<li><a href="#">Return Policy</a></li>
						<li><a href="#">Digital Gift Card</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grid">
					<h4>legal</h4>
					<ul>
						<li><a href="#">Privacy</a></li>
						<li><a href="#">Terms and Conditions</a></li>
						<li><a href="#">Social Responsibility</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid icons">
					<h4>Connect with Us</h4>
					<ul>
						<li><a href="#"><img src="../static/image/i1.png" alt=""/>Follow us on Facebook</a></li>
						<li><a href="#"><img src="../static/image/i2.png" alt=""/>Follow us on Twitter</a></li>
						<li><a href="#"><img src="../static/image/i3.png" alt=""/>Follow us on Google-plus</a></li>
						<li><a href="#"><img src="../static/image/i4.png" alt=""/>Follow us on Pinterest</a></li>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//footer-->
	<div class="footer-bottom">
		<div class="container">
			<p>Copyright &copy; 2015.Company name All rights reserved.51;</p>
		</div>
	</div>
</body>
</html>