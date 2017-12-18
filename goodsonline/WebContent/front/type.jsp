<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List</title>
</head>
<body>
	<!-- Custom Theme files -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<script type="application/x-javascript">
		 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
	</script>
	<!-- //Custom Theme files -->
	<link href="../static/css/bootstrap.css" type="text/css"
		rel="stylesheet" media="all">
	<link href="../static/css/style.css" type="text/css" rel="stylesheet"
		media="all">
	<link href="../static/css/form.css" rel="stylesheet" type="text/css"
		media="all" />
	<!-- ../static/js -->
	<script src="../static/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="../static/js/bootstrap-3.1.1.min.js"></script>
	<!-- //../static/js -->
	<!-- cart -->
	<script src="../static/js/simpleCart.min.js">	
	</script>
	<!-- cart -->
	<!-- the ../static/jscrollPane script -->
	<script type="text/javascript"
		src="../static/js/jquery.jscrollpane.min.js"></script>
	<script type="text/javascript" id="sourcecode">
		$(function() {
			$('.scroll-pane').jscrollPane();
		});
	</script>
	<!-- //the ../static/jscrollPane script -->
	<script type="text/javascript" src="../static/js/jquery.mousewheel.js"></script>
	<!-- the mousewheel plugin -->
	<style>
.container {
	width: 1200px;
}
</style>
</head>
<body>
	<!--header-->
	<div class="header">
		<div class="container">
			<nav class="navbar navbar-default" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<h1 class="navbar-brand">
					<a href="${ctx }/front/index.jsp">TUASHOP</a>
				</h1>
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
			</div>
			<!--//navbar-header--> </nav>
			<div class="header-info">
				<div class="header-right search-box">
					<a href="#"><span class="glyphicon glyphicon-search"
						aria-hidden="true"></span></a>
					<div class="search">
						<form class="navbar-form">
							<input type="text" class="form-control" value="${searchParam}">
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
	<!--products-->
	<div class="products">
		<div class="container">
			<h2>Our Products</h2>

					<div class="clearfix">
				<!-- 资源分类 -->
				<div class="col-md-3 rsidebar span_1_of_left">
					<section class="sky-form">
					<div class="product_right">
						<h4 class="m_2">
							<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Categories
						</h4>
						<div class="tab1">
							<ul class="place">
								<li class="sort">cold drink</li>
								<li class="by"><span
									class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"></div>
							<div class="single-bottom">
								<a href="${ctx }/goods/type?typeid=2"><p>tea</p></a> <a href="${ctx }/goods/type?typeid=1"><p>juice</p></a> <a
									href="${ctx }/goods/type?typeid=7"><p>milk shake</p></a>
							</div>
						</div>
						<div class="tab2">
							<ul class="place">
								<li class="sort">hot drink</li>
								<li class="by"><span
									class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"></div>
							<div class="single-bottom">
								<a href="${ctx }/goods/type?typeid=3"><p>milk tea</p></a> <a href="${ctx }/goods/type?typeid=2"><p>tea</p></a> <a
									href="${ctx }/goods/type?typeid=4"><p>coffee</p></a>
							</div>
						</div>
						<div class="tab3">
							<ul class="place">
								<li class="sort">desserts</li>
								<li class="by"><span
									class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"></div>
							<div class="single-bottom">
								<a href="${ctx }/goods/type?typeid=6"><p>desserts</p></a> 
							</div>
						</div>
						<div class="tab4">
							<ul class="place">
								<li class="sort">ice cream</li>
								<li class="by"><span
									class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"></div>
							<div class="single-bottom">
								<a href="${ctx }/goods/type?typeid=5"><p>ice cream</p></a> 
							</div>
						</div>
						<!--script-->
						<script>
							$(document).ready(function() {
								$(".tab1 .single-bottom").hide();
								$(".tab2 .single-bottom").hide();
								$(".tab3 .single-bottom").hide();
								$(".tab4 .single-bottom").hide();
								$(".tab5 .single-bottom").hide();
								s
								$(".tab1 ul").click(function() {
									$(".tab1 .single-bottom").slideToggle(300);
									$(".tab2 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab2 ul").click(function() {
									$(".tab2 .single-bottom").slideToggle(300);
									$(".tab1 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab3 ul").click(function() {
									$(".tab3 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
								$(".tab4 ul").click(function() {
									$(".tab4 .single-bottom").slideToggle(300);
									$(".tab5 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
								$(".tab5 ul").click(function() {
									$(".tab5 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
							});
						</script>
						<!--//script -->
					</div>
					</section>
				</div>
				<div class="col-md-9 product-model-sec">
					<c:forEach var="goods" items="${list }" varStatus="i">
						<div class="product-grid">
							<a href="single?goodsId=${goods.gid }" />
							<div class="more-product">
								<span> </span>
							</div>
							<div class="product-img b-link-stripe b-animate-go  thickbox">
								<c:set var="url" value="${goods.img1}" />
								<img src="${ctx }/static/image/${url }" class="img-responsive"
									alt="">
								<div class="b-wrapper">
									<h4 class="b-animate b-from-left  b-delay03">
										<button>View</button>
									</h4>
								</div>
							</div>
							</a>
							<div class="product-info simpleCart_shelfItem">
								<div class="product-info-cust prt_name">
									<h4>${goods.gname }</h4>
									<span class="item_price">$${goods.price }</span>
									<div class="ofr">
										<p class="pric1">
											<del>$${goods.price}</del>
										</p>
										<p class="disc">[15% Off]</p>
									</div>
									<input type="text" class="item_quantity" value="1" /> <input
										type="button" class="item_add items" value="Add"></input>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>					
					</c:forEach>
				</div>
			</div>
			<!-- 分页 -->
			 <div margin="5">
			<center>
			    <a href="list?pageNum=1">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;
			    <a href="list?pageNum=${pageNum-1}">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
			    <c:forEach begin="1" end="${pageCount }" step="1" var="i">
			        <a href="list?pageNum=${i }">${i }</a>&nbsp;&nbsp;&nbsp;&nbsp;
			    </c:forEach>
			    <a href="list?pageNum=${pageNum+1 }">下一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
			    <a href="list?pageNum=${pageCount }">尾页</a>
			</center>
			</div>
	<!--//footer-->
	<div class="footer-bottom">
		<div class="container">
			<p>Copyright &copy; 2017.Company name All rights reserved.</p>
		</div>
	</div>
</body>
</html>