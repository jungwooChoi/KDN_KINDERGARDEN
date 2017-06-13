<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean 	id="pageBeanGallery"         class="com.kdn.model.domain.PageBeanGallery" 
				scope="request"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link href="css/bootstrap.css" rel="stylesheet">
	<script src="js/bootstrap.js"></script>

	<title>KDN 어린이집  활동 Gallery</title>
	<script type="text/javascript">
	//조건 검색, 페이지 번호로 게시글 요청을 위한 메서드  
	function pagelist(cpage){
		//input 양식의 hidden으로 선언된 page에 요청된 페이지 정보 셋팅 
		document.getElementById("pageNo").value=cpage;
		var frm = document.getElementById("frm");
		frm.action="gallery.do";
		frm.submit();
	}
	//게시글 번호나 타이틀을 클릭하면 해당 게시글 요청을 위한 메서드 
	function getBoard(sfile, no, title){
		document.getElementById("modalImage").src=sfile;
		
		document.getElementById("no").value = no;
		document.getElementById("modalGalleryTitle").innerHTML = "#" + no + "  ";
		document.getElementById("modalGalleryTitle").innerHTML += title;
	}
	
	function deleteGallary(){
		var frm = document.getElementById("frm");
		frm.action="deleteGallery.do";
		frm.submit();
	}

</script>
</head>
<body>
	<div class="row">
		<div class="col-lg-3 col-md-3 col-sm-4">
				<a class="list-group-item" href="gallery.do">사진 관리</a>
				<a class="list-group-item" href="insertGalleryForm.do">사진 올리기</a>
		</div>
 	<div class="col-lg-9">
		<form id="frm">
				<input type="hidden" id="pageNo" name="pageNo" value="1" /> 
				<input type="hidden" id="no"  name="no" />
			<div class="bottom">
				<center>${pageBeanGallery.pagelink }</center>
			</div>
			<div class="gallery2">
				<c:forEach var="p" items='${activelist}'>
					<div>
						<a href="#" onclick="getBoard( 'upload_active/${p.af_sfilename}', ${p.af_a_id}, '${p.af_a_title}')" data-toggle="modal" data-target="#myModal"> 
						<img src="upload_active/${p.af_sfilename}"/>
						</a>
					</div>
				</c:forEach>
			</div>
				<div class="modal" id="myModal">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="modalGalleryTitle" ></h4>
							</div>
							<div class="modal-body">
									<img id ="modalImage" style ="width: 100%"/>
							</div>							
							<div class="modal-footer" align="center">
								<button type="button" class="btn btn-default" data-dismiss="modal">목록</button>
								<button type="button" class="btn btn-danger" onclick="deleteGallary()" data-dismiss="modal">삭제</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
