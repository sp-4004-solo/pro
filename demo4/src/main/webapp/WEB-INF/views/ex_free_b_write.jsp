<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title> 자유게시판 글쓰기 </title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN SHOP" />
<meta name="keywords" content="JARDIN SHOP" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<link rel="stylesheet" type="text/css" href="../css/reset.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/layout.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/content.css?v=Y" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/top_navi.js"></script>
<script type="text/javascript" src="../js/left_navi.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<!-- <script type="text/javascript" src="../js/jquery.easing.1.3.js"></script> -->
<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>



<!--[if lt IE 9]>
<script type="text/javascript" src="../js/html5.js"></script>
<script type="text/javascript" src="../js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">

$(document).ready(function() {
    
});

</script>
</head>
<body>



<!--익스레이어팝업-->
<div id="ieUser" style="display:none">
	<div class="iewrap">	
		<p class="img"><img src="../images/ico/ico_alert.gif" alt="알림" /></p>
		<p class="txt">IE버전이 낮아 홈페이지 이용에 불편함이 있으므로 <strong>IE9이상이나 다른 브라우저</strong>를 이용해 주세요. </p>
		<ul>
			<li><a href="http://windows.microsoft.com/ko-kr/internet-explorer/download-ie" target="_blank"><img src="../images/ico/ico_ie.gif" alt="IE 최신브라우저 다운" ></a></li>
			<li><a href="https://www.google.com/intl/ko/chrome/browser" target="_blank"><img src="../images/ico/ico_chrome.gif" alt="IE 최신브라우저 다운" ></a></li>
			<li><a href="http://www.mozilla.org/ko/firefox/new" target="_blank"><img src="../images/ico/ico_mozila.gif" alt="MOZILA 최신브라우저 다운" ></a></li>
			<li><a href="http://www.apple.com/safari" target="_blank"><img src="../images/ico/ico_safari.gif" alt="SAFARI 최신브라우저 다운" ></a></li>
			<li><a href="http://www.opera.com/ko/o/ie-simple" target="_blank"><img src="../images/ico/ico_opera.gif" alt="OPERA 최신브라우저 다운" ></a></li>		
		</ul>
		<p class="btn" onclick="msiehide();"><img src="../images/ico/ico_close.gif" alt="닫기" /></p>
	</div>
</div>
<!--//익스레이어팝업-->
<!--IE 6,7,8 사용자에게 브라우저 업데이터 설명 Div 관련 스크립트-->
 <script type="text/javascript">

     var settimediv = 200000; //지속시간(1000= 1초)
     var msietimer;

     $(document).ready(function () {
         msiecheck();
     });

     var msiecheck = function () {
         var browser = navigator.userAgent.toLowerCase();
         if (browser.indexOf('msie 6') != -1 ||
                browser.indexOf('msie 7') != -1 ||
				 browser.indexOf('msie 8') != -1) {
             msieshow();			 
         }
         else {
             msiehide();
         }
     }

     var msieshow = function () {
        $("#ieUser").show();
        msietimer = setTimeout("msiehide()", settimediv);
     }

     var msiehide = function () {
		$("#ieUser").hide();
        clearTimeout(msietimer);
     }
</script>

<div id="allwrap">
<div id="wrap">

		<%@ include file="./header/free_top.jsp" %>
	
	<!-- //GNB -->

	<!-- container -->
	<div id="container">

		<div id="location">
			<ol>
				<li><a href="#">HOME</a></li>
				<li><a href="#">COMMUNITY</a></li>
				<li class="last">사용 후기</li>
			</ol>
		</div>
		
		<div id="outbox">		
			<div id="left">
				<div id="title2">COMMUNITY<span>커뮤니티</span></div>
						
			</div><script type="text/javascript">initSubmenu(2,0);</script>



<script type="text/javascript">
	$(function(){
		$("#freeWBtn").click(function(){
			//alert("확인");
			a.jax({
				url : "ex_free_b_list",
				method : "post",
				data : {"f_btitle" : $("#f_btitle").val(),"f_bcontent" : $("#f_bcontent").val()},
				success : function(data){
					alert("성공");
					
					
				},
				error : function(){
					alert("실패");
				}
			})//ajax
		})//freeWBtn
	})//jqery
	
	

</script>


<form action="/ex_free_b_write" name="fr_b_w" method="post" enctype="multipart/form-data">
			
			<!-- form 테그로 전송시 반드시 입력해야 한다. -->
			<input type = "hidden" id = "user_id" name = "user_id" value = "aaa">
			<!-- aaa라는 임의의 로그인 아이디를 넣어줌 -->
			<!-- form 테그로 전송시 반드시 입력해야 한다. -->
			
			<!-- contents -->
			
			<div id="contents">
				<div id="mypage">
					<h2><strong>자유게시판</strong><span>자유롭게 작성하세요</span></h2>
					
					<div class="productTab normaltab">
						<ul>
							<li class="last"><a href="#" class="on">평가한다면.</a></li>
						</ul>						
					</div>
					
					
					
					<div class="checkDivTab">
						<table summary="분류, 구매여부, 평가, 제목, 상세 내용 순으로 상품평을 작성 하실수 있습니다." class="checkTable" border="1" cellspacing="0">
							<caption>상품평 작성</caption>
							<colgroup>
							<col width="19%" class="tw30" />
							<col width="*" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><span>분류</span></th>
									<td>
										<ul class="pta">
											<li>
												<select name="category1">
													<option value="">생활용품</option>
													<option value="">의약품</option>
												</select>
											</li>
											<!-- <li class="pt5">
												<select>
													<option value="">카테고리</option>
												</select>
											</li> -->
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row"><span>상품구매여부?</span></th>
									<td>
										<select>
											<option value="">구매했어요.</option>
										</select>
									</td>
								</tr>
								<tr>

									<th scope="row"><span>제목</span></th>
									<td>
										<input type="text" id="f_btitle" name="f_btitle"  class="wlong" />
									</td>
								</tr>
								<tr>
									<th scope="row"><span>상세 내용</span></th>
									<td>
										<textarea class="tta" id="f_bcontent" name="f_bcontent" ></textarea>
									</td>
								</tr>								
							</tbody>
						</table>
					</div>
								

					<!-- Btn Area -->
					<div class="btnArea">
						<div class="bCenter">
							<ul>
								<li><button type="submit" id="freeWBtn" name="freeWBtn" class="sbtnMini">확인</button></li>
								<!-- <li><a onclick="freeWBtn()" class="sbtnMini">확인</a></li> -->
								<li><button type="button" onclick="javascript:history.back()" class="nbtnbig">취소</button></li>																
								<!-- <li><a href="#" class="nbtnbig">취소</a></li> -->
						
							 </ul>
						</div>
					</div>
					<!-- //Btn Area -->
					
				</div>
			</div>
			<!-- //contents -->
			
			

</form>


		</div>
	</div>
	<!-- //container -->



<%@ include file="./footer/footer.jsp" %>
	
	


</div>
</div>
</body>
</html>