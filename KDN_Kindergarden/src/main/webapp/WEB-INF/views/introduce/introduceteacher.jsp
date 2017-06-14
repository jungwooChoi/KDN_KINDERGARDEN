<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*,com.kdn.model.domain.*"  %>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core"%> 
<jsp:useBean 	id="pageBean"         class="com.kdn.model.domain.PageBean"  scope="request"/>
<head>
<meta charset="UTF-8">
<link href="css/bootstrap.css" rel="stylesheet">    
<title>KDN 어린이집 교사 소개</title>
</head>
<body>
<div class="page-header" id="banner">

	<div class="row">
          <div class="col-lg-3 col-md-3 col-sm-4">
	              <a class="list-group-item"  href="introducekindergarden.do">어린이집 소개</a>
	              <a class="list-group-item"  href="introduceteacher.do">교사 소개</a>
	              <a class="list-group-item"  href="introduceclass.do">학급 소개</a>
	      </div>  
          
	<div class="col-lg-9">
		<div class="well bs-component">
			<form id="frm" method="post" action="introduceclass.do">
			
			<table width="100" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td><img src="images/introduceteacher.jpg" width="300" height="42"></td>
							<!-- <td width="200" align="center"><img src="images/introduceCJU.JPG" width="100" height="100"></td> -->
						</tr>
			</table>
		
			<table width="800" border="0" cellpadding="0" cellspacing="0">
				<c:forEach var="introduce" items="${teacherList}">
					<c:if test= "${introduce.t_id != 0}"> 
						<tr height="50">
							<td><font size="4" face="맑은고딕" color="black" ></br> 
							<strong>${introduce.t_name} 선생님</strong>	</br></br>	</font>
							</td>
						</tr>
						
						<tr height="125">
							<td width="200" align="center"><img style="width: 150px; height: 150px;" src="upload_teacher/${introduce.t_img}"/></td>
							<td width="30"></td>
							<td width="300">		
								<font size="3" face="맑은고딕"><strong>학력</strong></font><font size="3" face="맑은고딕" color="black"></font> 
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${introduce.t_gradu} </br>
								<font size="3" face="맑은고딕"><strong>전화번호</strong></font><font size="3" face="맑은고딕" color="black"></font> 
								&nbsp;&nbsp;${introduce.t_phone} </br>
								<font size="3" face="맑은고딕"><strong>지역</strong></font><font size="3" face="맑은고딕" color="black"></font> 
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${introduce.t_address} </br>
								<font size="3" face="맑은고딕"><strong>재직여부</strong></font><font size="3" face="맑은고딕" color="black"></font> 
								&nbsp;&nbsp;${introduce.t_status} </br>
							<td></td>	 			
						</tr>
						
						<tr height="40"></tr>
					</c:if> 
				</c:forEach>
				
			</table>
				</form>
 			</div>
 		</div>
    </div>
</div>
</body>
</html>
