<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>KDN 어린이집 myPage</title>
<style type="text/css">
.grid_3 bot-1>ul>li>a {
	width : 100%;
	color: #696969;
	cursor: pointer;
	border: 0px solid gray;
}
</style>
<script type="text/javascript">
$(function(){
	$("#bot-1_li1").css("color","#4C4C4C");
	$("#bot-1_li1").css("font-weight","bold");	
});
</script>
</head>
<body>
	<div class="container_12">
		<div class="grid_3 bot-1">
			<ul id = "font">
				<li><a href="updateForm.do">정보 수정</a></li>
				<li><a href="listMyClass.do" id="bot-1_li3">나의 클래스 관리</a></li>
				<li><a href="#" id="bot-1_li2">상담 관리</a></li>
				<li><a href="insertKidForm.do" id="bot-1_li3">입학 관리</a></li>
			</ul>
		</div>
		<div class="grid_9">
			<c:choose>
				<c:when test ="${!empty myPage_content }">
					<jsp:include page="${myPage_content }"/>
				</c:when>
				<c:otherwise>
					<jsp:include page="memberInfo.jsp"/>
				</c:otherwise>
				</c:choose>
		</div>
	</div>
</body>
</html>