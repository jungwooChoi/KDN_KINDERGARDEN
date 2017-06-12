<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.kdn.model.domain.*"  %>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<jsp:useBean 	id="pageBean"         class="com.kdn.model.domain.PageBean" 
				scope="request"/>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<link href="css/bootstrap.css" rel="stylesheet">    
<title>KDN 어린이집 소개</title>
</head>
<body>
<div class="page-header" id="banner">
      <div class="row">
          <div class="col-lg-3 col-md-3 col-sm-4">
            <div class="list-group table-of-contents">
              <a class="list-group-item"  href="introducekindergarden.do">어린이집 소개</a>
              <a class="list-group-item"  href="introduceteacher.do">교사 소개</a>
              <a class="list-group-item"  href="introduceclass.do">학급 소개</a>
            </div>
          </div>

< 	<div class="col-lg-8">
	<div class="well bs-component">
		<form id="frm" method="post" action="introducekindergarden.do">

			<table width="800" border="0" cellpadding="0" cellspacing="0">
				<tr>
					
					<td width="450" ><font size="4" face="맑은고딕" color="black"></br> 
					<strong>KDN 어린이집 홈페이지 방문을 환영합니다.</strong>	</br></br>	</font>
					
					<font size="3" face="맑은고딕"> 
					본원은 2014년에 본사를 나주로 이전하고 나서 </br>
					개원하여 역사는 짧지만,			</br></br>
					다른 어린이집과 다르게 원생의 세밀한 케어와 관리로 </br>
					원생들의 정서함양과 성장에 더욱 힘쓰고 있습니다. </br></br>
					앞으로도 우리 어린이집에서는 원생들의 정서안정과 </br>
					사회적응력 향상에 힘쓰도록 하겠습니다. </br></br></br> </br></br> </font> 
					
					<font size="4" face="맑은고딕" color="black"> 
					<strong>     KDN 어린이집 원장 임수경</strong>	</br></br></br></br></br></br></br></br>	</font>
					
					</td>
					<td width="30">&nbsp;</td>
					<td width="350" ><img src="images/introducekindegarden.jpg" width="350" height="350"></td>
				</tr>
				
				<tr>
					<td width="52">&nbsp;</td>
					<td></td>
				</tr>
			</table>
		</form>
 </div>
 </div>
        </div>
      </div>
</body>
</html>


<!-- <div class="container_12">
	<div class="grid_3 bot-1">
		<ul class = "font">
			<li><a href="introducekindergarden.do" id="nav_int_menu_li2">유치원 소개</a></li>
			<li><a href="introduceteacher.do" id="nav_int_menu_li2">선생님 소개</a></li>
			<li><a href="introduceclass.do" id="nav_int_menu_li2">학급 소개</a></li>
		</ul>
	</div>

	<div class="grid_9">
		<form id="frm" method="post" action="introducekindergarden.do">
		
		
		<table width="800" height="800" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td colspan=2><img src="images/introduce01.jpg" width="300" height="50"></td>
				</tr>
				<tr></tr>
				<tr></tr>
				<tr></tr>
				<tr></tr>
				
			<p>
				KDN 어린이집 홈페이지 방문을 환영합니다.							</br>
				우리 어린이집은 2014년에 본사를 나주로 이전하고 나서 개원하여 역사는 짧지만,			</br>
				다른 어린이집과 다르게 원생의 세밀한 케어와 관리로 원생들의 정서함양과 성장에 더욱 힘쓰고 있습니다.</br>
				앞으로도 우리 어린이집에서는 원생들의 정서안정과 사회적응력 향상에 힘쓰도록 하겠습니다. </br></br>
			</p>
			
			<p align="center"><img src="images/test.jpg"/></br></br></br></p>
			
			<strong>원장 임수경</strong>
			
		</form>
	</div>

	
	<div class="container">
            <div class="row">
                Section Header
                <div class="col-md-12 col-sm-12 col-xs-12 section-header wow fadeInDown">
                    <h2><span class="highlight-text">About</span></h2>
                   
                    <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, nam corporis quas, saepe minima error aperiam dolorum aliquam, quis deserunt eos eius quisquam odio itaque.</p>
                </div>
                Section Header End

                <div class="col-md-6 col-sm-6 col-xs-12 custom-sec-img wow fadeInDown">
                    <img src="images/features.jpg" alt="Custom Image">
                </div>

                <div class="col-md-6 col-sm-6 col-xs-12 customized-text wow fadeInDown black-ed">
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa sit, numquam amet voluptatibus obcaecati ea maiores totam nostrum, ad iure rerum quas harum ipsum.  lobcaecati ea maiores totam nostrum, ad iure rerum quas harum ipsum. Rem ea ducimus quos quae quo.</p>
                    <div class="row"> 
                        <div class="col-md-11">
                            <strong>Bootstrap</strong>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam iusto, natus est ducimus saepe laborum</p>
                        </div>
                    </div>
                    <div class="row"> 
                        <div class="col-md-11">
                            <strong>Responisve Theme</strong>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam iusto, natus est ducimus saepe laborum Lorem ipsum dolor sit amet.</p>
                        </div>
                    </div>
                    <div class="row"> 
                        <div class="col-md-11">
                            <strong>HTML5/CSS3</strong>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam iusto, natus est ducimus saepe laborum Lorem ipsum dolor sit amet.</p>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
	
</div>
</body>
</html> -->