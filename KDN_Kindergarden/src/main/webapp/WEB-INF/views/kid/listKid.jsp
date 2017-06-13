<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.kdn.model.domain.*"  %>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core"%> 
<jsp:useBean 	id="pageBean"         class="com.kdn.model.domain.PageBean" 
				scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/bootstrap.css" rel="stylesheet">
<script type="text/javascript">

function getKid(k_id){
	//input 양식의 hidden으로 선언된 page에 요청된 페이지 정보 셋팅 
	document.getElementById("k_id").value=k_id;
	var frm = document.getElementById("frm");
	frm.action="searchKid.do";
	frm.submit();
}

</script>   
	<title>Welcome</title>
</head>	
<body>
<div class="page-header" id="banner">
	<div class="row">
        <div class="col-lg-3 col-md-3 col-sm-4">
	          <a class="list-group-item"  href="updateForm.do">정보 수정</a>
              <a class="list-group-item"  href="listMyClass.do">나의 클래스 관리</a>
              <a class="list-group-item"  href="#">상담 관리</a>
              <a class="list-group-item"  href="insertKidForm.do">입학 관리</a>
	    </div> 
	     
	    <div class="col-lg-9">
			<div class="well bs-component">  
				<div style="height: 100px; width:800px; background-color: #c0d8e2;
							padding: 5px; ">
			        <h2 style="color: #4531ac; font-weight: bold; margin-left: 20px;">자녀 리스트</h2>
			    </div>
				
				<form id="frm" >
					<input type="hidden" id="k_id"  name="k_id"/>
					<div class="gallery2" style="padding-left: 30px;">
						<c:forEach  var="kid" items="${list}">
							<div class="col-lg-5">
				  	  			<a href="#" onclick="getKid(${kid.k_id})" >
				      			<img src="upload_kid/${kid.k_img}"/>
					       		<h3>${kid.k_name }</h3>
					        </a>
							</div>
			  			</c:forEach>
		  			</div>
	  			</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>
<%-- 

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
	frm.action="listKid.do";
	frm.submit();
}
function getKid(k_id){
	//input 양식의 hidden으로 선언된 page에 요청된 페이지 정보 셋팅 
	document.getElementById("k_id").value=k_id;
	var frm = document.getElementById("frm");
	frm.action="searchKid.do";
	frm.submit();
}
//게시글 번호나 타이틀을 클릭하면 해당 게시글 요청을 위한 메서드 

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
			<li><a href="insertKidForm.do" id="nav_int_menu_li1">자녀 입력</a></li>
			<li><a href="listKid.do" id="nav_int_menu_li2">자녀 리스트</a></li>
		</ul>
	</div>

	<div class="grid_9">
		<form id="frm" >
			<input type="hidden" id="pageNo"  name="pageNo"  value="1"/>
			<input type="hidden" id="k_id"  name="k_id"/>
			<table align="center">
			<tr><th colspan="3"> 자녀 목록</th></tr>
	  	
	  	<tr align="center">
	  	  <td width="100"> 번호</td>
	  	  <td width="200">사      진</td>
	  	  <td width="200">이      름</td>
	  	  <td  width="100">등록날짜</td>
	  	  
	  	</tr>
	  	<c:forEach  var="kid" items="${list}">
	  	  	<c:forTokens var="khostimage" items="${kid.k_id}" delims="," begin="0" end="0">
				<div class="hosting_main_photo" style="float: left; width: 280px; height: 180px; border: 0px solid gray; margin-top: 20px; margin-left: 20px;"><img style="width: 280px; height: 180px;" src="uploadKid/${kid.k_img}"/></div>
				<div class="hosting_content" style="float: right; width: 460px; height: 180px; margin-top: 20px; margin-right: 20px; border: 0px solid gray;">
					<div class="hosting_kitchen_name" style="font-weight: bold; font-size: 14pt; color: #4B4B4B; margin-top: 30px;">${kid.k_name}</div>
					<div class="hosting_kitchen_name" style="font-weight: bold; font-size: 14pt; color: #4B4B4B; margin-top: 30px;">${kid.k_date}</div>
					<div class="hosting_btns" style="margin-top: 50px">
						<input type="button" value="상세보기" style="width: 150px; height: 35px; line-height: 35px; color: #4B4B4B; border: none; background: white; border-radius: 3px; box-shadow: 0 0 3px #A6A6A6;" onclick="getKid(${kid.k_id})">
					</div>
				</div>
			</c:forTokens>
	  	</c:forEach>
	  	</tr>
		</table>
			<div class="bottom"><center>${pageBean.pagelink } </center></div>
		</form>
	</div>
	
</div>
</body>
</html> --%>


