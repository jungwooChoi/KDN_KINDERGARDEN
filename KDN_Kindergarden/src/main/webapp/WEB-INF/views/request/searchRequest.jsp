<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/basic.css" />
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
	<div class="row">
		<div class="col-lg-3 col-md-3 col-sm-4">
			<a class="list-group-item" href="listRequest.do">게시글 목록</a> <a
				class="list-group-item" href="insertRequestForm.do">글 쓰기</a>
		</div>

		<c:if test="${msg != null }">
			<script type="text/javascript">  alert('${msg}');</script>
		</c:if>
		<div class="col-lg-9" id="viewRequest" style="display: none">
			<form id="frm">
				<input type="hidden" name="r_id" id="r_id" />

				<table class="table table-striped table-hover">
					<tbody>
						<tr>
							<td><label for="col-lg-2 control-label">제목</label></td>
							<td>${request.r_title}</td>
						</tr>
						<tr>
							<td colspan="2">내용 &nbsp;&nbsp;글쓴이:${request.r_t_id}
								&nbsp;&nbsp; 게시일:${request.r_date}</td>
						</tr>
						<tr>
							<td colspan="2" valign="top" height="200"><pre>${request.r_contents }</pre>
							</td>
						</tr>
					</tbody>
				</table>
				<div align="center">
					<a href="#" onclick="listRequest('frm')" class="btn btn-default">목록</a>
					<c:if test="${request.r_t_id == id }">
						<a href="#" onclick="updateForm(${request.r_id})"
							class="btn btn-primary">수정</a>
						<a href="#" onclick="deleteRequest(${request.r_id})"
							class="btn btn-danger">삭제</a>
					</c:if>
				</div>
			</form>
		</div>
		<div class="col-lg-9" id="writeRequest" style="display: none">
			<form id="updatefrm">
				<input type="hidden" name="r_id" id="r_id" value="${request.r_id}" />
				<input type="hidden" name="r_t_id" id="r_t_id"
					value="${request.r_t_id}" />
				<div class="col-lg-9">
					<table class="table table-striped table-hover">
						<caption>게시글 작성</caption>
						<tbody>
							<tr>
								<td><label for="col-lg-2 control-label">제목</label></td>
								<td><div class="col-lg-10">
										<input type="text" class="form-control" name="r_title"
											id="r_title" value="${request.r_title}" />
									</div></td>
							</tr>
							<tr>
								<td colspan="2">내용</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="col-lg-10">
										<textarea name="r_contents" id="r_contents" cols="30"
											rows="10" class="form-control">
							${request.r_contents}
						</textarea>
									</div>
								</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="2" align="center"><a href="#"
									onclick="updateRequest()" class="btn btn-primary"> 수정 </a> 
									<a href="#" onclick="resetRequest()" class="btn btn-default"> 다시쓰기</a> 
									<a href="#" onclick="listRequest()" class="btn btn-default">목록</a>
								</td>
							</tr>
						</tfoot>
					</table>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
