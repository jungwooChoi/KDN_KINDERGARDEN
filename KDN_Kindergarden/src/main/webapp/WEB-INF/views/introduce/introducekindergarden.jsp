<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.kdn.model.domain.*"  %>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core"%> 
<jsp:useBean 	id="pageBean"         class="com.kdn.model.domain.PageBean" 
				scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Welcome</title>
	<link  rel="stylesheet" type="text/css" href="css/style1.css"  />
<style type="text/css">
.whole {
	width: 1000px;
	overflow : auto;
	border: 0px solid gray;
	margin-top: 50px;
}

.sidemenu {
	float: left;
	width: 250px;
	font-size: 15px;
	text-align: left;
	line-height : 35px;
	border: 0px solid gray;
}

.sidemenu>ul>li>a {
	width : 100%;
	color: #696969;
	cursor: pointer;
	border: 0px solid gray;
}

.content {
	float: left;
	width: 750px;
	margin-left: 50px;
	border: 0px solid gray;
}

}
</style>
<script type="text/javascript">

//조건 검색, 페이지 번호로 게시글 요청을 위한 메서드  
function pagelist(cpage){
	//input 양식의 hidden으로 선언된 page에 요청된 페이지 정보 셋팅 
	document.getElementById("pageNo").value=cpage;
	var frm = document.getElementById("frm");
	frm.action="listBoard.do";
	frm.submit();
}
function getBoard(b_id){
	//input 양식의 hidden으로 선언된 page에 요청된 페이지 정보 셋팅 
	document.getElementById("b_id").value=b_id;
	var frm = document.getElementById("frm");
	frm.action="searchBoard.do";
	frm.submit();
}
//게시글 번호나 타이틀을 클릭하면 해당 게시글 요청을 위한 메서드 

$(function(){
	$("#nav_int_menu_li1").css("color","#4C4C4C");
	$("#nav_int_menu_li1").css("font-weight","bold");
	
/* 	$("#nav_int_menu_li1").click(function(){
		$("#nav_int_menu_li1").css("color","#4C4C4C");
		$("#nav_int_menu_li1").css("font-weight","bold");
	});
	
	$("#nav_int_menu_li2").click(function(){
		$("#nav_int_menu_li1").css("color","#767676");
		$("#nav_int_menu_li1").css("font-weight","normal");
	}); */
	
});
</script>
</head> 
<body>

<div class="container_12">
	<div class="grid_3 bot-1">
		<ul class = "font">
			<li><a href="introducekindergarden.do" id="nav_int_menu_li2">유치원 소개</a></li>
			<li><a href="introduceteacher.do" id="nav_int_menu_li2">선생님 소개</a></li>
			<li><a href="introduceclass.do" id="nav_int_menu_li2">학급 소개</a></li>
		</ul>
	</div>

	<div class="grid_9">
		<form id="frm" method="post" action="introducekindergarden.do">
			<p>
				KDN 어린이집 홈페이지 방문을 환영합니다.							</br>
				우리 어린이집은 2014년에 본사를 나주로 이전하고 나서 개원하여 역사는 짧지만,			</br>
				다른 어린이집과 다르게 원생의 세밀한 케어와 관리로 원생들의 정서함양과 성장에 더욱 힘쓰고 있습니다.</br>
				앞으로도 우리 어린이집에서는 원생들의 정서안정과 사회적응력 향상에 힘쓰도록 하겠습니다. </br></br>
			</p>
			
			<p align="center"><img src="images/test.jpg"/></br></br></br></p>
			
			<strong>원장 최정우</strong>
			
		</form>
	</div>
	
	<!-- <div class="container">
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
        </div> -->
	
</div>
</body>
</html>