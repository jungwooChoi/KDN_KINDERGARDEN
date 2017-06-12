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
			<li><a href="introducekindergarden.do" id="nav_int_menu_li2">어린이집 소개</a></li>
			<li><a href="introduceteacher.do" id="nav_int_menu_li2">선생님 소개</a></li>
			<li><a href="introduceclass.do" id="nav_int_menu_li2">학급 소개</a></li>
		</ul>
	</div>

	<div class="grid_9">
		<form id="frm" method="post" action="introduce.do">
			
			<table width="100" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td><img src="images/introduce01.jpg" width="300" height="50"></td>
				</tr>
			</table>
			
			<table width="800" height="71" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="52">&nbsp;</td>
					<td width="760" class="text">
						<font size="3" face="맑은고딕"> </br>1. 자비로운 어린이 </br> </br>2. 예의바른 어린이  </br> </br>3. 창의적인 어린이  </br> </br></br></br>  </font>
					</td>
				</tr>
			</table>
			
			<table width="100" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td><img src="images/introduce02.jpg" width="300" height="42"></td>
				</tr>
			</table>
			
			<table width="760" height="71" border="0" cellpadding="0" cellspacing="0">
 				<tr>
 					<td width="52">&nbsp;</td>
					<td width="760" class="text" height="10">
						<font size="3" face="맑은고딕"> </br> 어린이들을 최우선적으로 생각하는 전인 교육에 목표를 두고 </br></br></font>
					</td>
				</tr>
					
				<tr>
					<td width="52">&nbsp;</td>	
					<td width="760" class="text" height="10">
					<font size="3" face="맑은고딕"> 아이들의 신체적, 사회적, 지적, 언어발달에 기여할 수 있는 경험을 제공하여 </br></br>  </font>
					</td>
				</tr>
				
				<tr>	
					<td width="52">&nbsp;</td>
					<td width="760" class="text" height="10">
					<font size="3" face="맑은고딕">유능하고 존경받는 사람으로서 자기 존중감을 발달시키며, 창의적 개발에 역점을 둡니다. </br></br></br></br>  </font>
				</tr>
			</table>
			
			<table width="100" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td><img src="images/introduce03.jpg" width="300" height="40"></td>
				</tr>
			</table>
			
			<table width="760" height="71" border="0" cellpadding="0" cellspacing="0">
 				<tr>
 					<td width="52">&nbsp;</td>
					<td width="760" class="text" height="10">
						<font size="3" face="맑은고딕"> </br><strong>1.</strong>
						안전하고 쾌적한 교육환경을 제공하여 올바른 인성을 발달시키도록 도와줍니다. </br></br></font>
					</td>
				</tr>
					
				<tr>
					<td width="52">&nbsp;</td>	
					<td width="760" class="text" height="10">
					<font size="3" face="맑은고딕"><strong>2.</strong> 
					다양한 프로그램을 제공하여 우리 것을 소중히 여기는 어린이로 키웁니다.</br></br>  </font>
					</td>
				</tr>
				
				<tr>	
					<td width="52">&nbsp;</td>
					<td width="760" class="text" height="10">
					<font size="3" face="맑은고딕"><strong>3.</strong>
						어린이의 발달적 특성을 고려한 적절한 교육을 실시하여 교육의 효과를 최대화합니다.</br></br></br></br></font>
					</td>
				</tr>
			</table>
			
		</form>
	</div>
	
</div>
</body>
</html>