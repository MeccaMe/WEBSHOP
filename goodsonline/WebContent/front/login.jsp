<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
</head>

<link href="${ctx}/static/css/loginstyle.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="App Sign in Form,Login Forms,Sign up Forms,Registration Forms,News latter Forms,Elements"./>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
<!--webfonts-->
<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--//webfonts-->
</head>
<body>
	<h1>Sign In For Nutrition</h1>
		<div class="app-cam">
			<div class="cam"><img src="${ctx}/static/image/a.png" class="img-responsive" alt="" /></div>
			<form>
				<input type="text" value="uname"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'uname';}">
				<input type="text" class="text" value="email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'email';}" >
				<input type="password" value="upassword" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'upassword';}">
				<div class="submit"><input type="submit" onclick="myFunction()" value="Sign in" ></div>
				<div class="clear"></div>
				<div class="buttons">
					<ul>
						<li><a href="#" class="hvr-sweep-to-right">Sign in with Facebook</a></li>
						<li><a href="#" class="hvr-sweep-to-left">Sign in with Twitter</a></li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="new">
					<p><a href="#">Forgot Password ?</a></p>
					<p class="sign">New here ?<a href="../register.jsp"> Sign Up</a></p>
					<div class="clear"></div>
				</div>
			</form>
		</div>
</body>
</html>