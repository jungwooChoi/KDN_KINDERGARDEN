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
	<title>KDN 어린이집  활동 Gallery</title>
	<script type="text/javascript" src="/js/bPopup.js"></script>
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
	function getBoard(no){
		//input 양식의 hidden으로 선언된 no(게시글 번호)에 요청된 게시글 번호를 셋팅
		/* document.getElementById("no").value = no;
		var frm = document.getElementById("frm");
		frm.action="searchGallery.do";
		frm.submit(); */
		$('element_to_pop_up').bPopup({
            content:'image',
            contentContainer:'.content',
            loadUrl:'active/${p.af_sfilename}'
	}
	$(document).ready(function(){
		 $("#pop").click(function(){
		  $("#modal_content").modal(); 
		 });
		 $("#m_close").click(function(){
		  $.modal.close();
		 });
		}); 
</script>
<style type="text/css">
#pop {
	display: none;
	margin: 50 auto;
	width: 200px;
	height: 100px;
	background: blue;
	color: #fff
}
</style>
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
		<form id="frm">
			<input type="hidden"
				id="pageNo" name="pageNo" value="1" /> <input type="hidden" id="no"
				name="no" />
			<div class="bottom">
				<center>${pageBeanGallery.pagelink }</center>
			</div>
			<div class="gallery2">
				<c:forEach var="p" items='${activelist}'>
					<div>
						<a href="#" onclick="getBoard(${p.af_id})"> 
						<img src="upload_active/${p.af_sfilename}"/>
						</a>
					</div>
				</c:forEach>
			</div>
		</form>
	</div>
	</div>
</body>
</html>
