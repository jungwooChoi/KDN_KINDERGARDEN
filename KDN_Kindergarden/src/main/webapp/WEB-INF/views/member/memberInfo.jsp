<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<link rel="stylesheet" href="css/style1.css" />
<meta charset="UTF-8">
<title>사용자 정보 수정</title>

</head>
<body>
		<form method="post" action="update.do" enctype="multipart/form-data">
				<fieldset>
						<div class="form-group">
							<label for="getId" class="col-lg-2 control-label">ID</label>
							<div class="col-lg-10">
								<input type='text' name='t_id'  id='t_id' class="form-control" 
									value = "${teacher.t_id}" readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label for="getName" class="col-lg-2 control-label">이름</label>
							<div class="col-lg-10">
								<input type='text' name='t_name' class="form-control" 
									  id='t_name' value = "${teacher.t_name}">
							</div>
						</div>
						<div class="form-group">
							<label for="getName" class="col-lg-2 control-label">비밀번호</label>
							<div class="col-lg-10">
								<input type='password' name='t_pw'  id='t_pw' class="form-control" 
									 required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="getName" class="col-lg-2 control-label">주소</label>
							<div class="col-lg-10">
								<input type='text' name='t_address' class="form-control" 
									  id='t_address' value = "${teacher.t_address}" >
							</div>
						</div>
						<div class="form-group">
							<label for="getName" class="col-lg-2 control-label">전화번호</label>
							<div class="col-lg-10">
								<input type='text' name='t_phone' class="form-control" 
									 id='t_phone' value = "${teacher.t_phone}">
							</div>
						</div>
						<div class="form-group">
							<label for="getName" class="col-lg-2 control-label">학력</label>
							<div class="col-lg-10">
								<input type='text' name='t_gradu' class="form-control"  
								  id='t_gradu' value = "${teacher.t_gradu}">
							</div>
						</div>
						<div class="form-group">
							<label for="getName" class="col-lg-2 control-label">생일</label>
							<div class="col-lg-10">
								<input type="date" name='t_birth'  class="form-control"  
									  id='t_birth' value = "${teacher.t_birth}">
							</div>
						</div>
						<div class="form-group">
							<label for="getName" class="col-lg-2 control-label">재직여부</label>
							<div class="col-lg-10">
								<div class="radio">
								<label> 
								<input type="radio" name='t_status' id='t_status' value ='Y' checked="checked">Y  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
								<input type="radio" name='t_status' id='t_status' value ='N'>N
								</label>
								</div>
								<%-- <c:if test="${teacher.t_status=='Y'}">
									<input type="radio" name='t_status' id='t_status' value ='Y' checked="checked">Y
									<input type="radio" name='t_status' id='t_status' value ='N'>N
								</c:if>
								<c:if test="${teacher.t_status=='N'}">
									<input type="radio" name='t_status' id='t_status' value ='Y'>Y
									<input type="radio" name='t_status' id='t_status' value ='N' checked="checked">N
								</c:if> --%>
							</div>
						</div>
						<div class="form-group">
							<label for="getName" class="col-lg-2 control-label">이미지 업로드</label>
							<div class="col-lg-10">
								<img name="t_uploadimg" style="width: 280px; height: 180px;" src="upload_teacher/${teacher.t_img}"/>
	         						<input type="file" name="t_uploadimg" id="t_uploadimg" > 
	      							<input type="hidden" name="t_img" id="t_img">
							</div>
						</div>
						</br>
						</br>
					</fieldset>
					<div class="col-lg-10 col-lg-offset-2" style="margin-top: 15px;">
					<button type="reset" class="btn btn-default">Cancel</button>
					<button type="submit" class="btn btn-primary">Submit</button>
					</div>
	</form>
				