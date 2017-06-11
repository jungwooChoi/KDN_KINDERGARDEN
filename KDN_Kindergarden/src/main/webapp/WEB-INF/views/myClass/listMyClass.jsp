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
function searchMyStudent(k_p_id,k_id){
	//input 양식의 hidden으로 선언된 page에 요청된 페이지 정보 셋팅 
	document.getElementById("k_p_id").value=k_p_id;
	document.getElementById("k_id").value=k_id;
	var frm = document.getElementById("frm");
	frm.action="searchMyStudent.do";
	frm.submit();
}

$(function(){
	$("#nav_int_menu_li1").css("color","#4C4C4C");
	$("#nav_int_menu_li1").css("font-weight","bold");
	
});
</script>
</head> 
<body>

<div class="container_12">
	<div class="grid_3 bot-1">
		<ul class = "font">
			<li><a href="listBoard.do" id="nav_int_menu_li1">게시글 목록</a></li>
			<li><a href="insertBoardForm.do" id="nav_int_menu_li2">글쓰기</a></li>
		</ul>
	</div>

	<div class="grid_9">
	<form id="frm" >
		<input type="hidden" id="k_p_id"  name="k_p_id"/>
		<input type="hidden" id="k_id"  name="k_id"/>
	  <div class="jumbotron">
        <h1>${cl.c_name}</h1>
        <p>총 정원 ${cnt} 중 ${cl.c_total} 명 재학 중</p>
      </div>
       <div class="row">
      	<c:forEach var="i" items="${kidList}" >
	        
	          <img style="width: 280px; height: 180px;" src="uploadKid/${i.k_img}"/> 
	          <h2>${i.k_name }</h2>
	          <p>
	          	<a class="btn btn-default" href="#" onclick="searchMyStudent(${i.k_p_id},${i.k_id})" 
	          		role="button">더보기 &raquo;</a> 
	          </p> 
	        
	        <%-- <c:if test="${i%3==0}"><br></c:if> --%>
        </c:forEach> 
      </div><!--/row--> 
    </form>
	</div>
	
</div>
</body>
</html>
