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

<div class="container_12">
	<div class="grid_3 bot-1">
		<ul class = "font">
			<li><a href="insertKidForm.do" id="nav_int_menu_li1">자녀 입력</a></li>
			<li><a href="listKid.do" id="nav_int_menu_li2">자녀 리스트</a></li>
		</ul>
	</div>

	<div class="grid_9">
	<form action="updateKid.do" method="post" enctype="multipart/form-data"
	    name="frm" onsubmit="return check(this)" >
	    <input type="hidden" name="k_id" id="k_id" value="${kid.k_id }">
	    <input type="hidden" name="k_p_id" id="k_p_id" value="${kid.k_p_id }">
	<table id="table1">
	   <tr>
	      <td colspan="2" style="border-bottom: 3px solid #ddd; ">
	         <b style="float: left; width: 500px; font-size: 20pt; padding-left: 10px;">My Child</b>
	      </td>
	   </tr>
	   
	   <tr>
	      <th>학생 이름&nbsp;&nbsp;<b style="color: red;">*</b></th>
	      <td>
	         <input type="text" name="k_name" id="k_name" required="required" maxlength="20" value="${kid.k_name}"> 
	      </td>
	   </tr>
	   <tr>
	      <th>생년월일&nbsp;&nbsp;<b style="color: red;">*</b></th>
	      <td>
	         <input type="text" name="k_birth" id="k_birth" maxlength="20" 
	         	required="required" placeholder="YYYY-MM-DD" value="${kid.k_birth}"> 
	      </td>
	   </tr>
	   <tr>
	      <th>성별&nbsp;&nbsp;<b style="color: red;">*</b></th>
	      <td>
	      	<c:if test="${kid.k_sex=='여자'}">
	         <input type="radio" size="4" name="k_sex" value="여자" checked="checked">여자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	      	 <input type="radio" size="4" name="k_sex" value="남자" >남자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	      	</c:if>
	      	<c:if test="${kid.k_sex=='남자'}">
	         <input type="radio" size="4" name="k_sex" value="남자" checked="checked">남자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	         <input type="radio" size="4" name="k_sex" value="여자" >여자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 	
	        </c:if> 
	      </td>
	   </tr>
	   <tr>
	      <th>기타 사항</th>
	      <td>
	         <input type="text" name="k_contents" value="k_contents" size="72px;" maxlength="72"> 
	      </td>
	   </tr>
	   <tr>
	      <th style="border-bottom: none;">학생 사진</th>
	      <td style="border-bottom: none;">
	       <!--   <input type="radio" class="sellerimg" name="s_img" size="15" value="무" checked="checked">  이미지 없음
	         &nbsp;&nbsp;&nbsp;
	         <input type="radio" class="sellerimg" name="s_img" size="15" value="유" >  이미지 있음
	         &nbsp;&nbsp; -->
	         <jsp:include page="imageView.jsp"></jsp:include>
	         <img style="width: 280px; height: 180px;" alt="" src="uploadKid/${kid.k_img}">
	         <input type="file" name="k_uploadimg" id="k_uploadimg" onchange="previewImage(this,'View_area')"> 
	      	<input type="hidden" name="k_img" id="k_img">	
	      </td>
	</table>
	
	<div id='View_area' style='width: 100px; height: 150px; color: black; border: 0px solid black; 
	   position: relative; left:500px; dispaly: inline; '>
	</div>
	      
	<table id="table3">   
	   <tr height="60">
	      <td colspan="2" align="center" style="border-top: 3px solid #ddd; border-bottom: none;">
	         <input type="submit" value="수정" id="btnsubmit" style="width: 100px; background-color: #ffcc00; color: white; border: 0px; height: 25px;">         
	         <input type="button" value="삭제" id="btncel" onclick="location.href='deleteKid.do?k_id=${kid.k_id}'" 
	            style="width: 100px; background-color: #b9bt49e; color: white; border: 0px; height: 25px;">
	      </td>
	   </tr>
	
	</table>
	</form>
	<div style="clear: right;clear: left;"></div>
	</div>
	
</div>
</body>
</html>
