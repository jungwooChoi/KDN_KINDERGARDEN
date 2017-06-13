<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.css" rel="stylesheet">
<title>Insert title here</title>
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
	function resetBoard() {
		var frm = document.getElementById("updatefrm");
		frm.title.value = "";
		frm.content.value = "";
	}
	
	function setRadioCl(e){
		var srcEl = getSrc(e);
		var ra = srcEl.form[srcEl.name];
		for(var i = 0; i < ra.length; i++){
			if(ra[i].checked) ra[i].onpropertychange = function(e){getSrc(e).click()}
			else ra[i].onclick = function(){return false};
		}
	}
	function getSrc(e){
			return e? e.target || e.srcElement:event.srcElement;
	}
</script>
</head>
<body onload="init()">
	<c:if test="${msg != null }">
		<script type="text/javascript">
			alert('${msg}');
		</script>
	</c:if>
	<div id ="viewBoard" style="display: none" class="row">
		<div class="col-lg-3 col-md-3 col-sm-4">
				<a class="list-group-item" href="menu.do">주간 메뉴</a> <a
				class="list-group-item" href="insertmenuBoardForm.do">메뉴 작성</a>
		</div>
		<div class="col-lg-9">
			<form id="frm">
				<input type="hidden" name="m_id" id="m_id" value="${board.m_id}" />
				<input type="hidden" name="no" id="no" /> <input type="hidden"
					name="query" id="query" />
				<table class="table table-striped table-hover">
					<tbody>
						<tr>
							<td colspan="2"><div style="width:500px; font-size : 20px; font-family:'Binggrae'; font-weight: bold">글쓴이: &nbsp;${board.m_t_id}</div></td>
						</tr>
						<tr>
							<td colspan="2"><div style="width:500px; font-size : 20px; font-family:'Binggrae'; font-weight: bold">배식일:&nbsp;${board.m_date}</div></td>
						</tr>
						<tr>
							<td colspan="2"><div style="width:500px; font-size : 20px; font-family:'Binggrae'; font-weight: bold">내용</div></td>
						</tr>
						<tr>
							<td colspan="2" valign="top" height="200"><pre>${board.m_etc}</pre>
							</td>
						</tr>
					</tbody>
				</table>
				
					<div align="center">
						<a href="#"
						onclick="listBoard('frm')" class="btn btn-default">목록</a> <c:if
						test="${board.m_t_id == id }">
						<a href="#" onclick="updateForm()" class="btn btn-primary">수정</a>
						<a href="#" onclick="deleteBoard()" class="btn btn-danger">삭제</a></c:if>
					</div>
			</form>
			</div>
		</div>
		<div class="row" id="writeBoard" style="display: none">
					<div class="col-lg-3 col-md-3 col-sm-4">
				<a class="list-group-item" href="menu.do">주간 메뉴</a> <a
					class="list-group-item" href="insertmenuBoardForm.do">메뉴 작성</a>
		</div>
		<div class="col-lg-9">
			<form id="updatefrm">
				<input type="hidden" name="m_id" id="m_id" value="${board.m_id}" />
				<input type="hidden" name="m_t_id" id="m_t_id"
					value="${board.m_t_id}" />
				<table class="table table-striped table-hover">
					<tr>
						<td><h1>식단 수정</h1></td>
					</tr>
					<tbody>
						<tr>
							<td><label for="col-lg-2 control-label">배 &nbsp;식&nbsp;일</label></td>
						</tr>
						<tr>
							<td><div class="col-lg-10"><input type="date" name='m_date' id='m_date'
								value="${board.m_date}" class="form-control" ></div></td>
						<tr>
							<td><label for="col-lg-2 control-label">시간</label></td>
						</tr>
						<tr>
							<td align="left"><input type="radio" name='m_category' id='m_category'
								value='1'
								<c:if test="${fn:trim(board.m_category) eq '1'}">checked="checked"</c:if> onfocus="setRadioCl(event)">오전
								간식 <input type="radio" name='m_category' id='m_category'
								value='2'
								<c:if test="${fn:trim(board.m_category) eq '2'}">checked="checked"</c:if> onfocus="setRadioCl(event)">점심
								<input type="radio" name='m_category' id='m_category' value='3'
								<c:if test="${fn:trim(board.m_category) eq '3'}">checked="checked"</c:if> onfocus="setRadioCl(event)">오후
								간식 <input type="radio" name='m_category' id='m_category'
								value='4'
								<c:if test="${fn:trim(board.m_category) eq '4'}">checked="checked"</c:if> onfocus="setRadioCl(event)">저녁
							</td>
						</tr>
						<tr>
							<td colspan="2"><label for="col-lg-2 control-label">내용</label></td>
						</tr>
						<tr>
							<td colspan="2" ><textarea name="m_etc" id="m_etc" cols="30"
									rows="10" class="form-control" >
							${board.m_etc}
						</textarea></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2" align="center" ><a href="#"
								onclick="updateBoard()" class="btn btn-primary"> 수정 </a> <a href="#"
								onclick="resetBoard()" class="btn btn-default"> 다시 쓰기</a> <a href="#"
								onclick="listBoard()" class="btn btn-default">목 록</a></td>
						</tr>
					</tfoot>
				</table>
			</form>
			</div>
		</div>
</body>
</html>