<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>어린이집</title>
<link href="css/bootstrap.css" rel="stylesheet" />
<link rel="stylesheet" href="css/style1.css" />
<script type="text/javascript">
	function getDel(date) {
		//input 양식의 hidden으로 선언된 no(게시글 번호)에 요청된 게시글 번호를 셋팅
		setTimeout("pagereload();", 1000);	
		document.getElementById("date").value = date;
		var frm = document.getElementById("frm");
		frm.action = "deleteSchedule.do";
		frm.submit();
		
		opener.location.reload();
	}
 	function pagereload() {
		opener.location.reload();
	} 
	function getIn(date) {
		//input 양식의 hidden으로 선언된 no(게시글 번호)에 요청된 게시글 번호를 셋팅
		document.getElementById("date").value = date;
		var frm = document.getElementById("frm");
		frm.action = "insertScheduleForm.do";
		frm.submit();
	}
</script>
</head>
<body style="overflow: hidden">
<div>
	<form id="frm">
		<input type="hidden" id="date" name="date" />
		<table class="table3">
			<tr>
				<th colspan="2" style="padding: 10px;">해당일정확인</th>
			</tr>
			<tr>
				<c:choose>
					<c:when test="${!empty schedule.s_date}">
						<tr>
							<td style="padding: 10px;">날짜</td>
							<td style="font-size: 18px; padding-top: 12px">${schedule.s_date}</td>
						</tr>
						<tr>
							<td style="padding: 10px">제목</td>
							<td style="font-size: 18px; padding-top: 13px">${schedule.s_title}</td>
						</tr>
						<tr>
							<td style="padding: 10px">내용</td>
							<td style="overflow: auto; overflow-y: auto; overflow-x: auto; width: 80%; height: 250px; text-align: left; font-size: 18px; line-height: 160%; padding-top: 15px;">
								${schedule.s_contents}
							</td>
						</tr>
					</c:when>

					<c:otherwise>
						<tr>
							<td align="center" width="100%" height="250px">일정이 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tr>
		</table>
		<c:choose>
			<c:when test="${!empty schedule.s_date}">
				<div style="text-align: center; margin-top: 5px;">
					<a href="#" class="btn btn-primary" onclick="getDel('${finalDate}')">삭제</a>
					<a href="javascript:self.close();" class="btn btn-default">닫기</a>
				</div>
			</c:when>
			<c:otherwise>
				<div style="text-align: center; margin-top: 5px;">
					<a href="#" class="btn btn-primary" onclick="getIn('${finalDate}')">추가</a>
					<a href="javascript:self.close();" class="btn btn-default">닫기</a>
				</div>
			</c:otherwise>
		</c:choose>
	</form>
</div>
</body>
</html>