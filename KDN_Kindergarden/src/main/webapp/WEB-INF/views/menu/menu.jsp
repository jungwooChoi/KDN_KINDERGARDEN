<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식   단</title>
	<script type="text/javascript">
	//게시글 번호나 타이틀을 클릭하면 해당 게시글 요청을 위한 메서드 
	function getBoard(m_id){
		//input 양식의 hidden으로 선언된 no(게시글 번호)에 요청된 게시글 번호를 셋팅
		document.getElementById("m_id").value = m_id;
		var frm = document.getElementById("frm");
		frm.action="updatemenuBoardForm.do";
		frm.submit();
	}
</script>
</head>
<body>
<div class="container_12">
	<div class="grid_3 bot-1">
		<ul class = "font">
			<li><a href="insertmenuBoardForm.do" id="nav_int_menu_li1">메뉴 작성</a></li>
		</ul>
	</div>
	
<div class="grid_9">
	<form id="frm" >
		<input type="hidden" id="m_id"  name="m_id"/>
		<table class="table table-striped table-hover ">
			<tr>
				<th>Monday</th>
				<th>Tuesday</th>
				<th>Wednesday</th>
				<th>Thursday</th>
				<th>Friday</th>
			</tr>
			<tr class="info">
				<c:forEach var="p1" items="${one}">
				<td><span>오전 간식</span><c:if test="${p1.m_id != null }"><a href = "#" onclick="getBoard(${p1.m_id})"><span>${p1.m_etc }</span></a> </c:if></td>
				</c:forEach>
			</tr>
			<tr>
				<c:forEach var="p2" items="${two}">
				<td><span>점심</span><c:if test="${p2.m_id != null }"><a href = "#" onclick="getBoard(${p2.m_id})"><span>${p2.m_etc }</span></a></c:if></td>
				</c:forEach>
			</tr>
			<tr>
				<c:forEach var="p3" items="${three}">
				<td><span>오후 간식</span><c:if test="${p3.m_id != null }"><a href = "#" onclick="getBoard(${p3.m_id})"><span>${p3.m_etc }</span></a></c:if></td>
				</c:forEach>
			</tr>
			<tr>
				<c:forEach var="p4" items="${four}">
				<td><span>저녁</span><c:if test="${p4.m_id != null }"><a href = "#" onclick="getBoard(${p4.m_id})"><span>${p4.m_etc }</span></a></c:if></td>
				</c:forEach>
			</tr>
		</table>
	</form>
</div>
</div>

</body>
</html>