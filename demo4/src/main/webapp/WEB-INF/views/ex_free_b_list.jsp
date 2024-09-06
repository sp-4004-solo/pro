<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>자유게시판 리스트</title>
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
<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.anchor.js"></script>
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
	
	<!-- container -->
	<div id="container">

		<div id="location">
			<ol>
				<li><a href="#">HOME</a></li>
				<li><a href="#">COMMUNITY</a></li>
				<li class="last">ENJOY COFFEE</li>
			</ol>
		</div>
		
		<div id="outbox">		
			<div id="left">
				<div id="title2">COMMUNITY<span>커뮤니티</span></div>
						
			</div><script type="text/javascript">initSubmenu(3,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="mypage">
					<h2><strong>드론 배송 서비스</strong><span>드론을 이용한 오지 & 섬마을 배송서비스...</span></h2>
					
					<div class="imgListType">
						<ul>
				
							<!-- List -->
				<c:forEach  var="fr" items="${list }">
							<li>
								<tr>
									<td>${fr.f_bno }</td>
									<td>${fr.user_id }</td>
								</tr>
							 <div class="img"><img src="../images/dron/dron.jpg" width="100px" height="60px" alt="" /></div>
								<div class="txt">
									<div class="subject">
										<a href="/ex_free_b_view?f_bno=${fr.f_bno }">${fr.f_btitle }</a>
									</div>
									<div class="conf">${fr.f_bcontent }
									</div>
									<div class="data">
										<p>등록일 <span>${fr.f_bdate }</span></p>
										<p>조회수 <span>${fr.f_hit }</span></p>
									</div>
								</div>
							</li>
				</c:forEach>
							<!-- //List -->

					<div class="btnAreaList">
						<!-- 페이징이동1 -->
						<div class="allPageMoving1">
				<%-- <a href="#" class="n"><img src="../images/btn/btn_pre2.gif" alt="처음으로"/></a><a href="#" class="pre"><img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/></a>
						
				<!-- 페이지번호 표시 -->		
				<c:forEach var="pnum" begin="${pageDto.startPage}" end="${pageDto.endPage }" step="1">
						<!-- startPage부터 까지 endPage반복하여 페이지 번호를생성 -->
						<c:if test="${pnum != pageDto.page }">
							<a href="ex_free_b_list?page=${pnum}&category=${category}">${pnum}</a>
						</c:if>
						<c:if test="${pnum == pageDto.page }">
							<strong>${pnum}</strong>
						</c:if>	
				</c:forEach>
						<a href="/ex_free_board?page=${pageDto.page }">2</a>
						<a href="#" class="next"><img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/></a><a href="#" class="n"><img src="../images/btn/btn_next2.gif" alt="마지막페이지로"/></a>
 --%>
 
 <!-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
 
<!-- 처음페이지 -->
					<c:if test="${pageDto.page > 1 }">
						<a href="ex_free_b_list?page=${pageDto.startPage}" class="n">
							<img src="../images/btn/btn_pre2.gif" alt="처음으로"/>
						</a>
					</c:if>
					<c:if test="${pageDto.page == 1 }">
							<img src="../images/btn/btn_pre2.gif" alt="처음으로"/>
					</c:if>
					<!-- 처음페이지 -->
					<!-- 이전페이지 -->
					<c:if test="${pageDto.page>1}">
						<a href="/product/household_list?page=${pageDto.page-1}&daily_category=${daily_category}" class="pre">
							<img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/>
						</a>
					</c:if>
					<c:if test="${pageDto.page==1}">
							<img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/>
					</c:if>
					<!-- 이전페이지 -->

<c:forEach var="pnum" begin="${pageDto.startPage}" end="${pageDto.endPage }" step="1">
		<!-- startPage부터 까지 endPage반복하여 페이지 번호를생성 -->
		<c:if test="${pnum != pageDto.page }">
			<a href="ex_free_b_list?page=${pnum}&category=${category}">${pnum}</a>
		</c:if>
		<c:if test="${pnum == pageDto.page }">
			<strong>${pnum}</strong>
		</c:if>	
</c:forEach>
					

					<!-- 다음페이지 -->
					<c:if test="${pageDto.page < pageDto.maxPage }">
						<a href="/product/household_list?page=${pageDto.page + 1 }&daily_category=${daily_category}" class="next">
							<img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/>
						</a>
					</c:if>	
					<c:if test="${pageDto.page == pageDto.maxPage }">
							<img src="../images/btn/btn_next1.gif" alt="뒤페이지로"/>
					</c:if>	
					<!-- 다음페이지 -->
					<!-- 마지막페이지 -->
					<c:if test="${pageDto.page < pageDto.endPage }">
						<a href="/product/household_list?page=${pageDto.maxPage}&daily_category=${daily_category}" class="n">
							<img src="../images/btn/btn_next2.gif" alt="마지막페이지로"/>
						</a>
					</c:if>
					<c:if test="${pageDto.page == pageDto.endPage }">
							<img src="../images/btn/btn_next2.gif" alt="마지막페이지로"/>
					</c:if>
					<!-- 마지막페이지 -->


 <!-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
 
						</div>
						<!-- //페이징이동1 -->
						
					</div>

				</div>
					
					<!-- 페이지 넘버링 -->
					
					
					
					<div class="btnAreaList">
						<div class="bwright">
							<ul>
								<li><a href="ex_free_b_write" class="sbtnMini">글쓰기</a></li>
							</ul>
						</div>
					
					

					<div class="searchWrap">
						<div class="search">
							<ul>
								<li class="web"><img src="../images/txt/txt_search.gif" alt="search" /></li>
								<li class="se">
									<select>
										<option value="" />글쓴이</option>
										<option value="" />제목</option>
									</select>
								</li>
								<li><input type="text" class="searchInput" /></li>
								<li class="web"><a href="#"><img src="../images/btn/btn_search.gif" alt="검색" /></a></li>
								<li class="mobile"><a href="#"><img src="../images/btn/btn_search_m.gif" alt="검색" /></a></li>
							</ul>
						</div>
					</div>
					<!-- //포토 구매후기 -->


				</div>
			</div>
			<!-- //contents -->

		</div>
	</div>
	<!-- //container -->


	<%@ include file="./footer/footer.jsp" %>



</div>
</div>
</body>
</html>