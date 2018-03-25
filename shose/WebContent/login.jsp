<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="css/login.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div id="header"> 
	<!-- 1번째 줄 시작, 로그인, 회원가입 등등 -->
      <div id="inner1" class="inner">
            <div class="head_inner">
                  <div id="link">
                        <a href = "#">BOOKEMARK+</a>                        
                        <a href = "#"><i class="fa fa-facebook-official"></i></a>
                        <a href = "#"><i class="fa fa-twitch"></i></a>
                  </div>
                  <ul id="member">
                        <li><a href="login.html"> 로그인</a></li>
                        <li><a href="#"> 회원가입</a></li>
                        <li id = "li_drop">
                              <a href="#">마이페이지▼</a>
                              <div id = "dropdown">
                                    <ul>
                                    <li><a href="#">주문/배송조회</a></li>
                                    <li><a href="#">장바구니</a></li>
                                    <li><a href="#">위시리스트</a></li>
                                    <li><a href="#">쿠폰조회</a></li>
                                    </ul>
                              </div>                        
                        </li>
                        <li><a href="#">고객행복센터</a></li>
                  
                  </ul>
            </div>
      
      </div>
      <!-- 2번째 줄 -->
      <div id="topArea" class="inner">
      	    <div class="head_inner">
            	<a href="index.html"><img src="image/logo2.png" id="main_logo" alt="로고" class="on -mov" onmouseover="this.src='image/logo.png'" onmouseout="this.src='image/logo2.png'" border="0"></a>
            	<div id ="line2_search">
            		<div id= "line2_wrap">
            			<input id="search_keyword" name="search_keyword" type="text" placeholder="검색어를 입력해 주세요.">
            			<input id="search_btn" type="submit" value="검색">
            		</div>
            	</div>
            </div>
      </div>
      <!-- 3번째 줄 -->
      <div id = "category" class="inner">
            <div class="head_inner">
            <ul>
                  <li class="line3_li"><a href="#" id = "legend" class="category_a">운동화</a>
                        <div class="category_drop">
                                          <a href="#">런닝화/에어</a>
                                          <a href="#">워킹슈즈</a>
                                          <a href="#">캐주얼운동화</a>
                                          <a href="#">트래킹운동화</a>
                                          <a href="#">키높이운동화</a>                             
                              </div>                        
                  </li>
                  <li class="line3_li"><a href="#" class="category_a">구두</a>
                        <div class="category_drop">
                                          <a href="#">키높이 구두</a>
                                          <a href="#">정장 구두</a>
                             
                              </div>                        
                  </li>
                  <li class="line3_li"><a href="#" class="category_a">스니커즈</a></li>
                  <li class="line3_li"><a href="#" class="category_a">캐주얼 슈즈</a>
                              <div class="category_drop">
                                    <a href="#">보트화</a>
                                    <a href="#">슬립온</a>
                                    <a href="#">로퍼</a>
                                    <a href="#">모카신</a>                   
                              </div>                       
                        </li>
                  <li class="line3_li"><a href="#" class="category_a">부츠/워커</a>
                        <div class="category_drop">
                            <a href="#">로우</a>
                                    <a href="#">미들하이</a>
                        </div>
                  </li>
                  <li class="line3_li"><a href="#" class="category_a">슬리퍼</a>
                        <div class="category_drop">
                                    <a href="#">슬리퍼</a>
                                    <a href="#">플립플랍</a>
                                    <a href="#">스트랩샌들</a>
                                    <a href="#">아쿠아슈즈</a>                           
                              </div>                        
                  </li>
            </ul>
            </div>
</div>
		
	<div id="kakao_content">
		
		<div id="login_content">
		
			<div id="login_area">
			
				<div id="subtitle">
				Login
					<!-- <img src="image/kakao_logo.png"> -->
				</div> 
				<div id="container">
					<form method="post" id="login_form">
						<input class="idpw" type="text" id="login_id" placeholder="아이디(이메일)"></input>
						<input class="idpw" type="password" id="login_pw" placeholder="비밀번호(4~16자리)"></input>
					</form> <!-- form 태그는  -->
					<a href="#" id ="btn_login">로그인</a>
					<div id="remember">
						<input type="checkbox" name="remeber" id="remeber2">
						<label for="remeber2">아이디 저장</label>
						<span></span>&nbsp
						<a href="#">비회원 주문</a>&nbsp
						<span></span>&nbsp
						<a href="#">배송조회</a>
					</div>
					
				</div>
			
				<div id="login_help">
					<a href="#">회원가입</a>
					<div class="right">
					 <a href="#">아이디 찾기</a>
					 <span class="right_bar"></span>
					 <a href="#">비밀번호 찾기</a>
					</div>
				</div>
		
			</div>
		</div>
	</div>
	<!-- <div id="kakao_footer">
		<div id="footer_link">
			<a href="#" class="link_info">공지사항</a>
			<span class="txt_bar"></span>
			<a href="#" class="link_info">이용약관</a>
			<span class="txt_bar"></span>
			<a href="#" class="link_info">개인정보 처리방침</a>
			<span class="txt_bar"></span>
			<a href="#" class="link_info">운영정책</a>
			<span class="txt_bar"></span>
			<span class="util_cont">
				<button type="button" class="btn_info">한국어</button>
				<span id="btn_semo">▼</span>
			</span>
		</div>
		<div id="footer_info">
			<small class="txt_copyright">
				Copyright ⓒ
				<a href="#" class="link_kakao">Kakao Corp.</a>
				All rights reserved.
			</small>
		</div>
			
	</div> -->
</div>
</body>
</html>