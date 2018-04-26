<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

<style type="text/css">
#footer {
    width: 100%;
    border-top: 1px solid #555;
    margin: 50px auto 0;
}
#footer, #footer a, #footer select {
    color: #888;
}
#footer .toparea {
    padding: 12px 0;
    border-bottom: 1px solid #e8e8e8;
}
#footer .inner {
    width: 1260px;
    margin: 0 auto;
}
#footer .left {
    float: left;
}
#footer .toparea .fnb li {
    float: left;
    margin-right: 14px;
    line-height: 26px;
    white-space: nowrap;
    text-align: center;
    font-size: 13px;
    letter-spacing: 0.5px;
}
li {
    list-style: none;
}
#footer .right {
    float: right;
    text-align: right;
}
#footer .toparea .sns {
    font-size: 0;
    text-align: right;
}
#footer .toparea .sns li {
    float: left;
    margin-left: 7px;
}
#footer .middlearea {
    padding: 47px 0 44px;
    border-bottom: 1px solid #e7e7e7;
}#footer .inner {
    width: 1260px;
    margin: 0 auto;
}#footer .middlearea .inner > ul {
    display: table;
    width: 100%;
    height: 100%;
    font-size: 14px;
}#footer .middlearea .inner > ul > li:first-child {
    border-left: 0;
    padding-left: 0;
}#footer .middlearea .inner > ul > li {
    display: table-cell;
    padding: 0 40px;
    box-sizing: border-box;
    border-left: 1px solid #e9e9e9;
}#footer .middlearea .account {
    width: 24%;
}#footer .middlearea .fnb {
    width: 18%;
}#footer .middlearea .inner > ul > li:last-child {
    padding-right: 0;
}#footer .middlearea .customer .tel {
    margin-bottom: 15px;
    font-size: 40px;
    line-height: 30px;
    font-weight: 500;
    color: #333;
}#footer .middlearea .inner > ul > li > p {
    line-height: 20px;
}#footer .middlearea h3 {
    margin-bottom: 17px;
    font-size: 15px;
    font-weight: 700;
    color: #333;
    letter-spacing: 0.5px;
}#footer .middlearea .account .bank-link {
    margin-top: 15px;
}html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, th, td, img {
    margin: 0;
    padding: 0;
}#footer .middlearea .bnb li a i {
    display: table-cell;
    vertical-align: middle;
    font-size: 22px;
    color: #ccc;
    padding-left: 1px;
}.fa {
    display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
#footer .middlearea .bnb li a {
    display: table;
    width: 50px;
    height: 50px;
    background: #fff;
    border: 1px solid #ddd;
    border-radius: 50%;
    text-align: center;
}#footer .middlearea .bnb li span {
    display: none;
    color: #fff;
    font-size: 11px;
    font-weight: bold;
}#footer .middlearea .bnb li {
    float: left;
    margin: 0 0 0 13px;
}
#footer .inner:after {
    display: block;
    content: "";
    clear: both;
}#footer .toparea .fnb li:before{
	float: left;
    content: "";
    margin: 8px 14px 0 0;
    height: 9px;
    width: 1px;
    background: #ddd;
}

#footer .toparea .fnb li a {
    color: #333;
}a {
    text-decoration: none;
    color: #000;
    outline: none;
}#footer .middlearea .customer .tel:after{
	display: block;
    content: "";
    clear: both;
    width: 14px;
    height: 2px;
    margin-top: 15px;
    background: #333;
}
p {
    display: block;
    -webkit-margin-before: 1em;
    -webkit-margin-after: 1em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
}
#footer .middlearea .customer {
    width: 25%;
}
#footer .middlearea .inner > ul > li > ul > li > ul > li {
    display: inline-block;
    white-space: nowrap;
}
#footer .middlearea .inner > ul > li > ul > li > ul > li:first-child:after {
    display: inline;
    content: "/";
    margin: 0 3px;
}*, *:before, *:after {
    box-sizing: initial;
}
</style>

<script type="text/javascript">
$(document).ready(function(){
// 마이페이지 버튼을 클릭하면 이벤트 처리
		$("#mypage").on("click", function() {
			
			var dd =  "<%=session.getAttribute("loginUser")%>"
			
			
			if(dd != "null"){
				
				location.href = "passwordcheck.bizpoll";
				
			}else {
				alert("로그인 해주세요!!!!!!")
				$("#id01").css("display", "block");
				
				} 
		});
		
});
</script>
</head>
<body>

<div id="footer" class="xans-element- xans-layout xans-layout-footer"><div class="toparea">
		<div class="inner">
			<div class="left">
				<ul class="fnb">
					<li><a href="#">회사소개</a></li>
					<li class="privacy"><a href="#">개인정보취급방침</a></li>
					<li><a href="#">이용약관</a></li>
					<li><a href="#">이용안내</a></li>
					<li><a href="#"><i class="fa fa-envelope-o"></i> 제휴문의</a></li>
                    <li><a href="#">채용안내</a></li>
                    <li><a href="#">모델지원</a></li>
				</ul>
</div>
			<div class="right">

				<!-- SNS아이콘 모음 -->
				<ul class="sns">
<li class="use-facebook" style="display: none;">
						<a href="http://facebook.com/" class="facebook put-facebook" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a>
					</li>
					<li class="use-twitter" style="display: none;">
						<a href="http://twitter.com/" class="twitter put-twitter" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a>
					</li>
					<li class="use-instagram" style="display: none;">
						<a href="http://instagram.com/" class="instagram put-instagram" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a>
					</li>
					<li class="use-blog" style="display: none;">
						<a href="http://blog.naver.com/" class="blog put-blog" target="_blank"><i class="fa fa-bold" aria-hidden="true"></i></a>
					</li>
					<li class="use-cafe" style="display: none;">
						<a href="http://cafe.naver.com/" class="cafe put-cafe" target="_blank"><i class="fa fa-coffee" aria-hidden="true"></i></a>
					</li>
					<li class="use-kakao" style="display: none;">
						<a href="http://story.kakao.com/" class="kakao put-kakao" target="_blank"><span class="icocut"><i class="fa fa-quote-right" aria-hidden="true"></i></span></a>
					</li>
					<li class="use-yid" style="display: none;">
						<a href="#none" onclick="popWin = window.open('http://pf.kakao.com/_ZizJu','windows','width=700,height=600,scrollbars=yes'); popWin.focus(); return false;" class="rep-yid yid"><i>P</i></a>
					</li>
					<li class="use-ntalk" style="display: none;">
						<a href="#none" onclick="popWin = window.open('http://talk.naver.com/WCBXXN','windows','width=700,height=600,scrollbars=yes'); popWin.focus(); return false;" class="rep-ntalk ntalk"><i class="fa fa-comments" aria-hidden="true"></i></a>
					</li>
					<li class="use-weibo" style="display: none;">
						<a href="http://weibo.com/" class="weibo put-weibo" target="_blank"><i class="fa fa-weibo" aria-hidden="true"></i></a>
					</li>
					<li class="use-qq" style="display: none;">
						<a href="#none" onclick="popWin = window.open('http://www.qq.com/','windows','width=700,height=600,scrollbars=yes'); popWin.focus(); return false;" class="rep-qq qq"><i class="fa fa-qq" aria-hidden="true"></i></a>
					</li>
					<li class="use-pinterest" style="display: none;">
						<a href="http://pinterest.com/" class="pinterest put-pinterest" target="_blank"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a>
					</li>
					<li class="use-tumblr" style="display: none;">
						<a href="http://www.tumblr.com/" class="tumblr put-tumblr" target="_blank"><i class="fa fa-tumblr" aria-hidden="true"></i></a>
					</li>
					<li class="use-youtube" style="display: none;">
						<a href="http://youtube.com/" class="youtube put-youtube" target="_blank"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
					</li>
					<!-- 즐겨찾기(르블랑 제외) -->
					<!-- 바로가기(르블랑 제외) -->
				</ul>
</div>
		</div>
	</div>
<div class="middlearea ">
		<div class="inner">
			<ul>
<li class="customer">
					<!--<h3>고객센터</h3>-->
					<p class="tel"><i class="fa fa-microphone" aria-hidden="true"></i>1688-6559</p>
					<p class="rep-cstime">월 - 금&nbsp;:&nbsp; 오전10:00~오후5:00<br>점&nbsp;&nbsp;&nbsp;심&nbsp;:&nbsp; 오후01:00~오후2:00 <br>휴&nbsp;&nbsp;&nbsp;무&nbsp;:&nbsp; 토/공휴일</p>
				</li>
				<li class="account">
                    <h3><b>예금주 : (주)CauseU</b></h3>
					<ul class="ins-banking"><li class="ins-banking-1">농협&nbsp;-&nbsp; 301-0085-9011-51</li><li class="ins-banking-2">우리은행&nbsp;-&nbsp; 1005-701-858525</li><li class="ins-banking-3">신한은행&nbsp;-&nbsp; 100-027-391133</li><li class="ins-banking-4">국민은행&nbsp;-&nbsp; 272701-04-314105</li><li class="ins-banking-5">하나은행&nbsp;-&nbsp; 461-910012-79704 </li><li class="ins-banking-6">기업은행&nbsp;-&nbsp; 692-003617-04-017 </li></ul>
<p class="bank-link">
						<select name="selectbank" onchange="window.open(this.value)"><option value=""> 인터넷뱅킹 바로가기 </option>
<option value="https://www.kbstar.com"> 국민은행 </option>
<option value="http://www.citibank.co.kr/"> 씨티은행 </option>
<option value="http://www.shinhan.com"> 신한은행 </option>
<option value="https://www.kiupbank.co.kr"> 기업은행 </option>
<option value="https://www.wooribank.com"> 우리은행 </option>
<option value="https://www.kebhana.com"> 하나은행 </option>
<option value="http://www.scfirstbank.com"> 제일은행 </option>
<option value="https://www.kdb.co.kr"> 산업은행 </option>
<option value="https://www.pusanbank.co.kr"> 부산은행 </option>
<option value="https://www.kyongnambank.co.kr"> 경남은행</option>
<option value="https://www.chejubank.co.kr"> 제주은행 </option>
<option value="https://www.kjbank.com"> 광주은행 </option>
<option value="https://www.daegubank.co.kr"> 대구은행 </option>
<option value="https://www.jbbank.co.kr"> 전북은행 </option>
<option value="https://www.suhyup-bank.com"> 수협은행 </option>
<option value="https://banking.nonghyup.com"> 농협 </option>
<option value="https://www.epostbank.go.kr"> 우체국 </option></select></p>
				</li>
				<li class="fnb">
					<h3>즐겨찾는 메뉴</h3>
					<ul>
					<li>
					
					 <c:choose> 
	                        <c:when test="${empty sessionScope.loginUser}">
	                        
	                        
								<ul>
								<li class="xans-element- xans-layout xans-layout-statelogoff ">
									<a onclick="document.getElementById('id01').style.display='block'" style="cursor : pointer">
									로그인
									</a>
								</li>
								<li class="xans-element- xans-layout xans-layout-statelogoff ">
									<a href="Constract.bizpoll">
									회원가입
									</a>
								</li>
								</ul>
							</c:when>
							<c:otherwise>
		                    	<li><a href="#" class="logout">로그아웃</a></li>
		                    </c:otherwise>
							
						</c:choose>
						</li>
						<li><a href="#">관심상품</a></li>
						<li><a href="#">장바구니</a></li>
						<li><a href="#">주문조회</a></li>
						<li><a id="mypage" href="#">마이페이지</a></li>
					</ul>
</li>
				<li class="return rep-returnex">
					<h3>교환 / 반품</h3>
					<p>반품주소: 서울시 성북구 석관동 58-283 성북A터미널 [머시따]앞</p>
					<p>반품접수: 대한통운택배 (1588-1255)</p>
					<ul class="bnb">
						<li class="ico-notice"><a href="/board/free/list.html?board_no=1"><i class="fa fa-microphone" aria-hidden="true"></i><span>공지사항</span></a></li>
						<li class="ico-qna"><a href="/board/product/list.html?board_no=6"><i class="fa fa-comments" aria-hidden="true"></i><span>상품문의</span></a></li>
						<li class="ico-review"><a href="/board/product/list.html?board_no=4"><i class="fa fa-camera" aria-hidden="true"></i><span>구매후기</span></a></li>
						<li class="ico-order"><a href="/myshop/order/list.html"><i class="fa fa-credit-card-alt" aria-hidden="true"></i><span>주문조회</span></a></li>
						<li class="ico-cart"><a href="/order/basket.html"><i class="fa fa-folder-open" aria-hidden="true"></i><span>장바구니</span></a></li>
						<li class="ico-wish"><a href="/myshop/wish_list.html"><i class="fa fa-heart" aria-hidden="true"></i><span>관심상품</span></a></li>
					</ul>
</li>
			</ul>
</div>
	</div>
</div>
	

</body>
</html>