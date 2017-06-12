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
			<li><a href="introducekindergarden.do" id="nav_int_menu_li2">어린이집 소개</a></li>
			<li><a href="introduceteacher.do" id="nav_int_menu_li2">선생님 소개</a></li>
			<li><a href="introduceclass.do" id="nav_int_menu_li2">학급 소개</a></li>
		</ul>
	</div>

	<div class="grid_9">
		<form id="frm" method="post" action="introduceclass.do">
		
			<table width="800" border="0" cellpadding="0" cellspacing="0">
			
				<tr>
					<td> </td>
					<td> </td>
					<td><font size="4" face="맑은고딕" color="black" ></br> 
					<strong>햇님반 ( 만 1세 )</strong>	</br></br>	</font>
					</td>
				</tr>
				
				<tr>
					<td><img src="images/introducesunny.jpg" width="100" height="100"></td>
					<td width="52">&nbsp;</td>
					<td>		
						<font size="2" face="맑은고딕"> 
						영아의 기본적인 욕구에 기초하여 생활공간으로써의 기능이 중시되어야 하므로 				</br>
						정서적 안정감, 움직임의 욕구, 탐색적 욕구 등을 충족시킬 수 있도록 구성되어 있습니다.	</br></br>
						따라서 1세를 위한 실내환경은 아늑하고 편안하며 언어가 풍부하도록 꾸며줍니다.			</br>
						그리고 창의영역, 신체영역, 언어영역, 탐색영역으로 구분하여 탐색활동을 충분히 즐길 수 있도록 </br>
						도와줍니다. </br></br> </font>
					<td>	 			
				</tr>
				
				<tr>
					<td> </td>
					<td> </td>
					<td><font size="4" face="맑은고딕" color="black"></br> 
					<strong>달님반 ( 만 2세 )</strong>	</br></br>	</font>
					</td>
				</tr>
				
				<tr>
					<td><img src="images/introducemoony.jpg" width="100" height="100"></td>
					<td width="52">&nbsp;</td>
					<td>
						<font size="2" face="맑은고딕"> 
						활동성과 감각적인 탐색활동을 장려할 수 있는 공간이 제공되어야 할 뿐만 아니라, 						</br>
						집과 같은 분위기를 조성하여 유아가 편안하게 개별적인 보호를 받을 수 있는 곳이어야 합니다.		</br></br>
						만 2세를 위한 흥미영역은 그리기, 만들기, 책보기, 소꿉, 쌓기, 탐색, 조작, 음률 및 대근육 등이며, 	</br>
						놀잇감과 자료를 다양하게 구비하여 이를 자율적으로 사용할 수 있도록 합니다. 							</br></br> </font>
					<td> 			
				</tr>
				
				<tr>
					<td> </td>
					<td> </td>
					<td><font size="4" face="맑은고딕" color="black"></br> 
					<strong>해바라기반 ( 만 3~4세 )</strong>	</br></br>	</font>
					</td>
				</tr>
				
				<tr>
					<td><img src="images/introducesunflower.jpg" width="100" height="100"></td>
					<td width="52">&nbsp;</td>
					<td>
						<font size="2" face="맑은고딕"> 
						활동성과 감각적인 탐색활동을 장려할 수 있는 공간이 제공되어야 할 뿐만 아니라, 						</br>
						집과 같은 분위기를 조성하여 유아가 편안하게 개별적인 보호를 받을 수 있는 곳이어야 합니다.		</br></br>
						만 2세를 위한 흥미영역은 그리기, 만들기, 책보기, 소꿉, 쌓기, 탐색, 조작, 음률 및 대근육 등이며, 	</br>
						놀잇감과 자료를 다양하게 구비하여 이를 자율적으로 사용할 수 있도록 합니다. 							</br></br> </font>
					<td> 			
				</tr>
				
				<tr>
					<td> </td>
					<td> </td>
					<td><font size="4" face="맑은고딕" color="black"></br> 
					<strong>장미반 ( 만 5세 )</strong>	</br></br>	</font>
					</td>
				</tr>
				
				<tr>
					<td><img src="images/introducerose.jpg" width="100" height="100"></td>
					<td width="52">&nbsp;</td>
					<td>
						<font size="2" face="맑은고딕"> 
						5세반은 흥미영역을 중심으로 구성하여 유아가 다양한 활동을 자율적이고 주도적으로 	</br>
						할 수 있도록 합니다. 																							</br></br>
						낮은 분리대와 칸막이, 이동식 교구장, 가리개, 책꽂이 등으로 구분하여 							</br>
						각 영역별 특수성이 유지될 수 있도록 하면서도 다른 영역의 활동들과의 연계나 통합이 	</br>
						잘 이루어지도록 합니다.																						</br></br>	
						또한 유아의 관심과 흥미를 더욱 확장시켜주고 개념이나 기술을 익힐 수 있도록 				</br>
						교사가 특별히 준비해주는 학습센터를 마련합니다.														</br></br>
						취학 전 학급에서의 활동영역은 쌓기놀이영역, 역할놀이영역, 미술영역, 언어영역, 			</br>
						수조작영역, 과학영역, 음률영역, 컴퓨터영역 등입니다.												</br></br></br></br></br></br></font>
					<td> 			
				</tr>
				
				<!-- <tr>
					<td width="52">&nbsp;</td>
					<td><font size="4" face="맑은고딕" color="black"></br> 
					<strong>해바라기반 ( 만 3~4세 )</strong>	</br></br>	</font>
					
					<font size="2" face="맑은고딕"> 
					3~4세 유아의 놀이활동과 학습은 잘 조작된 실내,외 환경에서 통합적으로 이루어지게 됩니다. 		</br></br>
					따라서 놀이를 활성화 하고 실내,외 환경을 효율적으로 사용하도록 하기 위해서 							</br>
					유아가 자신의 흥미나 계획에 따라 자유롭게 놀이나 활동을 하도록											</br> 
					흥미영역별로 설비와 자료를 잘 선택하여 구성하여야 합니다.													</br></br>
					만 3세를 위해 구성 가능한 흥미영역은 언어, 미술, 역할놀이, 쌓기놀이, 탐색, 조작, 음률 등이고,		</br>
					만 4세는 쌓기놀이, 역할놀이, 미술, 언어, 수, 과학, 조작 등입니다.</br></br> </font> 			
				</tr>
				
				<tr>
					<td width="52">&nbsp;</td>
					<td><font size="4" face="맑은고딕" color="black"></br> 
					<strong>장미반 ( 만 5세 )</strong>	</br></br>	</font>
					
					<font size="2" face="맑은고딕"> 
					5세반은 흥미영역을 중심으로 구성하여 유아가 다양한 활동을 자율적이고 주도적으로 		</br>
					할 수 있도록 합니다. 																							</br></br>
					낮은 분리대와 칸막이, 이동식 교구장, 가리개, 책꽂이 등으로 구분하여 							</br>
					각 영역별 특수성이 유지될 수 있도록 하면서도 다른 영역의 활동들과의 연계나 통합이 	</br>
					잘 이루어지도록 합니다.																						</br></br>	
					또한 유아의 관심과 흥미를 더욱 확장시켜주고 개념이나 기술을 익힐 수 있도록 				</br>
					교사가 특별히 준비해주는 학습센터를 마련합니다.														</br></br>
					취학 전 학급에서의 활동영역은 쌓기놀이영역, 역할놀이영역, 미술영역, 언어영역, 			</br>
					수조작영역, 과학영역, 음률영역, 컴퓨터영역 등입니다.												</br></br></br></br></br></br>
					</font>
				</tr> -->
				
			</table>
		</form>
	</div>
	
</div>
</body>
</html>
