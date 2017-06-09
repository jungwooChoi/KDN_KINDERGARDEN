<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.10.1.js"></script>
<style type="text/css">
.whole {
	position: relative;
	margin: 0 auto;
	width: 1200px;
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

</style>
<script type="text/javascript">
$(function(){
	$("#nav_int_menu_li1").css("color","#4C4C4C");
	$("#nav_int_menu_li1").css("font-weight","bold");
	$(".nav_int_content1").show();
	$(".nav_int_content2").hide();
	
	$("#nav_int_menu_li1").click(function(){
		$("#nav_int_menu_li1").css("color","#4C4C4C");
		$("#nav_int_menu_li1").css("font-weight","bold");
		$(".nav_int_content1").show();
		$(".nav_int_content2").hide();
	});
	$("#nav_int_menu_li2").click(function(){
		$("#nav_int_menu_li1").css("color","#767676");
		$("#nav_int_menu_li1").css("font-weight","normal");
		$(".nav_int_content1").hide();
		$(".nav_int_content2").show();
	});
	
});
</script>
</head>
<body>
<div class="container_12">
	<div class="grid_3 bot-1">
		<ul class = "font">
			<li><a href="updatemenuBoard.do" id="nav_int_menu_li1">메뉴 작성</a></li>
			<li><a href="deletemenuBoard.do" id="nav_int_menu_li2">메뉴 삭제</a></li>
		</ul>
	</div>
	<div class="grid_9">
		<form method="post" action="insertmenuBoard.do"  >
			<table align="center" width="300">
					<tr><th colspan="2"> 메뉴 작성 </th></tr>
					<tr height="50"><td><label for="title">날짜</label></td>
					    <td><input type="text" name="m_date" id="m_date"/></td>
					</tr>
					<tr height="50"><td><label for="title">시간</label></td>
					    <td><input type="text" name="m_category" id="m_category"/></td>
					</tr>
					<tr height="50"><td><label for="title">선생님아이디</label></td>
					    <td><input type="text" name="m_t_id" id="m_t_id"  value="${id}" readonly="readonly"/></td>
					</tr>
					<tr><td colspan="2"><label for="contents">식단</label></td></tr>
					<tr><td colspan="2" align="center">
					    <textarea name="m_etc" id="m_etc" cols="30" rows="5"></textarea>
					</td></tr>
					<tr><td colspan="2" align="center">
						<input type="submit" value="작성"/>
						<input type="reset" value="취소"/>
					</td></tr>
			</table>
		</form>
	</div>
	
</div>
</body>
</html>