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
	<table align="center" class="font">
		<caption>사용자 정보 수정</caption>
		<tr><td>아 이 디</td>
		    <td><input type='text' name='t_id'  id='t_id' value = "${teacher.t_id}" readonly="readonly"></td>
		</tr>
		<tr><td>비밀번호</td>
		    <td><input type='password' name='t_pw'  id='t_pw' required="required"></td>
		</tr>
		<tr><td>이 &nbsp;름</td>
		    <td><input type='text' name='t_name'  id='t_name' value = "${teacher.t_name}"></td>
		</tr>
		<tr><td>주 &nbsp;소</td>
		    <td><input type='text' name='t_address'  id='t_address' value = "${teacher.t_address}">
		</tr>
		<tr><td>전화번호</td>
		    <td><input type='text' name='t_phone'  id='t_phone' value = "${teacher.t_phone}">
		</tr>
		<tr><td>학 &nbsp;력</td>
		    <td><input type='text' name='t_gradu'  id='t_gradu' value = "${teacher.t_gradu}">
		</tr>
			<tr><td>생 &nbsp;일</td>
		    <td ><input type="date" name='t_birth'  id='t_birth' value = "${teacher.t_birth}">
		</tr>
		<tr>
			<td>재직여부</td>
			<td>
				<input type="radio" name='t_status' id='t_status' value ='Y' checked="checked">Y
				<input type="radio" name='t_status' id='t_status' value ='N'>N
			</td>
		</tr>
		<tr><td>업로드할 파일</td>
			    <td>
			    	<img style="width: 280px; height: 180px;" src="${root}/uploadTeacher/${teacher.t_img}"/>
	         		<input type="file" name="t_uploadimg" id="t_uploadimg" > 
	      			<input type="hidden" name="t_img" id="t_img">	
			    </td>
			</tr>
		<tr>
		   <td colspan='2' align='center'>
		     <input type="submit" value="수정">
			 <input type="reset" value="취소">
		   </td>
		</tr>
	</table>
</form>
</body>
</html>






