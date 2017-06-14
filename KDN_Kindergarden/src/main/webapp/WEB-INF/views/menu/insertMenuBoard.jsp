<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/bootstrap.css" rel="stylesheet">
<title>식단 입력</title>
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
				<a class="list-group-item" href="menu.do">주간 메뉴</a> 
				<a class="list-group-item" href="insertmenuBoardForm.do">메뉴 작성</a>
				<a class="list-group-item" href="menuGallery.do">메뉴 사진</a>
				<a class="list-group-item" href="insertMenuGalleryForm.do">메뉴 사진 업로드</a>
		</div>
		<div class="col-lg-9">
				<form method="post" action="insertmenuBoard.do">
					<table class="table table-striped table-hover">
						<tr>
							<th colspan="2"><h1>메뉴 작성</h1></th>
						</tr>
						<tr height="50" class="form-group">
							<td><label for="col-lg-2 control-label">날짜</label></td>
							<td>
								<div class="col-lg-10">
									<input type="date" name="m_date" id="m_date"
										class="form-control" />
								</div>
							</td>
						</tr>
						<tr height="50" class="form-group">
							<td><label for="col-lg-2 control-label">시간</label></td>
							<td>
								<div class="col-lg-10">
									<select name="m_category" id="m_category" class="form-control">
										<option value="1" selected="selected">오전 간식</option>
										<option value="2">점심</option>
										<option value="3">오후 간식</option>
										<option value="4">저녁</option>
									</select>
								</div>
							</td>
						</tr>
						<tr height="50" class="form-group">
							<td><label for="col-lg-2 control-label">선생님아이디</label></td>
							<td><div class="col-lg-10">
									<input class="form-control" type="text" name="m_t_id"
										id="m_t_id" value="${id}" readonly="readonly" />
								</div></td>
						</tr>
						<tr>
							<td class="form-group"><label
								for="col-lg-2 control-label">식단</label></td>
							<td class="form-group">
								<div class="col-lg-10">
									<textarea class="form-control" name="m_etc" id="m_etc"
										cols="30" rows="5"></textarea>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan='2' align="center">
								<div class="form-group">
									<div class="col-lg-10">
											<button type="submit" class="btn btn-primary">작성</button>
											<button type="reset" class="btn btn-default">재설정</button>
									</div>
								</div>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>

</body>
</html>