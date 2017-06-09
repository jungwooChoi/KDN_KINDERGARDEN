<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>어린이집</title>
<link rel="stylesheet" media="screen" href="css/schedule.css"
	type="text/css" />
<style>
html, body {
	margin: 0px;
	font-size: 12px;
	overflow-y: hidden;
	overflow-x: hidden;
}
</style>
<script type="text/javascript">
	
</script>
</head>
<body leftmargin="0px" rightmargin="0px" topmargin="0px"
	bottomMargin="0px" bgcolor="#FFFFFF" onLoad="winResize();" />
<div id="layout">
	<div id="outline">
		<table cellpadding="0" cellspacing="0" class="tbl_sc">
			<thead>
				<th colspan="2"><img src="images/ltit_01.gif" alt="해당일정보기" /></th>
			</thead>
		</table>
		<table cellpadding="0" cellspacing="0" class="tbl_sc">
			<tbody>
				<c:choose>
					<c:when test="${!empty schedule.s_date}">
						<tr>
							<td class="tbl_cell1" width="80">날짜</td>
							<td style="font-size: 12px;">${schedule.s_date}</td>
						</tr>
						<tr>
							<td class="tbl_cell1">제목</td>
							<td style="font-size: 12px;">${schedule.s_title}</td>
						</tr>
						<tr>
							<td class="tbl_cell2">내용</td>
							<td>
								<div
									style="overflow: auto; overflow-y: auto; overflow-x: auto; width: 100%; height: 265px; text-align: left; font-size: 12px; line-height: 160%">
									${schedule.s_contents}</div>
							</td>
						</tr>
					</c:when>

					<c:otherwise>
						<tr>
							<td class="tbl_cell1" width="80">일정이 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
	<div style="text-align: center; margin-top: 5px;">
		<a href="javascript:self.close();"><img
			src="images/btn_close.gif" alt="닫기"
			border="0" /></a>
	</div>
</div>
</body>
</html>