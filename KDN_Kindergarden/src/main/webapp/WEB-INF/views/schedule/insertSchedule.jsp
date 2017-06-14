<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.10.1.js"></script>
<link href="css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="css/style1.css" />
<style type="text/css">
</style>
<script type="text/javascript">
	
</script>
</head>
<body style="overflow: hidden" onunload="javascript:opener.location.reload();">
	<div>
		<form method="post" action="insertSchedule.do">
			<input type="hidden" id="date" name="date" />
			<table class="table3">
				<tr>
					<td colspan="2"><input type="hidden" name="s_date" id="s_date"
						value="${date}" /></td>
				</tr>
				<tr>
					<th colspan="2" style="padding: 10px;">일정추가</th>
				</tr>
				<tr class="form-group">
					<td style="text-align: center"><label for="col-lg-2 control-label">제목</label></td>
					<td>
						<div class="col-lg-10" style="width: 300px">
							<input type="text" name="s_title" id="s_title"
								class="form-control" style="width: 100%"/>
						</div>
					</td>
				</tr>

				<tr class="form-group">
					<td style="text-align: center"><label for="col-lg-2 control-label">아이디</label></td>
					<td>
						<div class="col-lg-10" style="width: 300px">
							<input type="text" name="s_t_id" id="s_t_id" value="${id}"
								readonly="readonly" class="form-control" style="width: 100%"/>
						</div>
					</td>
				</tr>
				<tr class="form-group">
					<td style="text-align: center"><label for="col-lg-2 control-label">내용</label></td>
					<td>
						<div class="col-lg-10" style="width: 300px">
							<textarea name="s_contents" id="s_contents" cols="30" rows="5" style="width: 100%"></textarea>
						</div>
					</td>
				</tr>
				<tr class="form-group">
					<td style="text-align: center"><label for="col-lg-2 control-label">반</label></td>
					<td>
						<div class="col-lg-10" style="width: 300px">
							<select name="s_o_id" id="s_o_id" class="form-control" style="width: 100%">
								<c:forEach var="open" items="${list}">
									<option value="${open.o_id}">${open.c_name}</option>
								</c:forEach>
							</select>
						</div>
					</td>
				</tr>
			</table>
			<div style="text-align: center; margin-top: 5px;">
				<input type="submit" class="btn btn-primary" value="작성" /> <input
					type="reset" class="btn btn-default" value="취소" />
			</div>
		</form>
	</div>
</body>
</html>