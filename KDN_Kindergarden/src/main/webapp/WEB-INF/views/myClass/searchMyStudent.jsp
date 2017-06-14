<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.kdn.model.domain.*"  %>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core"%> 
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
			  <a class="list-group-item"  href="updateForm.do">정보 수정</a>
              <a class="list-group-item"  href="listMyClass.do">나의 클래스 관리</a>
              <a class="list-group-item"  href="#">상담 관리</a>
              <a class="list-group-item"  href="insertKidForm.do">입학 관리</a>
			</div>
		<div class="col-lg-9">
			<div class="well bs-component">
				<div>
				<h1>학생 상세 정보</h1>
				<form action="updateKid.do" method="post" enctype="multipart/form-data" 
						name="frm" onsubmit="return check(this)" class="form-horizontal">
					<input type="hidden" name="student_k_id" id="student_k_id" value="${student.k_id }">
			    	<input type="hidden" name="student_k_p_id" id="student_k_p_id" value="${student.k_p_id }">
					<fieldset>
						<div class="form-group">
							<label for="getId" class="col-lg-2 control-label">학생 이름</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="student_name" 
										value="${student.k_name}" readonly="readonly" >
							</div>
						</div>
						<div class="form-group">
							<label for="getName" class="col-lg-2 control-label">생년월일</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="student_birth" id="student_birth" 
										value="${student.k_birth}" readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label for="getName" class="col-lg-2 control-label">성별</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="student_birth" id="student_birth" 
										value="${student.k_sex}" readonly="readonly">
							</div>
						</div>
						
						<div class="form-group">
							<label for="getName" class="col-lg-2 control-label">기타 사항</label>
							<div class="col-lg-10">
								<textarea class="form-control" name="student_contents" id="student_contents" 
										readonly="readonly">${student.k_contents}
								</textarea>
							</div>
						</div>
						<div class="form-group">
							<hr style="border-color : #e6cbcb;" width="550px">
						</div>
						<div class="form-group">
							<label for="getId" class="col-lg-2 control-label">부모님 이름</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="parent_name" 
										value="${parent.p_name}" readonly="readonly" >
							</div>
						</div>
						<div class="form-group">
							<label for="getId" class="col-lg-2 control-label">부모님 주소</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="parent_name" 
										value="${parent.p_address}" readonly="readonly" >
							</div>
						</div>
						<div class="form-group">
							<label for="getId" class="col-lg-2 control-label">부모님 전화번호</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="parent_name" 
										value="${parent.p_phone}" readonly="readonly" >
							</div>
						</div>
						<div class="form-group">
							<div class="col-lg-10 col-lg-offset-2">
								<button type="reset" class="btn btn-default">Cancel</button>
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</div>
					</fieldset>
				</form>
				
			</div>
			</div>
		</div>
	</div>
</body>
</html>