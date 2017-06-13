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
	<div style="margin: 10px auto; width: 50%; background: white; height: 700px">
		<form method="post" action="update.do" enctype="multipart/form-data">
				<table width="700" height="71" border="0" cellpadding="0" cellspacing="0">
				
							<tr height = "60">
								<td colspan = "2" width="180" align="center"><font size="4" face="맑은고딕"  color="blue"><strong>사용자 정보 수정</strong></font></td>
							</tr>
				
							<tr height = "40">
								<td width="80"><font size="3" face="맑은고딕"><strong>아 이 디</strong></font></td>
		    					<td width="100"><input type='text' name='t_id'  id='t_id' value = "${teacher.t_id}" readonly="readonly"></td>
							</tr>
							
							<tr height = "40">
								<td width="80"><font size="3" face="맑은고딕"><strong>비밀번호</strong></font></td>
		    					<td width="100"><input type='password' name='t_pw'  id='t_pw' required="required"></td>
							</tr>
							
							<tr height = "40">
								<td width="80"><font size="3" face="맑은고딕"><strong>이 &nbsp;름</strong></font></td>
		    					<td width="100"><input type='text' name='t_name'  id='t_name' value = "${teacher.t_name}"></td>
							</tr>							

							<tr height = "40">
								<td width="80"><font size="3" face="맑은고딕"><strong>주 &nbsp;소</strong></font></td>
		    					<td width="100"><input type='text' name='t_address'  id='t_address' value = "${teacher.t_address}"></td>
							</tr>
							
							<tr height = "40">
								<td width="80"><font size="3" face="맑은고딕"><strong>전화번호</strong></font></td>
		    					<td width="100"><input type='text' name='t_phone'  id='t_phone' value = "${teacher.t_phone}"></td>
							</tr>
							
							<tr height = "40">
								<td width="80"><font size="3" face="맑은고딕"><strong>학 &nbsp;력</strong></font></td>
		    					<td width="100"><input type='text' name='t_gradu'  id='t_gradu' value = "${teacher.t_gradu}"></td>
							</tr>	
							
							<tr height = "40">
								<td width="80"><font size="3" face="맑은고딕"><strong>생 &nbsp;일</strong></font></td>
		    					<td width="100"><input type="date" name='t_birth'  id='t_birth' value = "${teacher.t_birth}"></td>
							</tr>
							
							<tr height = "40">
								<td width="80"><font size="3" face="맑은고딕"><strong>재직여부</strong></font></td>
		    					<td width="100">	
		    												<input type="radio" name='t_status' id='t_status' value ='Y' checked="checked">Y
															<input type="radio" name='t_status' id='t_status' value ='N'>N
								</td>
							</tr>
							
							<tr height = "40">
								<td width="80"><font size="3" face="맑은고딕"><strong>업로드할 파일</strong></font></td>
		    					<td width="100">
		    						<img style="width: 280px; height: 180px;" src="${root}/upload_teacher/${teacher.t_img}"/>
	         						<input type="file" name="t_uploadimg" id="t_uploadimg" > 
	      							<input type="hidden" name="t_img" id="t_img">
		    					</td>
							</tr>
							
							<tr height = "40"></tr>
							
						<tr height = "80">
		   						<td colspan = "2"  width="40" align="center"> 
		   							<input type="submit"   value="수정"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		   							<input type="reset"  value="취소">
		   						 </td>
		   				</tr>	
				</table>
				
<!-- 				<div class="form-group">
							<div class="col-lg-10 col-lg-offset-2">
								<button type="reset" class="btn btn-default">Cancel</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
				</div> -->
										
		</form>
	</div>	
</body>
</html>

<!-- <div style="margin: 10px auto; width: 50%; background: white; height: 700px">
				<div style="padding : 0 auto">
				<h1>Legend</h1>
				<form class="form-horizontal">
					<fieldset>
						<div class="form-group">
			
							<label for="inputEmail" class="col-lg-2 control-label">Email</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" id="inputEmail"
									placeholder="Email">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword" class="col-lg-2 control-label">Password</label>
							<div class="col-lg-10">
								<input type="password" class="form-control" id="inputPassword"
									placeholder="Password">
								<div class="checkbox">
									<label> <input type="checkbox"> Checkbox
									</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="textArea" class="col-lg-2 control-label">Textarea</label>
							<div class="col-lg-10">
								<textarea class="form-control" rows="3" id="textArea"></textarea>
								<span class="help-block">A longer block of help text that
									breaks onto a new line and may extend beyond one line.</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-2 control-label">Radios</label>
							<div class="col-lg-10">
								<div class="radio">
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios1" value="option1" checked=""> Option
										one is this
									</label>
								</div>
								<div class="radio">
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios2" value="option2"> Option two can be
										something else
									</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="select" class="col-lg-2 control-label">Selects</label>
							<div class="col-lg-10">
								<select class="form-control" id="select">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select> <br> <select multiple="" class="form-control">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
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
			</div> -->


<%-- <form method="post" action="update.do" enctype="multipart/form-data">
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
</form> --%>


