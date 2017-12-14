<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<!DOCTYPE HTML>
<html>
<head>
<title>AdminLogin</title>
<!-- Custom Theme files -->
<link href="${ctx}/static/css/Astyle.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--Google Fonts-->
<link href='http://fonts.useso.com/css?family=Roboto:500,900italic,900,400italic,100,700italic,300,700,500italic,100italic,300italic,400' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<!--Google Fonts-->
</head>
<body>
<div class="login">
	<h2>TUASHOP ADMIN</h2>
	<div class="login-top">
		<h1>LOGIN</h1>
		<form action="${ctx}/admin/adminlogin" method="post">
			<input name="aname" type="text" value="User Id" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'User Id';}"/>
			<input name="apassword" type="password" value="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}"/>
	    
	    	<div class="forgot">
	    	
	    		<input type="submit" value="Login" >
	    	</div>
	   </form>
	</div>
	
	<div class="login-bottom">
		<h3>Welcome back,admin.</h3>
	</div>
</div>	

</body>
</html>