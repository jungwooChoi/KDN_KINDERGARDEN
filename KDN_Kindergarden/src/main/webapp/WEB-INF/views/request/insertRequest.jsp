<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/bootstrap.css" rel="stylesheet">
<style type="text/css">
.whole {
	position: relative;
	margin: 0 auto;
	width: 1200px;
	overflow: auto;
	border: 0px solid gray;
	margin-top: 50px;
}

.sidemenu {
	float: left;
	width: 250px;
	font-size: 15px;
	text-align: left;
	line-height: 35px;
	border: 0px solid gray;
}

.sidemenu>ul>li>a {
	width: 100%;
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
	$(function() {
		$("#nav_int_menu_li1").css("color", "#4C4C4C");
		$("#nav_int_menu_li1").css("font-weight", "bold");
		$(".nav_int_content1").show();
		$(".nav_int_content2").hide();

		$("#nav_int_menu_li1").click(function() {
			$("#nav_int_menu_li1").css("color", "#4C4C4C");
			$("#nav_int_menu_li1").css("font-weight", "bold");
			$(".nav_int_content1").show();
			$(".nav_int_content2").hide();
		});
		$("#nav_int_menu_li2").click(function() {
			$("#nav_int_menu_li1").css("color", "#767676");
			$("#nav_int_menu_li1").css("font-weight", "normal");
			$(".nav_int_content1").hide();
			$(".nav_int_content2").show();
		});

	});
</script>
</head>
<body>
	<div class="row">
		<div class="col-lg-3 col-md-3 col-sm-4">
			<a class="list-group-item" href="listRequest.do">게시글 목록</a> <a
				class="list-group-item" href="insertRequestForm.do">글 쓰기</a>
		</div>

		<div class="col-lg-9">
			<form method="post" action="insertRequest.do">
				<table align="center" width="300">
					<tr>
						<th colspan="2"><h1>상담글 작성</h1></th>
					</tr>
					<tr height="50" class="form-group">
						<td><label for="col-lg-2 control-label">제목</label></td>
						<td><div class="col-lg-10">
								<input type="text" name="r_title" id="r_title" />
							</div></td>
					</tr>
					<tr height="50" class="form-group">
						<td><label for="col-lg-2 control-label">아이디</label></td>
						<td><div class="col-lg-10">
								<input type="text" name="r_p_id" id="r_p_id" value="${id}" />
							</div></td>
					</tr>
					<tr>
						<td colspan="2"><label for="contents">내용</label></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><textarea name="r_contents"
								id="r_contents" cols="30" rows="5"></textarea></td>
					</tr>
					<tr height="50" class="form-group">
						<td><label for="col-lg-2 control-label">자녀</label></td>
						<c:forEach var="open" items="${klist}">
							<td><input type="radio" name="r_t_id" id="r_t_id"
								value="${open.k_id}" class="form-control" />${open.k_name}</td>
						</c:forEach>
					</tr>
					<tr height="50">
						<td><label for="col-lg-2 control-label">선생님</label></td>
						<c:forEach var="open" items="${rlist}">
							<td><input type="radio" name="r_t_id" id="r_t_id"
								value="${open.t_id}" class="form-control" />${open.t_name}</td>
						</c:forEach>
					</tr>
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