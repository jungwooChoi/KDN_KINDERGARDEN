<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="promo">
			<nav>
				<div id="slide">		
                <div class="slider">
                    <ul class="items">
                        <li><img src="images/slider-4.jpg" alt="" /></li>
                        <li><img src="images/slider-5.jpg" alt="" /></li>
                        <li><img src="images/slider-6.jpg" alt="" /></li>
                    </ul>
                </div>	
                <a href="#" class="prev"></a><a href="#" class="next"></a>
            </div>
            </nav>
			</section>
	<section id="main">
		<div class="top-pink-border"></div>
		<div class="event-wrap">
			<div class="block-event">
				<div class="upcoming-event">
					<h2>Today's Event</h2>
					<div class="event-description">		
						<c:choose>
							<c:when test="${!empty date.s_date}">
								<div class="metadata">
								<center><h4>${date.s_title}</h4></center>
									<time >${date.s_date}</time>															
								</div>
								<p style="overflow: auto; overflow-y: auto; overflow-x: auto; width: 100%; height: 265px; text-align: left; font-size: 12px; line-height: 160%">
										${date.s_contents}</p>								
							</c:when>
							<c:otherwise>
								<tr>
									<td class="tbl_cell1" width="80">일정이 없습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				<div style=width:150px;></div>
				<div class="widget-calendar">
					<jsp:include page="Calender.jsp" />
					<div class="legend">
						<center><span class="upcoming">Upcoming Event</span></center>
						<!-- <span class="archival">Archival event</span> -->
					</div>
				</div>
			</div>
		</div>
		<div class="bottom-pink-border"></div>
	</section>
</body>
</html>



