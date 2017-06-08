<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	
	$(function(){
		$("#nav_int_menu_li1").css("color","#4C4C4C");
		$("#nav_int_menu_li1").css("font-weight","bold");	
	});
</script>
</head>
<body onload="init()">
<div class="container_12">
	<div class="grid_3 bot-1">
		<ul class = "font">
			<li><a href="listBoard.do" id="nav_int_menu_li1">게시글 목록</a></li>
			<li><a href="insertBoardForm.do" id="nav_int_menu_li2">글쓰기</a></li>
		</ul>
	</div>

	<div class="grid_9">
    <c:if test="${msg != null }"> 
    	<script type="text/javascript">  alert('${msg}');</script>
    </c:if>
	<div class="main" id="viewBoard" style="display:none">
	 	<form id="frm"  >
	 	    <input type ="hidden" name="b_id"  id="b_id" />
	 	    
			<table border="1" align="center">
				<tbody>
					<tr><td><label for="title">제목</label></td>
					    <td>${board.b_title}</td>
					</tr>
					<tr><td colspan="2">내용 &nbsp;&nbsp;글쓴이:${board.b_t_id}
										&nbsp;&nbsp; 게시일:${board.b_date}</td></tr>
					<tr><td colspan="2"  valign="top" height="200">
						<pre>${board.b_contents }</pre>							
						</td></tr>
				</tbody>
				<tfoot>
					<tr><td colspan="2" align="center">
						<a href="#" onclick="listBoard('frm')">목록</a>
						<c:if test="${board.b_t_id == id }">
							<a href="#" onclick="updateForm(${board.b_id})">수정</a>
							<a href="#" onclick="deleteBoard(${board.b_id})">삭제</a>
						</c:if>
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
	<div class="main" id="writeBoard" style="display:none">
	 	<form  id="updatefrm">
	 	    <input type ="hidden" name="b_id"  id="b_id"  value="${board.b_id}"/>
	 	    <input type ="hidden" name="b_t_id"  id="b_t_id"  value="${board.b_t_id}"/>
			<table border="1" align="center">
				<caption>게시글 작성</caption>
				<tbody>
					<tr><td><label for="title">제목</label></td>
					    <td><input type="text" name="b_title" id="b_title" value="${board.b_title}"/></td>
					</tr>
					<tr><td colspan="2">내용</td></tr>
					<tr><td colspan="2">
						<textarea name="b_contents" id="b_contents" cols="30" rows="10">
							${board.b_contents}
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
	</div>
	
</div>
</body>
</html>