<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/bootstrap.css" rel="stylesheet">
<title>사진 올리기</title>
<script type="text/javascript">
	$(function() {
		$("#addFile").click(addFileForm);
	});
	var count = 0; //file form index
	function addFileForm() {
		var html = "<div id='item_"+count+"'>"
		html += "<input type='file' name='fileup' class= 'form-group'  />";
		html += "<input type='button' value='삭제' onclick='removeForm(" + count
				+ ")'/></div>";
		count++;
		//html=$("#content").html()+html;
		//$("#content").html(html);
		$("#fileUpForm").append(html);
	}
	function removeForm(count) {
		var item = document.getElementById('item_' + count);
		if (item != null)
			item.parentNode.removeChild(item);
	}
</script>
</head>
<body>
	<div class="row">
		<div class="col-lg-3 col-md-3 col-sm-4">
			<a class="list-group-item" href="menu.do">주간 메뉴</a> <a
				class="list-group-item" href="insertmenuBoardForm.do">메뉴 작성</a> <a
				class="list-group-item" href="menuGallery.do">메뉴 사진</a> <a
				class="list-group-item" href="insertMenuGalleryForm.do">메뉴 사진
				업로드</a>
		</div>
		<div class="col-lg-9">
			<form method="post" action="insertMenuGallery.do"
				enctype="multipart/form-data">
				<table class="table table-striped table-hover">
					<tr>
						<th colspan="2">
							<h1>메뉴 사진 업로드</h1>
						</th>
					</tr>
					<tr height="50" class="form-group">
						<td><label for="col-lg-2 control-label">제목</label></td>
						<td><div class="col-lg-10">
								<input type="text" name="mf_title" id="mf_title"
									class="form-control" />
							</div></td>
					</tr>
					<tr height="50" class="form-group">
						<td><label for="col-lg-2 control-label">아이디</label></td>
						<td><div class="col-lg-10">
								<input type="text" class="form-control" name="mf_t_id"
									id="mf_t_id" disabled="disabled" value="${id}" />
							</div></td>
					</tr>
					<tr height="50" class="form-group">
						<td><label for="col-lg-2 control-label">날짜</label></td>
						<td>
							<div class="col-lg-10">
								<input type="date" name="mf_date" id="mf_date"
									class="form-control" />
							</div>
						</td>
					</tr>
					<tr height="50" class="form-group">
						<td><label for="col-lg-2 control-label">시간</label></td>
						<td>
							<div class="col-lg-10">
								<select name="mf_category" id="mf_category" class="form-control">
									<option value="1" selected="selected">오전 간식</option>
									<option value="2">점심</option>
									<option value="3">오후 간식</option>
									<option value="4">저녁</option>
								</select>
							</div>
						</td>
					</tr>
					<tr>
						<td class="form-group"><label for="col-lg-2 control-label">식단</label></td>
						<td class="form-group">
							<div class="col-lg-10">
								<textarea class="form-control" name="mf_etc" id="mf_etc"
									cols="30" rows="5"></textarea>
							</div>
						</td>
					</tr>
					<tr>
						<td>
						</td>
						<td>
							 <input type="file" name="fileup" id="fileup"/>
						</td>
					</tr>
					<tr>
						<td class="form-group" colspan="2" align="center">
							<div class="col-lg-10">
									<button type="submit" class="btn btn-primary">작성</button>
									<button type="reset" class="btn btn-default">재설정</button>
							</div>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>