<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.kdn.model.domain.*"  %>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core"%> 
<jsp:useBean 	id="pageBean"         class="com.kdn.model.domain.PageBean" 
				scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Welcome</title>
	<link  rel="stylesheet" type="text/css" href="css/style1.css"  />
<%
   request.setCharacterEncoding("UTF-8");
   String root=request.getContextPath();
%>
<style type="text/css">
.whole {
	width: 1000px;
	overflow : auto;
	border: 0px solid gray;
	margin-top: 50px;
}

.sidemenu {
	float: left;
	width: 250px;
	font-size: 15px;
	text-align: left;
	line-height : 35px;
	border: 0px solid gray;
}

.sidemenu>ul>li>a {
	width : 100%;
	color: #696969;
	cursor: pointer;
	border: 0px solid gray;
}

.content {
	float: left;
	width: 750px;
	margin-left: 50px;
	border: 0px solid gray;
}

}
</style>
<script type="text/javascript">

$(function(){
	$("#nav_int_menu_li1").css("color","#4C4C4C");
	$("#nav_int_menu_li1").css("font-weight","bold");
	
});

</script>
</head> 
<body>
	<div class="row">>
		<div class="col-lg-3 col-md-3 col-sm-4">
	          <a class="list-group-item"  href="updateForm.do">정보 수정</a>
              <a class="list-group-item"  href="listMyClass.do">나의 클래스 관리</a>
              <a class="list-group-item"  href="#">상담 관리</a>
              <a class="list-group-item"  href="insertKidForm.do">입학 관리</a>
	    </div> 
	<div class="col-lg-9">
		<div class="well bs-component">
			
		<form action="updateKid.do" method="post" enctype="multipart/form-data"
		    name="frm" onsubmit="return check(this)" class="form-horizontal">
		    <input type="hidden" name="student_k_id" id="student_k_id" value="${student.k_id }">
		    <input type="hidden" name="student_k_p_id" id="student_k_p_id" value="${student.k_p_id }">
		<table id="table1">
		   <tr>
		      <td colspan="2" style="border-bottom: 3px solid #ddd; ">
		         <b style="float: left; width: 500px; font-size: 20pt; padding-left: 10px;">학생 상세정보</b>
		      </td>
		   </tr>
		   
		   <tr>
		      <th>학생 이름&nbsp;&nbsp;<b style="color: red;">*</b></th>
		      <td>
		         <input type="text" name="student_name" id="student_name" value="${student.k_name}"> 
		      </td>
		   </tr>
		   <tr>
		      <th>생년월일&nbsp;&nbsp;<b style="color: red;">*</b></th>
		      <td>
		         <input type="text" name="student_birth" id="student_birth" value="${student.k_birth}"> 
		      </td>
		   </tr>
		   <tr>
		      <th>성별&nbsp;&nbsp;<b style="color: red;">*</b></th>
		      <td>
		      	<c:if test="${student.k_sex=='여자'}">
		         <input type="radio" size="4" name="student_sex" value="여자" checked="checked">여자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		      	 <input type="radio" size="4" name="student_sex" value="남자" >남자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		      	</c:if>
		      	<c:if test="${student.k_sex=='남자'}">
		         <input type="radio" size="4" name="student_sex" value="남자" checked="checked">남자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		         <input type="radio" size="4" name="student_sex" value="여자" >여자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 	
		        </c:if> 
		      </td>
		   </tr>
		   <tr>
		      <th>기타 사항</th>
		      <td>
		         <input type="text" name="student_contents" value="${student.k_contents}" size="72px;" maxlength="72"> 
		      </td>
		   </tr>
		   <tr>
		      <th style="border-bottom: none;">학생 사진</th>
		      <td style="border-bottom: none;">
		         <img style="width: 280px; height: 180px;" alt="" src="uploadKid/${student.k_img}">
		      </td>
		   </tr>
		   <tr>
		   	  <th>부모님 이름</th>
		      <td>
		         <input type="text" name="parent_name" value="${parent.p_name}" size="72px;" maxlength="72"> 
		      </td>
		   </tr>
		   <tr>
		   	  <th>부모님 주소</th>
		      <td>
		         <input type="text" name="parent_name" value="${parent.p_address}" size="72px;" maxlength="72"> 
		      </td>
		   </tr>
		   <tr>
		   	  <th>부모님 전화번호</th>
		      <td>
		         <input type="text" name="parent_name" value="${parent.p_phone}" size="72px;" maxlength="72"> 
		      </td>
		   </tr>
		</table>
		</form>
		</div>
		</div>
	</div>
</body>
</html>
