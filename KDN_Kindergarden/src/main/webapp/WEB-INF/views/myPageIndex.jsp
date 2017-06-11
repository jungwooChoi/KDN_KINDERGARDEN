<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.kdn.model.domain.*"  %>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core"%> 
<jsp:useBean 	id="pageBean"         class="com.kdn.model.domain.PageBean" 
				scope="request"/>
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
    <style type="text/css">
    .bar-holder2{
	width: 100%;
	margin : 0 auto;
	height: 50px;
	background-color: #484848;
	z-index:9004;
	position: fixed; 
	line-height: 50px;
	top:0px;
	}
    </style>
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
		
		$(document).ready(function(){
		    $(window).scroll(function(){
		    	//$("#menupopup").hide();
		      if($(window).scrollTop()>100){
		    	 
		    	  $('.bar-holder2').fadeIn('slow'); // 100 픽셀을 초과하여 스크롤 된 다음 표시
		    	  $('.bar-holder').hide('fast');
		      }
		      else {
		    	  $('.bar-holder2').fadeOut('fast'); // 100 픽셀 이하인 경우 숨김
		    	  $('.bar-holder').show('fast');
		      }
		    });

		});
		$(function(){
			$(".bar-holder2").hide();
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
		    	 <li><a href="logout.do">logout&nbsp&nbsp</a><a href="myPage.do" >myPage</a></li>
		   	</c:otherwise>
			</c:choose>
		</ul>
	</div>
	<div id="wrapper" class="homepage">
		<div class="wrapper-holder">
			<header id="header">
				<div class="left-part"></div>
				<a id="logo" href="home.do">KDN 어린이집</a>
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
