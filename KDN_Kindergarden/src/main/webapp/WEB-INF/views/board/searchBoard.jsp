<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/bootstrap.css" rel="stylesheet"/>
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
		frm.action="updateBoard.do";
		frm.submit();
	}
	function deleteBoard(b_id){
		document.getElementById("b_id").value=b_id;
		var frm = document.getElementById("frm");
		frm.action="deleteBoard.do";
		frm.submit();
	}
	function listBoard(){
		location.href="listBoard.do?<%=request.getQueryString()%>";
	}
	function resetBoard(){
		var frm = document.getElementById("updatefrm");
		frm.title.value="";
		frm.content.value="";
	}
	
</script>
</head>
<body onload="init()">
	<div class="row">
		<div class="col-lg-3 col-md-3 col-sm-4">
				<a class="list-group-item" href="listBoard.do">게시글 목록</a> 
				<a class="list-group-item" href="insertBoardForm.do">글 쓰기</a>
		</div>
	
    <c:if test="${msg != null }"> 
    	<script type="text/javascript">  alert('${msg}');</script>
    </c:if>
	<div class="col-lg-9" id="viewBoard" style="display:none">
	 	<form id="frm"  >
	 	    <input type ="hidden" name="b_id"  id="b_id" />
	 	    
			<table class="table table-striped table-hover">
				<tbody>
					<tr>
						<td style="width: 70px;">
							<label for="col-lg-2 control-label">제목</label>
						</td>
					    <td>${board.b_title}</td>
					</tr>
					<tr>
						<td>글쓴이</td>
						<td>${board.t_name}</td>
					</tr>
					<tr>
						<td>구분</td>
						<td>
							<c:if test="${board.b_o_id!=0}">
								<td align="center">${board.c_name}</td>
							</c:if>
							<c:if test="${board.b_o_id==0}">
								<td align="center">전체 공지</td>
							</c:if>
						</td>
					</tr>
					<tr><td>게시일</td><td>${board.b_date}</td></tr>
					<tr style="border-bottom: none;" co>
						<td class="form-group" style="border-bottom: none;" rowspan="3">
							<label for="contents">내용</label>
						</td>
						<td rowspan="3">
						<br>
						<div  style="background-color: DFD0D0;">
					   		<p>${board.b_contents}</p>
					    </div>
						</td>
					</tr>
					<tr style="border-bottom: none;">
						<td class="form-group" style="border-bottom: none;">
							<label for="contents">기타사항</label>
						</td>
						<td >
							${board.b_etc}
						</td>
					</tr>
					
				</tbody>
			</table>
				<div align="center">
						<a href="#" onclick="listBoard('frm') " class="btn btn-default">목록</a>
						<c:if test="${board.b_t_id == id }">
							<a href="#" onclick="updateForm(${board.b_id})" class="btn btn-primary">수정</a>
							<a href="#" onclick="deleteBoard(${board.b_id})" class="btn btn-danger">삭제</a>
						</c:if>
				</div>
		</form>
	</div>
	<div class="col-lg-9" id="writeBoard" style="display:none">
	 	<form  id="updatefrm">
	 	    <input type ="hidden" name="b_id"  id="b_id"  value="${board.b_id}"/>
	 	    <input type ="hidden" name="b_t_id"  id="b_t_id"  value="${board.b_t_id}"/>
			<div class="col-lg-9">
			<table class="table table-striped table-hover">
				<caption>게시글 작성</caption>
				<tbody>
					<tr><td><label for="col-lg-2 control-label">제목</label></td>
					    <td><div class="col-lg-10"><input type="text" name="b_title" id="b_title" value="${board.b_title}" class="form-control"/></div></td>
					</tr>
					<tr><td colspan="2">내용</td></tr>
					<tr>
						<td colspan="2">
							<div class="col-lg-10">
								<textarea name="b_contents" id="b_contents" cols="30" rows="10" class="form-control">
								${board.b_contents}
								</textarea>
							</div>
						</td>
					</tr>
					<tr>
						<td>비고</td>
						<td>${board.b_etc}</td>
					</tr>
				</tbody>
				<tfoot>
						<tr>
							<td colspan="2" align="center" >
							<a href= "#" onclick="updateBoard()" class="btn btn-primary"> 수정 </a> <a href="#"
								onclick="resetBoard()" class="btn btn-default"> 다시 쓰기</a> <a href="#"
								onclick="listBoard()" class="btn btn-default">목 록</a></td>
							</tr>
				</tfoot>
			</table>
			</div>
		</form>
	</div>
	</div>
</body>
</html>