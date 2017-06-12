<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/bootstrap.css" rel="stylesheet">
<title>사진 올리기</title>
<script type="text/javascript">
$(function(){
	$("#addFile").click(addFileForm);
});
var count=0;   //file form index
function addFileForm(){
	var html="<div id='item_"+count+"'>"
	html+="<input type='file' name='fileup' class= 'form-group'  />";
	html+="<input type='button' value='삭제' onclick='removeForm("+count+")'/></div>";
	count++;
	//html=$("#content").html()+html;
	//$("#content").html(html);
	$("#fileUpForm").append(html);
}
function removeForm(count){
	var item = document.getElementById('item_'+count);
	if(item !=null) item.parentNode.removeChild(item);
}
</script>
</head>
<body>
	<div class="row">
		<div class="col-lg-3 col-md-3 col-sm-4">
			<div class="list-group table-of-contents">
				<a class="list-group-item" href="gallery.do">사진 관리</a>
				<a class="list-group-item" href="insertGalleryForm.do">사진 올리기</a>
			</div>
		</div>
		<div style="margin: 10px auto; width: 50%; background: white; height: 700px">
		<form method="post" action="insertGallery.do" enctype="multipart/form-data" >
		<table class="table table-striped table-hover">
			<tr><th colspan="2"> <h1>게시글 작성</h1> </th></tr>
			<tr height="50" class="form-group"><td><label for="col-lg-2 control-label">제목</label></td>
			    <td><div class="col-lg-10"><input type="text" name="a_title" id="a_title" class="form-control"/></div></td>
			</tr>
			<tr height="50" class="form-group"><td><label for="col-lg-2 control-label">아이디</label></td>
			    <td><div class="col-lg-10"><input type="text" class="form-control" name="a_t_id" id="a_t_id"  disabled="disabled" value="${id}"/></div></td>
			</tr>
			<tr height="50" class="form-group"><td><label for="col-lg-2 control-label">업로드할 파일</label></td>
			    <td>
			    	<div class="col-lg-10">
			    	<input type="button" class="btn btn-primary" name="addFile" id="addFile" value="파일 추가"/>
			    	</div>
			    </td>
			</tr>
			<tr height="50" class="form-group"><td colspan="2" id="fileUpForm"> </td>
			</tr>
			<tr class="form-group"><td colspan="2"><label for="col-lg-2 control-label">내용</label></td></tr>
			<tr><td colspan="2">
			    <textarea name="a_contents" class="form-control" id="a_contents" cols="30" rows="5"></textarea>
			</td></tr>
		</table>
			<div class="form-group">
				<div class="col-lg-10 col-lg-offset-2">
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