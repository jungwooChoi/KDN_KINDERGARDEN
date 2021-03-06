<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<link href="css/bootstrap.css" rel="stylesheet">    
<title>KDN 어린이집</title>
</head>
<body>
<div class="page-header" id="banner">
	<div class="row" style="font-family: 'Binggrae'">
		<div class="col-lg-3 col-md-3 col-sm-4">
              <a class="list-group-item"  href="updateForm.do">정보 수정</a>
              <a class="list-group-item"  href="listMyClass.do">나의 클래스 관리</a>
              <a class="list-group-item"  href="#">상담 관리</a>
              <a class="list-group-item"  href="insertKidForm.do">입학 관리</a>
        </div>
        <div class="col-lg-9">  
        	<table class="table table-striped table-hover">
					<tr>
						<th colspan="4"><h1>사용자 정보 리스트</h1></th>
					</tr>
			</table>
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
</div>
</body>
</html>