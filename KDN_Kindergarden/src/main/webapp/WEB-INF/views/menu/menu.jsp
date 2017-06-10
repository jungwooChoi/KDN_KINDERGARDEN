<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식   단</title>
</head>
<body>
<div class="container_12">
	<div class="grid_3 bot-1">
		<ul class = "font">
			<li><a href="insertmenuBoardForm.do" id="nav_int_menu_li1">메뉴 작성</a></li>
			<li><a href="#" id="nav_int_menu_li2">메뉴 삭제</a></li>
		</ul>
	</div>
	
<div class="grid_9">
		<table class="table">
			<tr>
				<th>Monday</th>
				<th>Tuesday</th>
				<th>Wednesday</th>
				<th>Thursday</th>
				<th>Friday</th>
			</tr>
			<c:forEach var="m" items="${menu}" varStatus="status">
				<tr>
					<c:choose >
						<c:when test="${fn:trim(m.m_category) eq '1'}">
							<td><span>오전 간식</span><span>${m.m_etc }</span></td>
						</c:when>
						<c:when test="${fn:trim(m.m_category) eq '2'}">
							<td><span>점심</span><span>${m.m_etc }</span></td>
						</c:when>
						<c:when test="${fn:trim(m.m_category) eq '3'}">
							<td><span>오후 간식</span><span>${m.m_etc }</span></td>
						</c:when>
						<c:when test="${fn:trim(m.m_category) eq '4'}">
							<td><span>저녁</span><span>${m.m_etc }</span></td>
						</c:when>
						<c:otherwise>
							<td><span>  &nbsp </span><span> &nbsp </span></td>
						</c:otherwise>
					</c:choose>
				</tr>
			</c:forEach>
		</table>
</div>
</div>

</body>
</html>