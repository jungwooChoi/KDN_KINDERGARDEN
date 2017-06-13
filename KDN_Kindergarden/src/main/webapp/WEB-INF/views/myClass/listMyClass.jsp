<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*,com.kdn.model.domain.*"  %>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core"%> 
<jsp:useBean 	id="pageBean"         class="com.kdn.model.domain.PageBean"  scope="request"/>
<head>
<meta charset="UTF-8">
<link href="css/bootstrap.css" rel="stylesheet">    
<title>KDN 어린이집 교사 소개</title>
<script type="text/javascript">
function searchMyStudent(k_p_id,k_id){
	//input 양식의 hidden으로 선언된 page에 요청된 페이지 정보 셋팅 
	document.getElementById("k_p_id").value=k_p_id;
	document.getElementById("k_id").value=k_id;
	var frm = document.getElementById("frm");
	frm.action="searchMyStudent.do";
	frm.submit();
}
</script>
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
				<div style="height: 100px; width:800px; background-color: #c0d8e2;
							padding: 5px; ">
			        <h2 style="color: #4531ac; font-weight: bold; margin-left: 20px;">${cl.c_name}</h2>
			        <p style="margin-left: 20px;">총 정원 ${cl.c_total}명 중 ${cnt} 명 재학 중</p>
			    </div>
				<form id="frm">
					<input type="hidden" id="k_p_id"  name="k_p_id"/>
					<input type="hidden" id="k_id"  name="k_id"/>
				  
			       <div class="gallery2">
				      	<c:forEach var="i" items="${kidList}"  varStatus="cnt">
				      		<div class="col-lg-3">
				      		<a href="#" onclick="searchMyStudent(${i.k_p_id},${i.k_id})" >
				      		<img src="upload_kid/${i.k_img}"/>
					        <h3>${i.k_name }</h3>
					        </a>
					        </div> 
					         <%-- <c:if test="${%3==0}"></br></c:if>  --%>
				        </c:forEach> 
			      </div><!--/row--> 
			    </form>
 			</div>
 		</div>
    </div>
</div>
</body>
</html>
