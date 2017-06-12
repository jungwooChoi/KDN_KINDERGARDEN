<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link  rel="stylesheet" type="text/css" href="css/basic.css"/>
<link href="css/bootstrap.css" rel="stylesheet">
<script type="text/javascript">
	function init(){
		var writeSchedule = document.getElementById("writeSchedule");
		writeSchedule.style.display="none";
		var viewSchedule = document.getElementById("viewSchedule");
		viewSchedule.style.display="";
	}
	function updateForm(){
		var writeSchedule = document.getElementById("writeSchedule");
		writeSchedule.style.display="";
		document.getElementById("viewSchedule").style.display="none";
	}
	function updateSchedule(){
		var frm = document.getElementById("updatefrm");
		frm.action="updateSchedule.do";
		frm.submit();
	}
	function deleteSchedule(s_id){
		document.getElementById("s_id").value=s_id;
		var frm = document.getElementById("frm");
		frm.action="deleteSchedule.do";
		frm.submit();
	}
	function listSchedule(){
		location.href="listSchedule.do?<%=request.getQueryString()%>";
	}
	function resetSchedule(){
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
<div class="row">
		<div class="col-lg-3 col-md-3 col-sm-4">
			<div class="list-group table-of-contents">
				<a class="list-group-item" href="listSchedule.do">주간 메뉴</a> 
				<a class="list-group-item" href="insertScheduleForm.do">메뉴 작성</a>
			</div>
		</div>
	<div class="grid_9">
    <c:if test="${msg != null }"> 
    	<script type="text/javascript">  alert('${msg}');</script>
    </c:if>
	<div class="main" id="viewSchedule" style="display:none">
	 	<form id="frm"  >
	 	    <input type ="hidden" name="s_id"  id="s_id" />
	 	    
			<table border="1" align="center">
				<tbody>
					<tr><td><label for="title">제목</label></td>
					    <td>${schedule.s_title}</td>
					</tr>
					<tr><td colspan="2">내용 &nbsp;&nbsp;글쓴이:${schedule.s_t_id}
										&nbsp;&nbsp; 게시일:${schedule.s_date}</td></tr>
					<tr><td colspan="2"  valign="top" height="200">
						<pre>${schedule.s_contents }</pre>							
						</td></tr>
				</tbody>
				<tfoot>
					<tr><td colspan="2" align="center">
						<a href="#" onclick="listSchedule('frm')">목록</a>
						<c:if test="${schedule.s_t_id == id }">
							<a href="#" onclick="updateForm(${schedule.s_id})">수정</a>
							<a href="#" onclick="deleteSchedule(${schedule.s_id})">삭제</a>
						</c:if>
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
	<div class="main" id="writeSchedule" style="display:none">
	 	<form  id="updatefrm">
	 	    <input type ="hidden" name="s_id"  id="s_id"  value="${schedule.s_id}"/>
	 	    <input type ="hidden" name="s_t_id"  id="s_t_id"  value="${schedule.s_t_id}"/>
			<table border="1" align="center">
				<caption>게시글 작성</caption>
				<tbody>
					<tr><td><label for="title">제목</label></td>
					    <td><input type="text" name="s_title" id="s_title" value="${schedule.s_title}"/></td>
					</tr>
					<tr><td colspan="2">내용</td></tr>
					<tr><td colspan="2">
						<textarea name="s_contents" id="s_contents" cols="30" rows="10">
							${schedule.s_contents}
						</textarea>
						</td></tr>
				</tbody>
				<tfoot>
					<tr><td colspan="2" align="center">
						<a href="#" onclick="updateSchedule()"> 수정 </a> 
						<a href="#" onclick="resetSchedule()"> 다시 쓰기</a> 
						<a href="#" onclick="listSchedule()">목 록</a>
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