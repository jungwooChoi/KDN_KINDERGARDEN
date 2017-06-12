<!-- default page directive -->
<%@page session="true" contentType="text/html; charset=KSC5601"%>

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
			
			var popOption = "width=420, height=500, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
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
			window.opener.document.all.<%=request.getParameter("fieldName")%>[<%=request.getParameter("array")%>].value=finalDate;
			window.close();
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
	function fDrawCal(iYear, iMonth) {
		var myMonth;
		myMonth = fBuildCal(iYear, iMonth);
		// <div class="cell-wrap">
		
		var fdat;
		fdat = iYear+"0"+iMonth;
		
		for (w = 1; w < 7; w++) {
			document.write("<tr>");
			for (d = 0; d < 7; d++) {
				document.write("<td id=calCell onclick=fSetSelectedDay(this)>");
				if (!isNaN(myMonth[w][d])) {
					document.write("<div id=calDateText class='cell-wrap archival'>"+ myMonth[w][d] + "</div>");					
				} else {
					document.write("<div id=calDateText class='cell-wrap' onclick=fSetSelectedDay(this)> </div>");
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
					calDateText[((7 * w) + d) - 7].innerText = myMonth[w][d];
					$(calDateText[((7 * w) + d) - 7]).removeClass('archival').addClass('archival');
					
				} else {
					calDateText[((7 * w) + d) - 7].innerText = " ";
					$(calDateText[((7 * w) + d) - 7]).removeClass('archival')
				}
			}
		}
	}

	function beforeYear() {
		var dispYear = eval(thisday.innerText.substring(0, 4)) - 1;
		var dispMonth = eval(thisday.innerText.substring(6, 8));
		if (dispMonth < 10)	dispMonth = "0" + dispMonth;

		thisday.innerText = dispYear + "년 " + dispMonth + "월";
		fUpdateCal(dispYear, dispMonth);
		
	}

	function beforeMonth() {
		var dispYear = eval(thisday.innerText.substring(0, 4));
		var dispMonth = eval(thisday.innerText.substring(6, 8)) - 1;

		if (dispMonth < 10) {
			dispMonth = "0" + dispMonth;
		}
		if (dispMonth.toString() == "00") {
			dispYear = eval(thisday.innerText.substring(0, 4)) - 1;
			dispMonth = "12";
		}
		thisday.innerText = dispYear + "년 " + dispMonth + "월";
		fUpdateCal(dispYear, dispMonth);
	}

	function nextMonth() {
		var dispYear = eval(thisday.innerText.substring(0, 4));
		var dispMonth = eval(thisday.innerText.substring(6, 8)) + 1;

		if (dispMonth < 10) {
			dispMonth = "0" + dispMonth;
		}
		if (dispMonth.toString() == "13") {
			dispYear = eval(thisday.innerText.substring(0, 4)) + 1;
			dispMonth = "01";
		}
		thisday.innerText = dispYear + "년 " + dispMonth + "월";
		fUpdateCal(dispYear, dispMonth);
	}
	function nextYear() {
		var dispYear = eval(thisday.innerText.substring(0, 4)) + 1;
		var dispMonth = eval(thisday.innerText.substring(6, 8));
		if (dispMonth < 10)
			dispMonth = "0" + dispMonth;

		thisday.innerText = dispYear + "년 " + dispMonth + "월";
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
						var dCurDate = new Date();
						fDrawCal(dCurDate.getFullYear(),
								dCurDate.getMonth() + 1);
					</script></td>
				</tr>
			</tbody>
		</table>
	</form>
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

