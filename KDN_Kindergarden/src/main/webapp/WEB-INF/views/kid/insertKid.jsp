<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/style1.css" rel="stylesheet">
<%
   request.setCharacterEncoding("UTF-8");
   String root=request.getContextPath();
%>
<style type="text/css">
   #cl-dashboard{display:none;} 
   #table1, #table3{
      margin: 0 auto;
      width: 700px;
   }
   #table1 tr,#table1 th,#table1 td{
      border-bottom: 1px solid #ddd;
      font-size: 10pt;
      height: 50px;
   }
   th{width: 150px;}
   #btnsubmit:HOVER{
      border: 1px solid black;
      background-color: #aaa;
      color: yellow;
      cursor: pointer;
      border-radius: 20px;
   }
   #btncel:HOVER{
      border: 1px solid black;
      background-color: #aaa;
      color: yellow;
      cursor: pointer;
      border-radius: 20px;
   }
</style>

</head>
<body>
<div class="page-header" id="banner">
      <div class="row">
          <div class="col-lg-3 col-md-3 col-sm-4">
              	<a class="list-group-item"  href="insertKidForm.do">자녀 입력</a>
              	<a class="list-group-item"  href="listMyKids.do">자녀 리스트</a>
            </div>
          
        <div class="col-lg-9">
	          <form action="insertKid.do" method="post" enctype="multipart/form-data" name="frm" onsubmit="return check(this)" >
				<table id="table1">
				   <tr>
				      <td colspan="2" style="border-bottom: 3px solid #ddd; ">
				         <b style="float: left; width: 500px; font-size: 20pt; padding-left: 10px;">자녀 입력</b>
				      </td>
				   </tr>
				   <tr style="height: 40px;">
				      <td colspan="2" align="left" style="height: 20px; border-bottom: 3px solid #ddd; text-align: left; ">
				        <div style="float:right; margin-top: 10px; padding-right: 10px;">   
				         <input type="radio" size="4" name="sellerok" class="sellerok" id="seller" value="seller" checked="checked">학생
				        </div>
				      </td>
				   </tr>
				   <tr style="height: 35px;">
				      <td colspan="2" align="left" style="height: 20px; border-bottom: 3px solid #ddd; text-align: left; ">
				      <b style="font-size: 8pt; color: red; margin-bottom: 0px; padding-bottom: 0px;">* 필수항목</b>
				      </td>
				   </tr>
				    <tr height="45">
				      <th width="100">학부모 아이디</th>
				      <td>
				         <input type="text" name="k_p_id" id="k_p_id" value="${id}" readonly="readonly" >
				      </td>
				   </tr>
				   <tr>
				      <th>원생 이름&nbsp;&nbsp;<b style="color: red;">*</b></th>
				      <td>
				         <input type="text" name="k_name" id="k_name" required="required" maxlength="20"> 
				      </td>
				   </tr>
				   <tr>
				      <th>생년월일&nbsp;&nbsp;<b style="color: red;">*</b></th>
				      <td>
				         <input type="date" name="k_birth" id="k_birth" maxlength="20" required="required" placeholder="YYYY-MM-DD"> 
				      </td>
				   </tr>
				   <tr>
				      <th>성별&nbsp;&nbsp;<b style="color: red;">*</b></th>
				      <td>
				         <input type="radio" size="4" name="k_sex" value="F" >여자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				         <input type="radio" size="4" name="k_sex" value="M" >남자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				      </td>
				   </tr>
				   <tr>
				      <th>기타 사항</th>
				      <td>
				         <input type="text" name="k_contents" size="72px;" maxlength="72"> 
				      </td>
				   </tr>
				   <tr>
				      <th style="border-bottom: none;">학생 사진</th>
				      <td style="border-bottom: none;">
				         <jsp:include page="imageView.jsp"></jsp:include>
				         <input type="file" name="k_uploadimg" id="k_uploadimg" onchange="previewImage(this,'View_area')"> 
				      	 <input type="hidden" name="k_img" id="k_img">
				      </td>
				      </tr>
				</table>
	
				<div id='View_area' style='width: 100px; height: 150px; color: black; border: 0px solid black; position: relative; left:500px; dispaly: inline; '>
				
				</div>
	      
				<table id="table3">   
				   <tr height="60">
				      <td colspan="2" align="center" style="border-top: 3px solid #ddd; border-bottom: none;">
				         <input type="submit" value="입학신청" id="btnsubmit" style="width: 100px; background-color: #ffcc00; color: white; border: 0px; height: 25px;">         
				         <input type="button" value="취소" id="btncel" onclick="location.href='<%=root%>/member/myPage.jsp'"
				            style="width: 100px; background-color: #b9b49e; color: white; border: 0px; height: 25px;">
				      </td>
				   </tr>
	
				</table>
			</form>
          
			</div>
			
		</div>
		
	</div>
</body>
</html>






