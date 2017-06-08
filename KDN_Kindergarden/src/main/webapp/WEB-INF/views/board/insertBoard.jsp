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
			<li><a href="listBoard.do" id="nav_int_menu_li2">게시글 목록</a></li>
			<li><a href="#" id="nav_int_menu_li1">글쓰기</a></li>
		</ul>
	</div>

	<div class="grid_9">
		<form method="post" action="insertBoard.do"  >
			<table align="center" width="300">
					<tr><th colspan="2"> 게시글 작성 </th></tr>
					<tr height="50"><td><label for="title">제목</label></td>
					    <td><input type="text" name="b_title" id="b_title"/></td>
					</tr>
					<tr height="50"><td><label for="title">아이디</label></td>
					    <td><input type="text" name="b_t_id" id="b_t_id"/></td>
					</tr>
					<tr><td colspan="2"><label for="contents">내용</label></td></tr>
					<tr><td colspan="2" align="center">
					    <textarea name="b_contents" id="b_contents" cols="30" rows="5"></textarea>
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