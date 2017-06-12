<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
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
							<h2>April’s upcoming event</h2>
							<div class="event-description">
								<h3><a href="#">Libero tempore cum soluta nobis est eligendi optio cumque nihil</a></h3>
								<div class="metadata">
									<time datetime="2014-04-17T09:00">17.04.14 
									<span>09:00 AM</span></time>
									<span>Lorem ipsum dolor</span>
								</div>
								<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p>
								<a class="btn yellow" href="#">Learn more</a>
							</div>
						</div>
						<div class="widget-calendar">
							<jsp:include page="Calender.jsp"/>
							<div class="legend"><span class="upcoming">Upcoming event</span><!-- <span class="archival">Archival event</span> --> </div>
						</div>
					</div>
				</div>
				<div class="bottom-pink-border"></div>
			</section>
</body>
</html>



