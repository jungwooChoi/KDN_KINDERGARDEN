<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/bootstrap.css" rel="stylesheet">
<title>식 단</title>
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
	<div class="row">
		<div class="col-lg-3 col-md-3 col-sm-4">
			<div class="list-group table-of-contents">
				<a class="list-group-item" href="menu.do">주간 메뉴</a> 
				<a class="list-group-item" href="insertmenuBoardForm.do">메뉴 작성</a>
			</div>
		</div>
		<div style="margin: 10px auto; width: 50%; background: white; height: 700px">
			<form id="frm">
				<input type="hidden" id="m_id" name="m_id" />
				<table class="table2">
					<tr>
						<th>Mon</th>
						<th>Tue</th>
						<th>Wed</th>
						<th>Thu</th>
						<th>Fri</th>
					</tr>
					<tr class="info">
						<c:forEach var="p1" items="${one}">
							<td><span>오전 간식</span>
							<c:choose>
								<c:when test="${p1.m_etc!=null }">
									<a href="#" onclick="getBoard(${p1.m_id})"><span>${p1.m_etc }</span></a>
								</c:when>
								<c:otherwise>
									<a href="insertmenuBoardForm.do"><span></span></a>
								</c:otherwise>
							</c:choose>
							</td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach var="p2" items="${two}">
							<td><span>점심</span>
								<c:choose>
								<c:when test="${p2.m_etc!=null }">
									<a href="#" onclick="getBoard(${p2.m_id})"><span>${p2.m_etc }</span></a>
								</c:when>
								<c:otherwise>
									<a href="insertmenuBoardForm.do"><span></span></a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach var="p3" items="${three}">
							<td><span>오후 간식</span>
								<c:choose>
								<c:when test="${p3.m_etc!=null }">
									<a href="#" onclick="getBoard(${p3.m_id})"><span>${p3.m_etc }</span></a>
								</c:when>
								<c:otherwise>
									<a href="insertmenuBoardForm.do"><span></span></a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach var="p4" items="${four}">
							<td><span>저녁</span>
								<c:choose>
								<c:when test="${p4.m_etc!=null }">
									<a href="#" onclick="getBoard(${p4.m_id})"><span>${p4.m_etc }</span></a>
								</c:when>
								<c:otherwise>
									<a href="insertmenuBoardForm.do"><span></span></a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>