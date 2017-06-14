<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.kdn.model.domain.*"  %>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<jsp:useBean 	id="pageBean"         class="com.kdn.model.domain.PageBean" 
				scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/bootstrap.css" rel="stylesheet">    
<title>Insert title here</title>

</head>
<body>
	<div class="page-header" id="banner">
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-4">
					<a class="list-group-item" href="insertKidForm.do">자녀 입력</a> 
					<a class="list-group-item" href="listMyKids.do">자녀 리스트</a> 
			</div>
		<div class="col-lg-9">
				<table class="table table-striped table-hover">
					<tr>
						<th colspan="4"><h1>${kid.k_name }의 수정 폼</h1></th>
					</tr>
				</table>
				
				<form action="updateKid.do" method="post" enctype="multipart/form-data"
		    name="frm" onsubmit="return check(this)" >
		    <input type="hidden" name="k_id" id="k_id" value="${kid.k_id }">
		    <input type="hidden" name="k_p_id" id="k_p_id" value="${kid.k_p_id }">
		    <input type="hidden" name="k_date" id="k_date" value="${kid.k_date }">
			
			<fieldset>
				<div class="form-group">
					<label for="getId" class="col-lg-2 control-label">자녀 이름</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" name="k_name" id="k_name" 
								value="${kid.k_name}" readonly="readonly" >
					</div>
				</div>
				<div class="form-group">
					<label for="getName" class="col-lg-2 control-label">생년월일</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" name="k_birth" id="k_birth" 
							readonly="readonly" value="${kid.k_birth}">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">성별${kid.k_sex}</label>
					<div class="col-lg-10">
						<c:if test="${kid.k_sex=='여자'}">
							<div class="radio">
									<label> <input type="radio" name="k_sex"
										id="k_sex" value="여자" checked="checked"> 여자
									</label>
							</div>
							<div class="radio">
									<label> <input type="radio" name="k_sex"
										id="k_sex" value="남자" > 남자
									</label>
							</div>
		      			</c:if>
		      			<c:if test="${kid.k_sex=='남자'}">
		      				<div class="radio">
									<label> <input type="radio" name="k_sex"
										id="k_sex" value="여자"> 여자
									</label>
							</div>
							<div class="radio">
									<label> <input type="radio" name="k_sex"
										id="k_sex" value="남자"  checked="checked"> 남자
									</label>
							</div>
					    </c:if> 
					</div>
				</div> 
				<div class="form-group">
					<label for="textArea" class="col-lg-2 control-label">특이사항</label>
					<div class="col-lg-10">
						<textarea class="form-control" rows="3" id="e_etc" name="k_contents">${kid.k_contents}</textarea>
						<span class="help-block" >특이사항, 요청사항 등이 있으면 적어주세요.</span>
					</div>
				</div>
				<div class="form-group">
					<label for="getName" class="col-lg-2 control-label">이미지 업로드</label>
					<div class="col-lg-10">
						<img name="t_uploadimg" style="width: 280px; height: 180px;" src="upload_kid/${kid.k_img}"/>
	       						<input type="file" name="k_uploadimg" id="k_uploadimg" > 
	    							<input type="hidden" name="k_img" id="k_img">
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-10 col-lg-offset-2">
						<button type="submit" class="btn btn-primary">수정</button>
						<button type="reset" class="btn btn-default">취소</button>
						<%-- <button type="reset" class="btn btn-default" onclick="location.href='deleteKid.do?k_id=${kid.k_id}'"  >삭제</button> --%>
					</div>
				</div>
			</fieldset>
		</form>
				<div>
					<c:if test="${kid.k_sex=='여자'}">
	         <input type="radio" size="4" name="k_sex" value="여자" checked="checked">여자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	      	 <input type="radio" size="4" name="k_sex" value="남자" >남자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	      	</c:if>
	      	<c:if test="${kid.k_sex=='남자'}">
	         <input type="radio" size="4" name="k_sex" value="남자" checked="checked">남자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	         <input type="radio" size="4" name="k_sex" value="여자" >여자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 	
	        </c:if> 
					
				</div>
			</div>
			</div>
		</div>

</body>
</html>