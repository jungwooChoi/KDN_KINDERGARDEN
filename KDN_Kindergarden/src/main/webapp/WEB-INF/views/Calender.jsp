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
<style>
/* a:link, a:active, a:visited {
	font-size: 9pt;
	color: 666666;
	text-decoration: none;
	font-family: 돋움;
}

a:hover {
	font-size: 9pt;
	color: 666666;
	text-decoration: none;
	font-family: 돋움;
}

td {
	text-align: center;
	font-family: "굴림";
	font-size: 9pt;
	color: #666666;
	line-height: 16px
}

.day {
	color: B00101
}

.week {
	color: ff3333
} */
</style>
<script language="javascript" src="/js/datepicker.js"></script>
<SCRIPT LANGUAGE="JavaScript">

var dDate = new Date();
var dCurMonth = dDate.getMonth();
var dCurDayOfMonth = dDate.getDate();
var dCurYear = dDate.getFullYear();
var objPrevElement = new Object();

function fToggleColor(myElement) {
	var toggleColor = "#B00101";
	if (myElement.id == "calDateText") {
		
		if (myElement.color.toUpperCase() == toggleColor) {
			myElement.color = "";
			} else {
				myElement.color = toggleColor;
				}
	} else if (myElement.id == "calCell") {
		for (var i in myElement.children) {
			if (myElement.children[i].id == "calDateText") {
				if (myElement.children[i].color.toUpperCase() == toggleColor) {
					myElement.children[i].color = "";
				} else {
					myElement.children[i].color = toggleColor;
				}				
			}
		}		
	}
}


function fSetSelectedDay(myElement){
	if (myElement.id == "calCell") {
		if (!isNaN(parseInt(myElement.children["calDateText"].innerText))) {
			//myElement.bgColor = "#c0c0c0";
			//objPrevElement.bgColor = "#FFFFFF";
			var popOption = "width=370, height=360, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
			window.open("searchBoard.do","",popOption);
			document.all.calSelectedDate.value = parseInt(myElement.children["calDateText"].innerText);
			objPrevElement = myElement;
			if (document.all.calSelectedDate.value < 10) document.all.calSelectedDate.value = "0"+document.all.calSelectedDate.value;
			// alert("cal value = " +document.frmCalendarSample.tbSelYear.value+"-"+document.frmCalendarSample.tbSelMonth.value+"-"+document.all.calSelectedDate.value);
			//var finalDate = document.frmCalendarSample.tbSelYear.value+"-"+document.frmCalendarSample.tbSelMonth.value+"-"+document.all.calSelectedDate.value;
			//var finalDay = document.all.calSelectedDate.value;
			var finalDate = thisday.innerText.substring(0,4)+thisday.innerText.substring(6,8)+document.all.calSelectedDate.value;
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
	function fBuildCal(iYear, iMonth, iDayStyle) {
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
		if (iDayStyle == 1) {
			aMonth[0][0] = "Sun";
			aMonth[0][1] = "Mon";
			aMonth[0][2] = "Tue";
			aMonth[0][3] = "Wed";
			aMonth[0][4] = "Thu";
			aMonth[0][5] = "Fri";
			aMonth[0][6] = "Sat";
		} else if (iDayStyle == 2) {
			aMonth[0][0] = "Sunday";
			aMonth[0][1] = "Monday";
			aMonth[0][2] = "Tuesday";
			aMonth[0][3] = "Wednesday";
			aMonth[0][4] = "Thursday";
			aMonth[0][5] = "Friday";
			aMonth[0][6] = "Saturday";
		} else if (iDayStyle == 3) {
			aMonth[0][0] = "일";
			aMonth[0][1] = "월";
			aMonth[0][2] = "화";
			aMonth[0][3] = "수";
			aMonth[0][4] = "목";
			aMonth[0][5] = "금";
			aMonth[0][6] = "토";
		} else {
			aMonth[0][0] = "Su";
			aMonth[0][1] = "Mo";
			aMonth[0][2] = "Tu";
			aMonth[0][3] = "We";
			aMonth[0][4] = "Th";
			aMonth[0][5] = "Fr";
			aMonth[0][6] = "Sa";
		}
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
	function fDrawCal(iYear, iMonth, sDateTextSize, sDateTextWeight, iDayStyle) {
		var myMonth;
		myMonth = fBuildCal(iYear, iMonth, iDayStyle);
		// <div class="cell-wrap">

		for (w = 1; w < 7; w++) {
			document.write("<tr>");
			for (d = 0; d < 7; d++) {
				document.write("<td id=calCell onMouseOver='fToggleColor(this)' onMouseOut='fToggleColor(this)' onclick=fSetSelectedDay(this)>");
				if (!isNaN(myMonth[w][d])) {
					document.write("<div id=calDateText class='cell-wrap archival'>"+ myMonth[w][d] + "</div>");
				} else {
					document.write("<div id=calDateText class='cell-wrap' onMouseOver='fToggleColor(this)' onMouseOut='fToggleColor(this)' onclick=fSetSelectedDay(this)> </div>");
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
				} else {
					calDateText[((7 * w) + d) - 7].innerText = " ";
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
</head>
</HEAD>

<!-- STEP TWO: Copy this code into the BODY of your HTML document  -->

<body topmargin=0 leftmargin=0 marginwidth=0 marginheight=0>
	<form name="frmCalendarSample" method="post" action="">
		<input type="hidden" name="calSelectedDate" value="">
			<table class="event-calendar">
								<col><col><col><col><col><col><col>
								<thead>
								<tr>
									<th scope="col" class="controls"><span class="prev-mn"><a href="javascript:beforeYear()"></a></span></th>
									<th scope="col" class="controls"><span class="prev-mn"><a href="javascript:beforeMonth()"></a></span></th>
									<th scope="col" colspan="3" class="month"><font id="thisday"></font></th>
									<th scope="col" class="controls"><span class="next-mn"><a href="javascript:nextMonth()"></a></span></th>
									<th scope="col" class="controls"><span class="next-mn"><a href="javascript:nextYear()"></a></span></th>
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
								fDrawCal(dCurDate.getFullYear(), dCurDate.getMonth() + 1,"12px", "bold", 3);
								</script></td>
								</tr>
								</tbody>
							</table>
	</form>

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

