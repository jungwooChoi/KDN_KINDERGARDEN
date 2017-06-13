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
				<div class="list-group table-of-contents">
					<a class="list-group-item" href="listEnter.do">입학 신청 리스트</a> 
					<a class="list-group-item" href="insertEnterForm.do">입학 신청</a> 
				</div>
			</div>
			<div
				style="margin: 10px auto; width: 50%; background: white; height: 700px">
				<div style="padding : 0 auto">
				<h1>입학 신청서</h1>
				<form method="post" action="updateEnter.do" class="form-horizontal">
					<fieldset>
						<div class="form-group">
							<label for="getNo" class="col-lg-2 control-label">No</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="e_id" value="${enter.e_id}" 
									placeholder="${enter.e_id}" readonly="readonly" >
							</div>
						</div>
						<div class="form-group">
							<label for="getName" class="col-lg-2 control-label">접수 날짜</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="e_date" 
									placeholder="${enter.e_date}" readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label for="getName" class="col-lg-2 control-label">학생 이름</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="e_k_id" 
									placeholder="${enter.k_name}" readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label for="getClassName" class="col-lg-2 control-label">반 이름</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="e_o_id" 
									placeholder="${enter.c_name}" readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label for="getParentName" class="col-lg-2 control-label">부모 이름</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="e_p_id" 
									placeholder="${enter.p_name}" readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label for="textArea" class="col-lg-2 control-label">특이사항</label>
							<div class="col-lg-10">
								<textarea class="form-control" rows="3" 
										readonly="readonly"
										id="e_etc" name="e_etc">
								${enter.e_etc}
								</textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="getParentName" class="col-lg-2 control-label">승인 여부</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="e_status" 
									placeholder="${enter.e_status}" >
							</div>
						</div>
						<div class="form-group">
						<div class="form-group">
							<div class="col-lg-10 col-lg-offset-2">
								<button type="reset" class="btn btn-default">돌아가기</button>
								<button type="submit" class="btn btn-primary">수정하기</button>
							</div>
						</div>
					</fieldset>
				</form>
				
			</div>
			</div> 
		</div>
	</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>