<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.kdn.model.domain.*"  %>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core"%> 
<jsp:useBean 	id="pageBean"         class="com.kdn.model.domain.PageBean" 
				scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Welcome</title>
	<link  rel="stylesheet" type="text/css" href="css/style1.css"  />
<style type="text/css">
.whole {
	width: 1000px;
	overflow : auto;
	border: 0px solid gray;
	margin-top: 50px;
}

.sidemenu {
	float: left;
	width: 250px;
	font-size: 15px;
	text-align: left;
	line-height : 35px;
	border: 0px solid gray;
}

.sidemenu>ul>li>a {
	width : 100%;
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
	frm.action="listRequest.do";
	frm.submit();
}
function getRequest(r_id){
	//input 양식의 hidden으로 선언된 page에 요청된 페이지 정보 셋팅 
	document.getElementById("r_id").value=r_id;
	var frm = document.getElementById("frm");
	frm.action="searchRequest.do";
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

<div class="container_12">
	<div class="grid_3 bot-1">
		<ul class = "font">
			<li><a href="listRequest.do" id="nav_int_menu_li1">게시글 목록</a></li>
			<li><a href="insertRequestForm.do" id="nav_int_menu_li2">글쓰기</a></li>
		</ul>
	</div>

	<div class="grid_9">
		<form id="frm" >
			<input type="hidden" id="pageNo"  name="pageNo"  value="1"/>
			<input type="hidden" id="r_id"  name="r_id"/>
			<table align="center">
			<tr><th colspan="3"> 게시글 목록</th></tr>
	  	<tr align="center">
	  	 <td colspan="3" height="100" align="center">
	  	  <select  name="key" id="key">
	  		<option value="all"     >-----all-----</option>
	  		<option value="title"   <%=pageBean.getKey("title")%>  >제목</option>
	  		<option value="contents" <%=pageBean.getKey("contents")%>  >내용</option>
	  	  </select>
	  	  <input type="text" id="word" name="word" value="${pageBean.word}"/>
	  	  <a href="#" onclick="pagelist(1)">검색</a> &nbsp;&nbsp;&nbsp;
	  	 </td>
	  	</tr>
	  	<tr align="center">
	  	  <td width="100"> 번호</td><td width="200">제목</td><td  width="100">게시일</td>
	  	  <c:forEach  var="request" items="${list}">
	  	  <tr>
			 <td>${request.r_id}</td>  	  
			 <td><a href="#" onclick="getRequest(${request.r_id})"> ${request.r_title}</a></td>
			<%--  <td><a href="searchRequest.do?r_id=${request.r_id}"> ${request.r_title}</a></td>   --%>	  
			 <td>${request.r_date}</td>  	
		  </tr>  
	  	  </c:forEach>
	  	</tr>
		</table>
			<div class="bottom"><center>${pageBean.pagelink } </center></div>
		</form>
	</div>
	
</div>
</body>
</html>
