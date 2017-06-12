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

<div class="container_12">
	<div class="grid_3 bot-1">
		<ul class = "font">
			<li><a href="introducekindergarden.do" id="nav_int_menu_li2">유치원 소개</a></li>
			<li><a href="introduceteacher.do" id="nav_int_menu_li2">선생님 소개</a></li>
			<li><a href="introduceclass.do" id="nav_int_menu_li2">학급 소개</a></li>
		</ul>
	</div>

	<div class="grid_9">
		<form id="frm" method="post" action="introduceclass.do">
		
			<div>
                            <strong>햇님반</strong>
                            <p>생후 12개월부터 만 3세까지 케어하는 반으로 우리 어린이집에서 가장 어린 아이들을 케어합니다. </p>   
			</div>
							</br></br>
			<div>
                            <strong>달님반</strong>
                            <p>만 4세를 케어하는 반으로 아이들의 자아표현시작시기에 맞춘 교육을 실시합니다.</p>
			</div>
							</br></br>
			
			<div>
                            <strong>별님반</strong>
                            <p>만 5세를 케어하는 반으로 기본적인 한글 교육 및 야외 활동으로 사회성을 기를 수 있도록 케어합니다. </p>
			</div>
							</br></br>
			
			<!-- <table align="center">
				
				<tr>
			 		<td height="30" >햇님반</td>
			  	</tr>
			  	<tr>
			 		<td height="50">생후 12개월부터 만 3세까지 케어하는 반으로 우리 어린이집에서 가장 어린 아이들을 케어합니다. </td>
			  	</tr>
			  	<tr>
			 		<td height="50"></td>
			  	</tr>
			  	
			  	<tr>
			 		<td height="30">달님반</td>
			  	</tr>
			  	<tr>
			 		<td height="50">만 4세를 케어하는 반으로 아이들의 자아표현시작시기에 맞춘 교육을 실시합니다. </td>
			  	</tr>
			  	<tr>
			 		<td height="50"></td>
			  	</tr>
			  	
			  	<tr>
			 		<td height="30">별님반</td>
			  	</tr>
			  	<tr>
			 		<td height="50">만 5세를 케어하는 반으로 기본적인 한글 교육 및 야외 활동으로 사회성을 기를 수 있도록 케어합니다. </td>
			  	</tr>
			  	<tr>
			 		<td height="50"></td>
			  	</tr>
			  	
			</table> -->
		</form>
	</div>
	
</div>
</body>
</html>
