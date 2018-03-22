<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
<title>Insert title here</title>
<style type="text/css">
/* ScrollToTop */
	button#myBtn {
		display: none;
		position: fixed;
		bottom: 20px;
		right: 30px;
		z-index: 99;
		font-size: 18px;
		border: none;
		outline: none;
		background-color: #f1404b;
		color: white;
		cursor: pointer;
		padding: 15px;
		border-radius: 4px;
	}
	button#myBtn:hover{
		background-color: #252c41;
	}
	
	.sidenav{
		height: 100%;
		width: 0;
		position: fixed;
		z-index: 1;
		top :0;
		left: 0;
		background-color: #111;
		overflow: hidden;
		transition : 0.5;
		padding-top: 60px;
	}
	
	/* /* Sidenav_Push */
	.sidenav a {
		padding: 8px 8px 8px 32px;
		text-decoration: none;
		font-size: 25px;
		color: #818181;
		display: block;
		transition : 0.3s;
			}
	.sidenav a:hover{
		color : #f1f1f1;
	}
	.sidenav .closebtn{
		position: absolute;
		top :0;
		right: 25px;
		font-size: 36px;
		margin-left: 50px;
	}
	
	div#main2 {
		transition : margin-left .5s;
		padding: 0px;
		position: fixed;
		/* z-index: 99; 
		top : 0; */
		left : 20px; 
		display: inline;
	}
	div#main2 > span{
		color : white;
		font-size: 20px;
	}
	@media screen and (max-height : 450px){
		.sidenav{padding-top: 15px;}
		.sidenav a {font-size: 18px;}
	}
</style>
</head>
<body>
<div id="header"> 


	<!-- 1번째 줄 시작, 로그인, 회원가입 등등 -->
      <div id="inner1" class="inner">
      	<div id = "mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">
			x
		</a>
		<a href="#">About</a>
		<a href="#">services</a>
		<a href="#">Clients</a>
		<a href="#">Contact</a>
	</div>
	
	<div id="main2">
		<span style="fount-size:50px; cursor:pointer" onclick="openNav()">
			≡
		</span>
	</div>
	<script type="text/javascript">
		function openNav(){
			document.getElementById("mySidenav").style.width="250px";
			document.getElementById("main").style.marginLeft="250px";
			}
		
		function closeNav(){
			document.getElementById("mySidenav").style.width="0";
			document.getElementById("main").style.marginLeft="0";
			
		}
	</script>
            <div class="head_inner">
            
                  <div id="link">
                        <a href = "#">BOOKEMARK+</a>                        
                        <a href = "#"><i class="fa fa-facebook-official"></i></a>
                        <a href = "#"><i class="fa fa-twitch"></i></a>
                  </div>
                  <ul id="member">
                        <li><a href="login.html"> 로그인</a></li>
                        <li><a href="member.html"> 회원가입</a></li>
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
</div>
</body>
</html>