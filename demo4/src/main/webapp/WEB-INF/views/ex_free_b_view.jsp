<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>자유게시판 글보기</title>
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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
							
			</div><script type="text/javascript">initSubmenu(3,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="mypage">
					<h2><strong>드론배송 서비스</strong><span>드론배송 서비스를 이용한후에 달라진점과...</span></h2>
					
					<div class="viewDivMt">
						<div class="viewHead">
							<div class="subject">
								<ul>
									<li>${fboard.f_btitle }</li>
								</ul>
							</div>
							<div class="data">
								<ul>
									<li class="tnone">등록일<span>${fboard.f_bdate }</span></li>
									<li class="tnone">조회수<span>${fboard.f_hit }</span></li>
								</ul>
							</div>
						</div>

						<div class="viewContents">
							${fboard.f_bcontent }
						</div>
					</div>

					<!-- 이전다음글 -->
					<div class="pnDiv web">
						<table summary="이전다음글을 선택하여 보실 수 있습니다." class="preNext" border="1" cellspacing="0">
							<caption>이전다음글</caption>
							<colgroup>
							<col width="100px" />
							<col width="*" />
							<col width="100px" />
							</colgroup>
							<tbody>
								<tr>
									<th class="pre">이전글</th>
							<c:if test="${prev.f_bno != null}">
									<td><a href="/ex_free_b_view?f_bno=${prev.f_bno }">${prev.f_btitle }</a></td>
							</c:if> 
							<c:if test="${prev.f_bno == null}">
									<td>이전 글이 없습니다.</td>
									<td>&nbsp;</td>
							</c:if> 
								</tr>
								<tr>
									<th class="next">다음글</th>
							<c:if test="${next.f_bno != null}">
									<td><a href="/ex_free_b_view?f_bno=${next.f_bno }">${next.f_btitle }</a></td>
							</c:if>
							<c:if test="${next.f_bno == null}">
									<td>다음 글이 없습니다.</td>
									<td>&nbsp;</td>
							</c:if> 
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //이전다음글 -->
					
					<!-- 댓글-->
					<div class="replyWrite">
						<ul>
							<li class="in">
								<p class="txt">총 <span class="orange"></span> 개의 댓글이 달려있습니다.</p>
								<p class="password">비밀번호&nbsp;&nbsp;<input type="password" id="cpw" class="replynum" /></p>
								<textarea id="ccontent" class="replyType"></textarea>
							</li>
							<li class="btn"><a onclick="comBtn()" class="replyBtn">등록</a></li>
						</ul>
						<p class="ntic">※ 비밀번호를 입력하시면 댓글이 비밀글로 등록 됩니다.</p>
					</div>
					<!-- <div class="replyBox">
						<ul>
							<li class="name">aaa<span>[ 2024-08-23 ]</span></li>
							<li class="txt">댓글</li>
							<li class="btn">
								<a href="#" class="rebtn">수정</a>
								<a href="" class="rebtn">삭제</a>
							</li>
						</ul>
					</div> -->
					<!-- //댓글 -->
					
					
					
<script type="text/javascript">
	let f_bno = "${f_bno}"
	function comBtn(){
		if(confirm("등록하시겠습니까? ")){
			$.ajax({
				url: "/cInsertOne",
				method: "post",
	 			//data: {"f_bno":32, "user_seq":1, "c_content":$("#ccontent").val(), "c_pw":$("#cpw").val()},
	 			data: {"c_content":$("#ccontent").val(), "c_pw":$("#cpw").val()},
				success: function(data){
					console.log(data);
					
				},
				error:function(){
					alert("실패");
				}
			});
			location.href= "/ex_free_b_list?f_bno=${f_bno }";
		}
	}
</script>





					<!-- Btn Area -->
					<div class="btnArea btline">
						<div class="bRight">
							<ul>
								<li><a href="/ex_free_b_modi?f_bno=${f_bno }" class="sbtnMini mw">수정</a></li>
									
								<li><a onclick = "delBtn()" class="sbtnMini mw">삭제</a></li>
<script type="text/javascript">
	function delBtn(){
		if(confirm("정말로 삭제하시겠습니까? ")){
			location.href= "/ex_free_b_delete?f_bno=${f_bno }";
		}
	}
</script>

<!-- <script>
	 var f_bno = "${f_bno}"
	console.log("f_bno = "+f_bno)
	function modiBtn(){
		location.href = "ex_free_b_modi?f_bno="+f_bno;
	} 
		"ex_free_b_modi?f_bno=${f_bno }"							
</script> -->

								<li><a href="ex_free_b_list" class="sbtnMini mw">목록</a></li>
							</ul>
						</div>
					</div>
					<!-- //Btn Area -->
					
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