<!-- default page directive -->
<%@page session="true" contentType="text/html; charset=KSC5601"%>
<%@taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!-- import section -->

<!-- error page section -->

<!-- login check section -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>::::: Calender :::::</title>
<script language="javascript" src="/js/datepicker.js"></script>
<script type="text/javascript" src="/js/jquery-1.7.min.js"></script>
<script src="js/bootstrap.js"></script>
<link href="css/bootstrap.css" rel="stylesheet">
<link  rel="stylesheet" type="text/css" href="css/schedule.css"  />
<SCRIPT LANGUAGE="JavaScript">

var dDate = new Date();
var dCurMonth = dDate.getMonth();
var dCurDayOfMonth = dDate.getDate();
var dCurYear = dDate.getFullYear();
var objPrevElement = new Object();
var wnd; // 팝업
var yy;
var mm;
var dd;

function fSetSelectedDay(myElement){
	if (myElement.id == "calCell") {
		if (!isNaN(parseInt(myElement.children["calDateText"].innerText))) {
			//myElement.bgColor = "#c0c0c0";
			//objPrevElement.bgColor = "#FFFFFF";
			
			document.all.calSelectedDate.value = parseInt(myElement.children["calDateText"].innerText);
			objPrevElement = myElement;
			if (document.all.calSelectedDate.value < 10) document.all.calSelectedDate.value = "0"+document.all.calSelectedDate.value;
			// alert("cal value = " +document.frmCalendarSample.tbSelYear.value+"-"+document.frmCalendarSample.tbSelMonth.value+"-"+document.all.calSelectedDate.value);
			//var finalDate = document.frmCalendarSample.tbSelYear.value+"-"+document.frmCalendarSample.tbSelMonth.value+"-"+document.all.calSelectedDate.value;
			//var finalDay = document.all.calSelectedDate.value;
			var finalDate = thisday.innerText.substring(0,4)+"-"+thisday.innerText.substring(6,8)+"-"+document.all.calSelectedDate.value;
				
			//document.getElementById("pop").href= "pop.do?finalDate="+finalDate;
			/* $.ajax({
				url:'pop.do',
				type:'get',
				dataType:"html",
				data:{'finalDate':finalDate},
				success: function(data){
					$("#wrapper").html(data);
				},
				error : function(e){
					
					 alert('일정을 서버에서 받아올 수 없습니다. 다시 조회회세요')
					 console.log(e);
				}
			}); */
			
			var popOption = "width=388. height=500, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
			if (wnd){
				wnd.close();
			}		
			var url = 'pop.do?finalDate= '+finalDate; 
			wnd = window.open(url,"",popOption);
			
			var finalDay = document.all.calSelectedDate.value;
			// eval("opener.document."+this.fieldName.value+".value="+finalValue);
			// eval("opener.document.form1.start.value="+finalValue);
			// window.opener.document.form1.start.value=finalDate;
			// alert("opener = " + self.opener.document);
			// eval("self.opener.document."+ this.fieldName.value + ".value='"+finalValue+"'; window.close();");
			// eval("self.opener.document.<%=request.getParameter("fieldName")%>.value='"+finalDate+"'; window.close();");
			<%String param = request.getParameter("fieldName2");
			if (request.getParameter("fieldName2") != null) {%>
			self.opener.document.form1.<%=param%>.value=finalDate;
			<%}%>
			<%-- window.opener.document.all.<%=request.getParameter("fieldName")%>[<%=request.getParameter("array")%>].value=finalDate;
			window.close(); --%>
			// eval("self.opener.document.<%=request.getParameter("fieldName")%>.value='"+finalDate+"'; window.close();");
				// self.opener.document.form1.start.value = finalDate; window.close();
				// onClick=\"self.opener.document." + this.gReturnItem + ".value='" +
				//					this.format_data(vDay) +
				//					"';window.close();\">" +
				//				this.format_day(vDay) +
			}
		}
	}
	function fGetDaysInMonth(iMonth, iYear) {
		var dPrevDate = new Date(iYear, iMonth, 0);
		return dPrevDate.getDate();
	}
	function fBuildCal(iYear, iMonth) {
		var aMonth = new Array();
		aMonth[0] = new Array(7);
		aMonth[1] = new Array(7);
		aMonth[2] = new Array(7);
		aMonth[3] = new Array(7);
		aMonth[4] = new Array(7);
		aMonth[5] = new Array(7);
		aMonth[6] = new Array(7);
		var dCalDate = new Date(iYear, iMonth - 1, 1);
		var iDayOfFirst = dCalDate.getDay();
		var iDaysInMonth = fGetDaysInMonth(iMonth, iYear);
		var iVarDate = 1;
		var i, d, w;
		for (d = iDayOfFirst; d < 7; d++) {
			aMonth[1][d] = iVarDate;
			iVarDate++;
		}
		for (w = 2; w < 7; w++) {
			for (d = 0; d < 7; d++) {
				if (iVarDate <= iDaysInMonth) {
					aMonth[w][d] = iVarDate;
					iVarDate++;
				}
			}
		}
		return aMonth;
	}
	
	var schedule = new Array();
	var count =0;
</script>
<c:choose>
	<c:when test="${!empty schedulelist}">
		<c:forEach var="schedule"  items="${schedulelist}">
		<script type="text/javascript">
			schedule[count++] = ${schedule.s_date};
		</script>
		</c:forEach>
	</c:when>
</c:choose>
<script type="text/javascript">
var dispYear=0;
var dispMonth=0;
		function fDrawCal(iYear, iMonth) {
			//console.log(schedule);
			var myMonth;
			myMonth = fBuildCal(iYear, iMonth);
			// <div class="cell-wrap">
			
			for (w = 1; w < 7; w++) {
				document.write("<tr>");
				for (d = 0; d < 7; d++) {
					document.write("<td id=calCell onclick=fSetSelectedDay(this) data-toggle='modal' data-target='#myModal'>");
					if (!isNaN(myMonth[w][d])) {
						var hasSchedule=false;
						for(var i=0; i<=count; i++){
							if(schedule[i] == ''+myMonth[w][d]){
								hasSchedule=true;
							}		
						}
						if(hasSchedule){
							document.write("<div id=calDateText class='cell-wrap upcoming'>"+ myMonth[w][d] + "</div>");
						}else{
							document.write("<div id=calDateText class='cell-wrap archival'>"+ myMonth[w][d] + "</div>");
						}
						
					} else {
						document.write("<div id=calDateText class='cell-wrap'> </div>");
					}
					document.write("</td>")
				}
				document.write("</tr>");
			}
			document.write("</table>")
		}
		function fUpdateCal(iYear, iMonth) {
			myMonth = fBuildCal(iYear, iMonth);
			objPrevElement.bgColor = "";
			document.all.calSelectedDate.value = "";
			for (w = 1; w < 7; w++) {
				for (d = 0; d < 7; d++) {
					if (!isNaN(myMonth[w][d])) {
						var hasSchedule=false;
						for(var i=0; i<=count; i++){
							if(myMonth[w][d] > 10){
								if(schedule[i] == ''+myMonth[w][d]){
									hasSchedule=true;
								}
							}else {
								if(schedule[i] == "0"+myMonth[w][d]){
									hasSchedule=true;
								}
							}
						}
						if(hasSchedule){
							$(calDateText[((7 * w) + d) - 7]).removeClass('archival').addClass('upcoming');
						}else{
							$(calDateText[((7 * w) + d) - 7]).removeClass('archival').removeClass('upcoming').addClass('archival');
						}
						calDateText[((7 * w) + d) - 7].innerText = myMonth[w][d];
					} else {
						calDateText[((7 * w) + d) - 7].innerText = " ";
						$(calDateText[((7 * w) + d) - 7]).removeClass('archival').removeClass('upcoming');
					}
				}
			}//location.href ="schedule.do?year="+iYear+"&month="+iMonth;
		}
	function beforeYear() {
		dispYear = eval(thisday.innerText.substring(0, 4)) - 1;
		dispMonth = eval(thisday.innerText.substring(6, 8));
		if (dispMonth < 10)	dispMonth = "0" + dispMonth;

		thisday.innerText = dispYear + "년 " + dispMonth + "월";
		searchSchedule(dispYear, dispMonth);
		
	}
	function beforeMonth() {
		dispYear = eval(thisday.innerText.substring(0, 4));
		dispMonth = eval(thisday.innerText.substring(6, 8)) - 1;

		if (dispMonth < 10) {
			dispMonth = "0" + dispMonth;
		}
		if (dispMonth.toString() == "00") {
			dispYear = eval(thisday.innerText.substring(0, 4)) - 1;
			dispMonth = "12";
		}
		thisday.innerText = dispYear + "년 " + dispMonth + "월";
		searchSchedule(dispYear, dispMonth);
	}

	function nextMonth() {
		dispYear = eval(thisday.innerText.substring(0, 4));
		dispMonth = eval(thisday.innerText.substring(6, 8)) + 1;

		if (dispMonth < 10) {
			dispMonth = "0" + dispMonth;
		}
		if (dispMonth.toString() == "13") {
			dispYear = eval(thisday.innerText.substring(0, 4)) + 1;
			dispMonth = "01";
		}
		thisday.innerText = dispYear + "년 " + dispMonth + "월";
		searchSchedule(dispYear, dispMonth);
	}
	
	function nextYear() {
		dispYear= eval(thisday.innerText.substring(0, 4)) + 1;
		dispMonth= eval(thisday.innerText.substring(6, 8));
		if (dispMonth < 10)
			dispMonth = "0" + dispMonth;

		thisday.innerText = dispYear + "년 " + dispMonth + "월";
		searchSchedule(dispYear, dispMonth);
	}
	
	function searchSchedule(year, month){
		$.ajax({
			url: 'schedule.do',
			type: 'get',
			datatype:'text',
			data:{'year':year, 'month':month },
			success: parsingSchedule,
			error : function(e){
				 alert('일정을 서버에서 받아올 수 없습니다. 다시 조회회세요')
				 console.log(e);
			}
		});
	}
	
	function parsingSchedule(data){
		schedule = new Array();
		count=0;
		console.log('data>>>>>>>>>>>>>>>>>>>>>>>'+data);
		$.each(data, function(index, item){
			schedule[count++] = item.s_date;
			//console.log(item.s_date);
			//console.log(schedule);
			
		})	
		fUpdateCal(dispYear, dispMonth);
	}
</script>
<style type="text/css">
#schpop {
	display: none;
	margin: 50 auto;
	width: 200px;
	height: 100px;
	background: blue;
	color: #fff
}
</style>
</head>
<!-- STEP TWO: Copy this code into the BODY of your HTML document  -->

<body topmargin=0 leftmargin=0 marginwidth=0 marginheight=0>
	<form name="frmCalendarSample" method="post" action="">
		<input type="hidden" name="calSelectedDate" value="">
		<table class="event-calendar">
			<col>
			<col>
			<col>
			<col>
			<col>
			<col>
			<col>
			<thead>
				<tr>
					<th scope="col" class="controls"><span class="prev-mn"><a
							href="javascript:beforeYear()"></a></span></th>
					<th scope="col" class="controls"><span class="prev-mn"><a
							href="javascript:beforeMonth()"></a></span></th>
					<th scope="col" colspan="3" class="month"><font id="thisday"></font></th>
					<th scope="col" class="controls"><span class="next-mn"><a
							href="javascript:nextMonth()"></a></span></th>
					<th scope="col" class="controls"><span class="next-mn"><a
							href="javascript:nextYear()"></a></span></th>
				</tr>
				<tr>
					<th scope="col" title="Monday">Mon</th>
					<th scope="col" title="Tuesday">Tue</th>
					<th scope="col" title="Wednesday">Wed</th>
					<th scope="col" title="Thursday">Thu</th>
					<th scope="col" title="Friday">Fri</th>
					<th scope="col" title="Saturday">Sat</th>
					<th scope="col" title="Sunday">Sun</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><script language="JavaScript">
						/* var dCurDate = new Date();
						fDrawCal('${year}','${month}'); */
						var dCurDate = new Date();
						fDrawCal(dCurDate.getFullYear(),
								dCurDate.getMonth() + 1);
					</script></td>
				</tr>
			</tbody>
		</table>
	</form>
	<!-- <div class="modal" id="myModal">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="modalGalleryTitle" ></h4>
							</div>
							<div class="modal-body">
								<div id ="wrapper"></div>
							</div>							
							<div class="modal-footer" align="center">
								<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
							</div>
						</div>
					</div>
				</div>	 -->
</body>
<script language="JavaScript" for=window event=onload>
	<!-- Begin
		var dCurDate = new Date();
		var dMonth = dCurDate.getMonth() + 1;
		if (dMonth < 10)
			dMonth = "0" + dMonth;
		thisday.innerText = dCurDate.getFullYear() + "년 " + dMonth + "월";
	//  End -->
	</script>
</html>

