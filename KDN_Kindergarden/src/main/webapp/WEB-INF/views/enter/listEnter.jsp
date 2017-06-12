<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.kdn.model.domain.*"  %>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core"%> 
<jsp:useBean 	id="pageBean"         class="com.kdn.model.domain.PageBean" 
				scope="request"/>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<link href="css/bootstrap.css" rel="stylesheet">    
<title>Insert title here</title>
<script type="text/javascript">
function pagelist(cpage){
	//input 양식의 hidden으로 선언된 page에 요청된 페이지 정보 셋팅 
	document.getElementById("pageNo").value=cpage;
	var frm = document.getElementById("frm");
	frm.action="listEnter.do";
	frm.submit();
}
function getEnter(e_id){
	//input 양식의 hidden으로 선언된 page에 요청된 페이지 정보 셋팅
	document.getElementById("e_id").value=e_id;
	var frm = document.getElementById("frm");
	frm.action="searchEnter.do";
	frm.submit();
}
</script>
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
          <div style="margin: 10px auto; width: 50%; height: 700px">
          		<input type="hidden" id="pageNo"  name="pageNo"  value="1"/>
				<input type="hidden" id="e_id"  name="e_id"/>
          		<table class="table table-striped table-hover ">
				  <thead>
				    <tr>
				      <th>No</th>
				      <th>학생 이름</th>
				      <th>반 이름</th>
				      <th>승인 여부</th>
				      <th>신청 날자</th>
				      <th>상세 보기</th>
				    </tr>
				  </thead>
				  <tbody>
				  	<c:forEach var="enterList" items="${enterList}">
					    <tr class="danger">
					      <td>${enterList.e_id}</td>
					      <td>${enterList.k_name}</td>
					      <td>${enterList.c_name}</td>
					      <td>${enterList.e_status}</td>
					      <td>${enterList.e_date}</td>
					      <td>
					      	<input class="btn btn-default" type="button" value="상세보기" 
					      		onclick="getEnter(${enterList.e_id})" >
					      </td>
					    </tr>
				    </c:forEach>
				  </tbody>
				</table> 
				<div class="bottom"><center>${pageBean.pagelink } </center></div>
          </div>
        </div>
      </div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>