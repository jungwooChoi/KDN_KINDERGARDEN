<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link  rel="stylesheet" type="text/css" href="css/basic.css"  />
<script type="text/javascript">
	function init(){
		var writeBoard = document.getElementById("writeBoard");
		writeBoard.style.display="none";
		var viewBoard = document.getElementById("viewBoard");
		viewBoard.style.display="";
	}
	function updateForm(){
		var writeBoard = document.getElementById("writeBoard");
		writeBoard.style.display="";
		document.getElementById("viewBoard").style.display="none";
	}
	function updateBoard(){
		var frm = document.getElementById("updatefrm");
		frm.action="updatemenuBoard.do";
		frm.submit();
	}
	function deleteBoard(){
		var frm = document.getElementById("frm");
		frm.action="deletemenuBoard.do";
		frm.submit();
	}
	function listBoard(){
		location.href="menu.do?<%=request.getQueryString()%>";
	}
	function resetBoard(){
		var frm = document.getElementById("updatefrm");
		frm.title.value="";
		frm.content.value="";
	}
</script>
</head>
<body onload="init()">
    <c:if test="${msg != null }"> 
    	<script type="text/javascript">  alert('${msg}');</script>
    </c:if>
	<div class="main" id="viewBoard" style="display:none">
	 	<form id="frm"  >
	 		<input type ="hidden" name="m_id"  id="m_id"  value="${board.m_id}"/>
	 	    <input type ="hidden" name="no"  id="no" />
	 	    <input type ="hidden" name="query"  id="query" />
			<table border="1" align="center">
				<tbody>
					<tr><td colspan="2">내용 &nbsp;&nbsp;글쓴이:${board.m_t_id}
										&nbsp;&nbsp; 배식일:${board.m_date}</td></tr>
					<tr><td colspan="2"  valign="top" height="200">
						<pre>${board.m_etc}</pre>							
						</td></tr>
				</tbody>
				<tfoot>
					<tr><td colspan="2" align="center">
						<a href="#" onclick="listBoard('frm')">목록</a>
						<c:if test="${board.m_t_id == id }">
							<a href="#" onclick="updateForm()">수정</a>
							<a href="#" onclick="deleteBoard()">삭제</a>
						</c:if>
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
	<div class="main" id="writeBoard" style="display:none">
	 	<form  id="updatefrm">
	 	    <input type ="hidden" name="m_id"  id="m_id"  value="${board.m_id}"/>
	 	    <input type ="hidden" name="m_t_id"  id="m_t_id"  value="${board.m_t_id}"/>
			<table border="1" align="center">
				<caption>식단 수정</caption>
				<tbody>
					<tr><td>배 &nbsp;식&nbsp;일</td>
					    <td ><input type="date" name='m_date'  id='m_date' value = "${board.m_date}">
					</tr>
					<tr>
					<td>시간</td>
						<td>
							<input type="radio" name='m_category' id='m_category' value ='1' <c:if test="${fn:trim(board.m_category) eq '1'}">checked="checked"</c:if>>오전 간식
							<input type="radio" name='m_category' id='m_category' value ='2' <c:if test="${fn:trim(board.m_category) eq '2'}">checked="checked"</c:if>>점심
							<input type="radio" name='m_category' id='m_category' value ='3' <c:if test="${fn:trim(board.m_category) eq '3'}">checked="checked"</c:if>>오후 간식
							<input type="radio" name='m_category' id='m_category' value ='4' <c:if test="${fn:trim(board.m_category) eq '4'}">checked="checked"</c:if>>저녁
						</td>
					</tr>
					<tr><td colspan="2">내용</td></tr>
					<tr><td colspan="2">
						<textarea name="m_etc" id="m_etc" cols="30" rows="10">
							${board.m_etc}
						</textarea>
						</td></tr>
				</tbody>
				<tfoot>
					<tr><td colspan="2" align="center">
						<a href="#" onclick="updateBoard()"> 수정 </a> 
						<a href="#" onclick="resetBoard()"> 다시 쓰기</a> 
						<a href="#" onclick="listBoard()">목 록</a>
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>