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
					<a class="list-group-item" href="listEnter.do">입학 신청 리스트</a> 
					<a class="list-group-item" href="insertEnterForm.do">입학 신청</a> 
			</div>
		<div class="col-lg-9">
				<table class="table table-striped table-hover">
					<tr>
						<th colspan="4"><h1>2017년도 입학 신청</h1></th>
					</tr>
				</table>
				<form method="post" action="insertEnter.do" class="form-horizontal">
					<input type="hidden" name="e_status" value="N">
					<fieldset>
						<div class="form-group">
							<label for="getId" class="col-lg-2 control-label">ID</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="e_p_id" value="${parentInfo.p_id}" 
									placeholder="${parentInfo.p_id}" readonly="readonly" >
							</div>
						</div>
						<div class="form-group">
							<label for="getName" class="col-lg-2 control-label">부모 이름</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="p_name" 
									placeholder="${parentInfo.p_name}" readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-2 control-label">자녀 선택</label>
							<div class="col-lg-10">
								<c:forEach var="myKidsList" items="${myKidsList}">
									<div class="radio">
										<label> 
											<input type="radio" name="e_k_id" id="e_k_id" 
													value="${myKidsList.k_id}" > 
											<%-- 이름 : ${myKidsList.k_name}
											생년월일 : ${myKidsList.k_date} --%>
											<div class="form-group">
												<label for="getName" class="col-lg-2 control-label">자식 이름</label>
												<div class="col-lg-10">
													<input type="text" class="form-control" name="p_name"
														placeholder="${myKidsList.k_name}" readonly="readonly">
												</div>
											</div>
											<div class="form-group">
												<label for="getName" class="col-lg-2 control-label">생년월일</label>
												<div class="col-lg-10">
													<input type="text" class="form-control" name="p_name"
														placeholder="${myKidsList.k_date}" readonly="readonly">
												</div>
											</div>
											<div class="form-group">
												<label for="getName" class="col-lg-2 control-label">생년월일</label>
												<div class="col-lg-10">
													<input type="text" class="form-control" name="p_name"
														placeholder="${myKidsList.k_sex}" readonly="readonly">
												</div>
											</div>
										</label>
									</div>
								</c:forEach>
							</div>
						</div>
						
						<div class="form-group">
							<label for="select" class="col-lg-2 control-label">반선택</label>
							<div class="col-lg-10">
								<select class="form-control" id="e_o_id" name="e_o_id">
									<c:forEach var="openClassList" items="${openClassList}">
										<option value="${openClassList.o_id}">${openClassList.c_name}</option>
									</c:forEach>	
								</select> 
							</div>
						</div>  
			
						<div class="form-group">
							<label for="textArea" class="col-lg-2 control-label">특이사항</label>
							<div class="col-lg-10">
								<textarea class="form-control" rows="3" id="e_etc" name="e_etc"></textarea>
								<span class="help-block">특이사항, 요청사항 등이 있으면 적어주세요.</span>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>