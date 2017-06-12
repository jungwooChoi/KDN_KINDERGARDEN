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
		var writeRequest = document.getElementById("writeRequest");
		writeRequest.style.display="none";
		var viewRequest = document.getElementById("viewRequest");
		viewRequest.style.display="";
	}
	function updateForm(){
		var writeRequest = document.getElementById("writeRequest");
		writeRequest.style.display="";
		document.getElementById("viewRequest").style.display="none";
	}
	function updateRequest(){
		var frm = document.getElementById("updatefrm");
		frm.action="updateRequest.do";
		frm.submit();
	}
	function deleteRequest(r_id){
		document.getElementById("r_id").value=r_id;
		var frm = document.getElementById("frm");
		frm.action="deleteRequest.do";
		frm.submit();
	}
	function listRequest(){
		location.href="listRequest.do?<%=request.getQueryString()%>";
	}
	function resetRequest(){
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
			<li><a href="listRequest.do" id="nav_int_menu_li1">게시글 목록</a></li>
			<li><a href="insertRequestForm.do" id="nav_int_menu_li2">글쓰기</a></li>
		</ul>
	</div>

	<div class="grid_9">
    <c:if test="${msg != null }"> 
    	<script type="text/javascript">  alert('${msg}');</script>
    </c:if>
	<div class="main" id="viewRequest" style="display:none">
	 	<form id="frm"  >
	 	    <input type ="hidden" name="r_id"  id="r_id" />
	 	    
			<table border="1" align="center">
				<tbody>
					<tr><td><label for="title">제목</label></td>
					    <td>${request.r_title}</td>
					</tr>
					<tr><td colspan="2">내용 &nbsp;&nbsp;글쓴이:${request.r_t_id}
										&nbsp;&nbsp; 게시일:${request.r_date}</td></tr>
					<tr><td colspan="2"  valign="top" height="200">
						<pre>${request.r_contents }</pre>							
						</td></tr>
				</tbody>
				<tfoot>
					<tr><td colspan="2" align="center">
						<a href="#" onclick="listRsequest('frm')">목록</a>
						<c:if test="${request.r_t_id == id }">
							<a href="#" onclick="updateForm(${request.r_id})">수정</a>
							<a href="#" onclick="deleteRequest(${request.r_id})">삭제</a>
						</c:if>
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
	<div class="main" id="writeRequest" style="display:none">
	 	<form  id="updatefrm">
	 	    <input type ="hidden" name="r_id"  id="r_id"  value="${request.r_id}"/>
	 	    <input type ="hidden" name="r_t_id"  id="r_t_id"  value="${request.r_t_id}"/>
			<table border="1" align="center">
				<caption>게시글 작성</caption>
				<tbody>
					<tr><td><label for="title">제목</label></td>
					    <td><input type="text" name="r_title" id="r_title" value="${request.r_title}"/></td>
					</tr>
					<tr><td colspan="2">내용</td></tr>
					<tr><td colspan="2">
						<textarea name="r_contents" id="r_contents" cols="30" rows="10">
							${request.r_contents}
						</textarea>
						</td></tr>
				</tbody>
				<tfoot>
					<tr><td colspan="2" align="center">
						<a href="#" onclick="updateRequest()"> 수정 </a> 
						<a href="#" onclick="resetRequest()"> 다시 쓰기</a> 
						<a href="#" onclick="listRequest()">목 록</a>
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