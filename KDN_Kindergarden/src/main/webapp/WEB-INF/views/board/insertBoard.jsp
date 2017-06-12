<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>
<script type="text/javascript" src="js/jquery-1.10.1.js"></script>
<link href="css/bootstrap.css" rel="stylesheet">
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
	<div class="row">
		<div class="col-lg-3 col-md-3 col-sm-4">
				<a class="list-group-item" href="listBoard.do">게시글 목록</a> 
				<a class="list-group-item" href="insertBoardForm.do">글 쓰기</a>
		</div>

	<div class="col-lg-9">
		<form method="post" action="insertBoard.do"  >
			<table class="table table-striped table-hover">
					<tr><th colspan="2"><h1> 게시글 작성 </h1></th></tr>
					<tr height="50" class="form-group"><td><label for="col-lg-2 control-label">제목</label></td>
					    <td>
					    <div class="col-lg-10">
					    <input type="text" name="b_title" id="b_title"/>
					    </div></td>
					</tr>
					<tr height="50" class="form-group"><td><label for="col-lg-2 control-label">아이디</label></td>
					    <td><div class="col-lg-10"><input type="text" name="b_t_id" id="b_t_id" value = "${id}" readonly="readonly"/></div></td>
					</tr>
					<tr><td colspan="2" class="form-group"><label for="contents">내용</label></td></tr>
					<tr><td colspan="2" align="center"><div class="col-lg-10">
					    <textarea name="b_contents" id="b_contents" cols="30" rows="5" class="form-control"></textarea></div>
					</td></tr>
			</table>
				<div class="form-group">
					<div class="col-lg-10">
					 <center>
						<button type="submit" class="btn btn-primary">작성</button>
						<button type="reset" class="btn btn-default">재설정</button>
					</center>
					</div>
				</div>
		</form>
	</div>
</div>
</body>
</html>