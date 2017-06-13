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
	          		
	          		<form id="frm" method="post" action="introduceteacher.do">
						<table align="center">
						
						  	<tr align="center" height="30">
						  	  	<td width="200"><font size="3" face="맑은고딕" color="black"><strong>교사 이름</strong></font></td>
						  	  	<c:forEach  var="introduce" items="${teacherList}">
						  	  		<td width="200" height="30">${introduce.t_name}</td>
						  	  </c:forEach>	
						  	 </tr>
						  	 
						  	 <tr align="center" height="30">
						  	  	<td width="200"><font size="3" face="맑은고딕" color="black"><strong>학력</strong></font></td>
						  	 	<c:forEach  var="introduce" items="${teacherList}">
						  	  		<td width="200" height="30">${introduce.t_gradu}</td>
						  	  	</c:forEach>		
						  	 </tr>
						  	 
						  	 <tr align="center" height="30">						  	  
						  	  	<td  width="200"><font size="3" face="맑은고딕" color="black"><strong>전화번호</strong></font></td>
						  	  	<c:forEach  var="introduce" items="${teacherList}">
						  	  		<td width="200" height="30">${introduce.t_phone}</td>
						  	  	</c:forEach>	
						  	 </tr>
						  	 
						  	 <tr align="center" height="30">
						  	  	<td width="200"><font size="3" face="맑은고딕" color="black"><strong>지역</strong></font></td>
						  	  	<c:forEach  var="introduce" items="${teacherList}">
						  	  		<td width="200" height="30">${introduce.t_address}</td>
						  	  	</c:forEach>	
						  	 </tr>
						  	 
						  	 <tr align="center" height="30">
						  	  	<td  width="200"><font size="3" face="맑은고딕" color="black"><strong>재직여부</strong></font></td>
						  	  	<c:forEach  var="introduce" items="${teacherList}">
						  	  		<td width=200" height="30">${introduce.t_status}</td>
						  	  	</c:forEach>	
						  	  </tr>

						</table>
					</form>
	          		
	        </div>
        </div>
        </div>
</div>
</body>
</html>

<%-- <table align="center">
						  	<tr align="center" height="30">
						  	  <td width="100"><font size="3" face="맑은고딕" color="black"><strong>교사 이름</strong></font></td>
						  	  <td width="100"><font size="3" face="맑은고딕" color="black"><strong>학력</strong></font></td>
						  	  <td  width="200"><font size="3" face="맑은고딕" color="black"><strong>전화번호</strong></font></td>
						  	  <td width="100"><font size="3" face="맑은고딕" color="black"><strong>지역</strong></font></td>
						  	  <td  width="100"><font size="3" face="맑은고딕" color="black"><strong>재직여부</strong></font></td>
						  	  
						  	  <c:forEach  var="introduce" items="${teacherList}">
						  	  <tr align="center">
								 <td width="100" height="30">${introduce.t_name}</td>
								 <td width="100" height="30">${introduce.t_gradu}</td>  	  
								 <td width="200" height="30">${introduce.t_phone}</td>  	  
								 <td width="100" height="30">${introduce.t_address}</td>  	  
								 <td width="100" height="30">${introduce.t_status}</td>  	  
							  </tr>  
						  	  </c:forEach>
						  	  
						  	</tr>
						</table> --%>

						  	  
<%-- 						  	  <c:forEach  var="introduce" items="${teacherList}">
						  	  <tr align="center">
								 <td width="100" height="30">${introduce.t_name}</td>
								 <td width="100" height="30">${introduce.t_gradu}</td>  	  
								 <td width="200" height="30">${introduce.t_phone}</td>  	  
								 <td width="100" height="30">${introduce.t_address}</td>  	  
								 <td width="100" height="30">${introduce.t_status}</td>  	  
							  </tr>  
						  	  </c:forEach> --%>
						  	  
