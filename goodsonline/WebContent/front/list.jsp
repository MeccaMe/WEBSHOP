<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
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
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="../static/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="../static/css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="../static/css/form.css" rel="stylesheet" type="text/css" media="all" />
<!-- ../static/js -->
<script src="../static/js/jquery.min.js"></script>
<script type="text/javascript" src="../static/js/bootstrap-3.1.1.min.js"></script>
<!-- //../static/js -->	
<!-- cart -->
<script src="../static/js/simpleCart.min.js"> </script>
<!-- cart -->
<!-- the ../static/jscrollPane script -->
<script type="text/javascript" src="../static/js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jscrollPane();
			});
		</script>
<!-- //the ../static/jscrollPane script -->
<script type="text/javascript" src="../static/js/jquery.mousewheel.js"></script>
<!-- the mousewheel plugin -->	
<style>
.container{
width:1200px;
}
</style>	
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
					<h1 class="navbar-brand"><a  href="index.jsp">Yummy</a></h1>
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
											<li><a class="list" href="products.jsp">Friend</a></li>
											<li><a class="list" href="products.jsp">Lover</a></li>
											<li><a class="list" href="products.jsp">Sister</a></li>
											<li><a class="list" href="products.jsp">Brother</a></li>
											<li><a class="list" href="products.jsp">Kids</a></li>
											<li><a class="list" href="products.jsp">Parents</a></li>
										</ul>
									</div>																		
									<div class="col-sm-3">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">Chocolate</a></li>
											<li><a class="list" href="products.jsp">Mixed Fruit</a></li>
											<li><a class="list" href="products.jsp">Butterscotch</a></li>
											<li><a class="list" href="products.jsp">Strawberry</a></li>
											<li><a class="list" href="products.jsp">Vanilla</a></li>
											<li><a class="list" href="products.jsp">Eggless goodss</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Theme</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">Heart shaped</a></li>
											<li><a class="list" href="products.jsp">Cartoon goodss</a></li>
											<li><a class="list" href="products.jsp">2-3 Tier goodss</a></li>
											<li><a class="list" href="products.jsp">Square shape</a></li>
											<li><a class="list" href="products.jsp">Round shape</a></li>
											<li><a class="list" href="products.jsp">Photo goodss</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>Weight</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">1 kG</a></li>
											<li><a class="list" href="products.jsp">1.5 kG</a></li>
											<li><a class="list" href="products.jsp">2 kG</a></li>
											<li><a class="list" href="products.jsp">3 kG</a></li>
											<li><a class="list" href="products.jsp">4 kG</a></li>
											<li><a class="list" href="products.jsp">Large</a></li>
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
											<li><a class="list" href="products.jsp">Friend</a></li>
											<li><a class="list" href="products.jsp">Lover</a></li>
											<li><a class="list" href="products.jsp">Sister</a></li>
											<li><a class="list" href="products.jsp">Brother</a></li>
											<li><a class="list" href="products.jsp">Kids</a></li>
											<li><a class="list" href="products.jsp">Parents</a></li>
										</ul>
									</div>																		
									<div class="col-sm-3">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">Chocolate</a></li>
											<li><a class="list" href="products.jsp">Mixed Fruit</a></li>
											<li><a class="list" href="products.jsp">Butterscotch</a></li>
											<li><a class="list" href="products.jsp">Strawberry</a></li>
											<li><a class="list" href="products.jsp">Vanilla</a></li>
											<li><a class="list" href="products.jsp">Eggless goodss</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Theme</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">Heart shaped</a></li>
											<li><a class="list" href="products.jsp">Cartoon goodss</a></li>
											<li><a class="list" href="products.jsp">2-3 Tier goodss</a></li>
											<li><a class="list" href="products.jsp">Square shape</a></li>
											<li><a class="list" href="products.jsp">Round shape</a></li>
											<li><a class="list" href="products.jsp">Photo goodss</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>Weight</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">1 kG</a></li>
											<li><a class="list" href="products.jsp">1.5 kG</a></li>
											<li><a class="list" href="products.jsp">2 kG</a></li>
											<li><a class="list" href="products.jsp">3 kG</a></li>
											<li><a class="list" href="products.jsp">4 kG</a></li>
											<li><a class="list" href="products.jsp">Large</a></li>
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
											<li><a class="list" href="products.jsp">Friend</a></li>
											<li><a class="list" href="products.jsp">Lover</a></li>
											<li><a class="list" href="products.jsp">Sister</a></li>
											<li><a class="list" href="products.jsp">Brother</a></li>
											<li><a class="list" href="products.jsp">Kids</a></li>
											<li><a class="list" href="products.jsp">Parents</a></li>
										</ul>
									</div>																		
									<div class="col-sm-3">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">Chocolate</a></li>
											<li><a class="list" href="products.jsp">Mixed Fruit</a></li>
											<li><a class="list" href="products.jsp">Butterscotch</a></li>
											<li><a class="list" href="products.jsp">Strawberry</a></li>
											<li><a class="list" href="products.jsp">Vanilla</a></li>
											<li><a class="list" href="products.jsp">Eggless goodss</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Theme</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">Heart shaped</a></li>
											<li><a class="list" href="products.jsp">Cartoon goodss</a></li>
											<li><a class="list" href="products.jsp">2-3 Tier goodss</a></li>
											<li><a class="list" href="products.jsp">Square shape</a></li>
											<li><a class="list" href="products.jsp">Round shape</a></li>
											<li><a class="list" href="products.jsp">Photo goodss</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>Weight</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">1 kG</a></li>
											<li><a class="list" href="products.jsp">1.5 kG</a></li>
											<li><a class="list" href="products.jsp">2 kG</a></li>
											<li><a class="list" href="products.jsp">3 kG</a></li>
											<li><a class="list" href="products.jsp">4 kG</a></li>
											<li><a class="list" href="products.jsp">Large</a></li>
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
											<li><a class="list" href="products.jsp">Friend</a></li>
											<li><a class="list" href="products.jsp">Lover</a></li>
											<li><a class="list" href="products.jsp">Sister</a></li>
											<li><a class="list" href="products.jsp">Brother</a></li>
											<li><a class="list" href="products.jsp">Kids</a></li>
											<li><a class="list" href="products.jsp">Parents</a></li>
										</ul>
									</div>																		
									<div class="col-sm-4">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">Chocolate</a></li>
											<li><a class="list" href="products.jsp">Mixed Fruit</a></li>
											<li><a class="list" href="products.jsp">Butterscotch</a></li>
											<li><a class="list" href="products.jsp">Strawberry</a></li>
											<li><a class="list" href="products.jsp">Vanilla</a></li>
											<li><a class="list" href="products.jsp">Eggless goodss</a></li>
										</ul>
									</div>								
									<div class="col-sm-4">
										<h4>Specials</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.jsp">Ice cream goods</a></li>
											<li><a class="list" href="products.jsp">Swiss roll</a></li>
											<li><a class="list" href="products.jsp">Ruske kape</a></li>
											<li><a class="list" href="products.jsp">Cupgoodss</a></li>
											<li><a class="list" href="products.jsp">Muffin</a></li>
											<li><a class="list" href="products.jsp">Merveilleux</a></li>										
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
							<input type="text" class="form-control" value="${searchParam}">
							<button type="submit" class="btn btn-default" aria-label="Left Align">
								Search
							</button>
						</form>
					</div>
				</div>
				<div class="header-right login">
					<a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
					<div id="loginBox">                
						<form id="loginForm">
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
						</form>
					</div>
				</div>
				<div class="header-right cart">
					<a href="#"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
					<div class="cart-box">
						<h4><a href="checkout.jsp">
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
	<!-- 关键字检索 -->
	<div align="center" style="background-color:grey"><input type="text" value="${searchParam }"><input type="button" class="item_add items" value="search"></div>
	<!--products-->
	<div class="products">	 
		<div class="container">
			<h2>Our Products</h2>
		
			<div class="clearfix">
			<!-- 资源分类 -->
			<div class="col-md-3 rsidebar span_1_of_left">
				<section  class="sky-form">
					<div class="product_right">
						<h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Categories</h4>
						<div class="tab1">
							<ul class="place">								
								<li class="sort">cold drink</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>								
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">						
								<a href="#"><p>tea</p></a>
								<a href="#"><p>juice</p></a>
								<a href="#"><p>milk shake</p></a>
						    </div>
					    </div>						  
						<div class="tab2">
							<ul class="place">								
								<li class="sort">hot drink</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">						
								<a href="#"><p>milk tea</p></a>
								<a href="#"><p>tea</p></a>
								<a href="#"><p>coffee</p></a>								
						    </div>
					    </div>
						<div class="tab3">
							<ul class="place">								
								<li class="sort">desserts</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">						
								<a href="#"><p>cakes</p></a>
								<a href="#"><p>donuts</p></a>
								<a href="#"><p>cookies</p></a>
						    </div>
					    </div>
						<div class="tab4">
							<ul class="place">								
								<li class="sort">ice cream</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">						
								<a href="#"><p>fruit</p></a>
								<a href="#"><p>coffee</p></a>
								<a href="#"><p>chocolate</p></a>
								<a href="#"><p>cream</p></a>
						    </div>
					    </div>
						<!--script-->
						<script>
							$(document).ready(function(){
								$(".tab1 .single-bottom").hide();
								$(".tab2 .single-bottom").hide();
								$(".tab3 .single-bottom").hide();
								$(".tab4 .single-bottom").hide();
								$(".tab5 .single-bottom").hide();
								s
								$(".tab1 ul").click(function(){
									$(".tab1 .single-bottom").slideToggle(300);
									$(".tab2 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab2 ul").click(function(){
									$(".tab2 .single-bottom").slideToggle(300);
									$(".tab1 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab3 ul").click(function(){
									$(".tab3 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
								$(".tab4 ul").click(function(){
									$(".tab4 .single-bottom").slideToggle(300);
									$(".tab5 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})	
								$(".tab5 ul").click(function(){
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
				<section  class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>By Flavour</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Vanilla</label>			
						</div>
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Chocolate</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Butterscotch</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Strawberry</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Black Forest</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Mixed Fruit</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Honey</label>
						</div>
					</div>
				</section>
				<section  class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Weight</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Half KG</label>
						</div>		
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>One KG</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>TwO KG</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>More</label>
						</div>
					</div>
				</section>	
				<section  class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Color</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>White</label>
						</div>
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Pink</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Gold</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Silver</label>
						</div>
					</div>
				</section>			 
			</div>
			
			<div class="col-md-9 product-model-sec">
			<c:forEach var="goods" items="${list }" varStatus="i">
				<div class="product-grid">
					<a href="goods/single?goodsId=${i.index }">				
						<div class="more-product"><span> </span></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
						<c:set var="url" value="${goods.img1}"/>
							<img src="${ctx }/static/image/${url }" class="img-responsive" alt="">
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
								<p class="pric1"><del>$${goods.price}</del></p>
								<p class="disc">[15% Off]</p>
							</div>
							<input type="text" class="item_quantity" value="1" />
							<input type="button" class="item_add items" value="Add">
							<div class="clearfix"> </div>
						</div>												
					</div>
				</div>
			</c:forEach>
				
			</div>
			
		<!-- 返回顶部div class="fix-layout">    
			<div class="gb-operation-area" id="_returnTop_layout_inner">        
				<a href="javascript:;" id="goto_top_btn" class="gb-operation-button return-top">            
				<i class="gb-operation-icon" title="返回顶部"></i>            
				<span class="gb-operation-text">顶部</span>        
				</a>    
			</div>
		</div-->
		</div>
		
	</div>

	<!--//products-->
	<!--分页 -->
				<!-- 
				<div style="background-color:white">
					<c:if test="${pageNum>1 }">
						<a href="/goods/list?pageNum=1">首页</a>&nbsp;&nbsp;
						<a href="/goods/list?pageNum=${pageNum-1 }">上一页</a>&nbsp;&nbsp;
					</c:if>
					<c:if test="${pageNum<pageCount }">
						<a href="/goods/list?pageNum=${pageNum+1 }">下一页</a>&nbsp;&nbsp;
						<a href="/goods/list?pageNum=${pageCount }">尾页</a>
					</c:if>
				</div>
				 -->
				
	<!-- 分页     -->
			<table  class="foot">
				<tr>
		            <td colspan="6" align="center" >共${Count}条记录 共${pageCount}页 当前第${page.pageNum}页<br>              
		            <a href="goods/list?pageNum=${pageNum }"><input type="button" name="fristPage" value="首页" /></a>
		            <c:choose>
		               <c:when test="${pageNum!=1}">
		               		<a href="goods/list?pageNum=${pageNum}"><input type="button" name="previousPage" value="上一页" /></a>
		               </c:when>
		               <c:otherwise>
		               <input type="button" disabled="disabled" name="previousPage" value="上一页" />
		               </c:otherwise>
		            </c:choose>
                	<c:choose>
                 		 <c:when test="${pageNum != pageCount}">
                   		 	<a href="goods/list?pageNum=${pageNum+1}"><input type="button" name="nextPage" value="下一页" /></a>
                  		 </c:when>
                  	<c:otherwise>                   
                      <input type="button" disabled="disabled" name="nextPage" value="下一页" />
                     </c:otherwise>
                	</c:choose>
		                <a href="goods/list?pageNum=${pageNum}"><input type="button" name="lastPage" value="尾页" /></a>
		            </td>
		        </tr>
			</table>
	
	<!--footer-->

	</div>
	<!--//footer-->
	<div class="footer-bottom">
		<div class="container">
			<p>Copyright &copy; 2017.Company name All rights reserved.</p>
		</div>
	</div>
</body>
</html>