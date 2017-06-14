<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,com.kdn.model.domain.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="pageBean" class="com.kdn.model.domain.PageBean"
	scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link href="css/bootstrap.css" rel="stylesheet">
<style type="text/css">
.whole {
	width: 1000px;
	overflow: auto;
	border: 0px solid gray;
	margin-top: 50px;
}

.sidemenu {
	float: left;
	width: 250px;
	font-size: 15px;
	text-align: left;
	line-height: 35px;
	border: 0px solid gray;
}

.sidemenu>ul>li>a {
	width: 100%;
	color: #696969;
	cursor: pointer;
	border: 0px solid gray;
}

.content {
	float: left;
	width: 750px;
	margin-left: 50px;
	border: 0px solid gray;
}
}
</style>
<script type="text/javascript">

//조건 검색, 페이지 번호로 게시글 요청을 위한 메서드  
function pagelist(cpage){
	//input 양식의 hidden으로 선언된 page에 요청된 페이지 정보 셋팅 
	document.getElementById("pageNo").value=cpage;
	var frm = document.getElementById("frm");
	frm.action="listBoard.do";
	frm.submit();
}
function getBoard(b_id){
	//input 양식의 hidden으로 선언된 page에 요청된 페이지 정보 셋팅 
	document.getElementById("b_id").value=b_id;
	var frm = document.getElementById("frm");
	frm.action="searchBoard.do";
	frm.submit();
}
//게시글 번호나 타이틀을 클릭하면 해당 게시글 요청을 위한 메서드 

$(function(){
	$("#nav_int_menu_li1").css("color","#4C4C4C");
	$("#nav_int_menu_li1").css("font-weight","bold");
	
/* 	$("#nav_int_menu_li1").click(function(){
		$("#nav_int_menu_li1").css("color","#4C4C4C");
		$("#nav_int_menu_li1").css("font-weight","bold");
	});
	
	$("#nav_int_menu_li2").click(function(){
		$("#nav_int_menu_li1").css("color","#767676");
		$("#nav_int_menu_li1").css("font-weight","normal");
	}); */
	
});
</script>
</head>
<body>
	<div class="row">
		<div class="col-lg-3 col-md-3 col-sm-4">
				<a class="list-group-item" href="listBoard.do">게시글 목록</a> 
				<a class="list-group-item" href="insertBoardForm.do">글 쓰기</a>
		</div>
	<div class="col-lg-9">
			<form id="frm">
				<input type="hidden" id="pageNo" name="pageNo" value="1" /> <input
					type="hidden" id="b_id" name="b_id" />
				<table class="table table-striped table-hover">
					<tr>
						<th colspan="4"><h1>게시글 목록</h1></th>
					</tr>
					<tr>
						<td colspan="3" height="100" align="center">
							<div class="form-group">
									<select name="key" id="key" class="form-control">
										<option value="all">-----all-----</option>
										<option value="title" <%=pageBean.getKey("title")%>>제목</option>
										<option value="teacher" <%=pageBean.getKey("teacher")%>>선생님</option>
										<option value="classes" <%=pageBean.getKey("classes")%>>반</option>
									</select>
									<input type="text" id="word" name="word"
										value="${pageBean.word}" class="form-control" />
							</div>
							</td>
							<td height="100">
									<a href="#" onclick="pagelist(1)" class="btn btn-default">검색</a>
							</td>
					</tr>
					<tr align="center">
						<td width="100">번호</td>
						<td width="200">제목</td>
						<td width="200">작성자</td>
						<td width="100">게시일</td>
						<td width="100">반</td>
						<c:forEach var="board" items="${list}">
							<tr align="center">
								<td align="center">${board.b_id}</td>
								<td align="center"><a href="#" onclick="getBoard(${board.b_id})">
										${board.b_title}</a></td>
								<td align="center">${board.t_name}</td>
								<td align="center">${board.b_date}</td>
								<c:if test="${board.b_o_id!=0}">
									<td align="center">${board.c_name}</td>
								</c:if>
								<c:if test="${board.b_o_id==0}">
									<td align="center">전체 공지</td>
								</c:if>
							</tr>
						</c:forEach>
					</tr>
					<tr align="center">
						<td colspan="4">
							<div class="bottom">
								${pageBean.pagelink }
							</div>
						</td>
					</tr>
				</table>
				
			</form>
		</div>
		</div>
</body>
</html>
