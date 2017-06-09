<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean 	id="pageBeanGallery"         class="com.kdn.model.domain.PageBeanGallery" 
				scope="request"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
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
	function getBoard(no){
		//input 양식의 hidden으로 선언된 no(게시글 번호)에 요청된 게시글 번호를 셋팅
		document.getElementById("no").value = no;
		var frm = document.getElementById("frm");
		frm.action="searchGallery.do";
		frm.submit();
	}
</script>
</head>
<body>
	<form id="frm" >
	  	<a href="insertGalleryForm.do" >글쓰기</a>
	  	<input type="hidden" id="pageNo"  name="pageNo"  value="1"/>
		<input type="hidden" id="no"  name="no"/>
	  	<div class="bottom"><center>${pageBeanGallery.pagelink }</center></div>
		<div class="gallery2">
				<c:forEach var ="p" items='${activelist}'>
				<div>	
					<a href="#" onclick="getBoard(${p.af_id})">
						<img src="active/${p.af_sfilename}" />
					</a> 
				</div>
				</c:forEach>
		</div>
	</form>
</body>
</html>