<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="format-detection" content="telephone=no">
	<title>Kid' school - Home</title>
	<link href='http://fonts.googleapis.com/css?family=Gochi+Hand|Arvo:400,700' rel='stylesheet' type='text/css'>
	<link href="css/jquery.bxslider.css" rel="stylesheet" />
	<link rel="stylesheet" href="css/style1.css" />
	<link rel="stylesheet" type="text/css" media="screen" href="css/grid_12.css">
    <link rel="stylesheet" type="text/css" media="screen" href="css/slider.css">
    <script src="js/jquery-1.7.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/tms-0.4.1.js"></script>
    <script>
		$(document).ready(function(){				   	
			$('.slider')._TMS({
				show:0,
				pauseOnHover:true,
				prevBu:'.prev',
				nextBu:'.next',
				playBu:false,
				duration:800,
				preset:'fade',
				pagination:true,
				pagNums:false,
				slideshow:7000,
				numStatus:false,
				banners:false,
				waitBannerAnimation:false,
				progressBar:false
			})		
		});
	</script>
</head>
<body>
			  <div id="login">
			   		<ul>
						<c:choose>
					   	<c:when test="${empty id}">
							<li><jsp:include page="member/login.jsp"/></li>
					   	</c:when>
					   	<c:otherwise>
					    	 <li><a href="logout.do">logout&nbsp&nbsp</a><a href="myPage.do" class="clr-7">myPage</a></li>
					   	</c:otherwise>
						</c:choose>
					</ul>
				</div>
	<div id="wrapper" class="homepage">
		<div class="wrapper-holder">
			<header id="header">
				<div class="left-part"></div>
				<a id="logo" href="index.html">Kid' school</a>
				<div class="bar-holder">
					<a class="menu_trigger" href="#">menu</a>
					<div id="nav">
						<ul>
							<li><a href="about.html">About us</a></li>
							<li><a href="events.html">notice</a></li>
							<li><a href="gallery.html">register</a></li>
							<li><a href="index.html">schedule</a></li>
							<li><a href="index.html">photo</a></li>
							<li><a href="index.html">menu</a></li>
						</ul>
					</div>
				</div>
			</header>
					<c:choose>
						<c:when  test="${!empty content}">
							<jsp:include page="${content}"/>
						</c:when>
						<c:otherwise>
							<jsp:include page="main.jsp"/>
						</c:otherwise>
					</c:choose>
			</div>
		<div class="top-blue-border"></div>
		<footer id="footer">
			<div class="footer-holder">
				<div class="footer-frame">
					<div class="footer-bottom">
						<div class="holder">
							<jsp:include page="copyright.jsp"/>
						</div>
					</div>
				</div>
			</div>
		</footer>	
	</div>
</body>
</html>