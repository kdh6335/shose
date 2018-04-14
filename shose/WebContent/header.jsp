<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- JSTL 라이브러리를 사용하기 위한 선언문 -->
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   <!-- prefix는 표기법  -->
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
		<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 

		<%
			response.setHeader("Cache-Control", "no-store");
			response.setHeader("Pragma", "no-cache");
		%>

		<%
    	// 줄바꿈을 위한 코딩
    	pageContext.setAttribute("br", "<br/>");
    	pageContext.setAttribute("cn", "\n");
		%> 


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/index.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">



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
		background-color: #f1404b;
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
	
	
	/* 로그인 모달창 CSS */
	
		a:link, a:visited{
		text-decoration: none;
		color: inherit;
	}
	#wrap{
		margin : 50px auto 0;
		border: 3px solid gray;
		width: 464px;
		height: 567px;
	}
	#kakao_header{
		height: 39px;
		padding-top: 16px;
		border-top: 4px solid #77aaad;
		border-bottom: 1px solid #d4d4d4;
		overflow: hidden;
	}
	#kakao_header a > span{
		font-family: 'KoPub Batang', serif;
		font-size: 30px;		
	}
	h1 {
		float: left;
		margin-left: 25px;
	}
	#kakao_logo{
		float: left;
		height : 22px;
		margin-top: 2px;
		font-size: 18px;
		font-weight: normal;
		line-height: 20px;
	}
	#kakao_logo > img {
		height: 20px;
		float: left;
		margin-right: 10px;
	}
	/* #kakao_logo span{
		
	}  */
	#kakao_help{
		float: right;
		margin-top: 2px;
		margin-right: 11px;
	}
	.list_help{
		float: left;
	}
	.list_help > li {
		float: left;
		margin-right: 14px;
	}
	.list_help > li > a{
		color: #777;
		letter-spacing: -1px; /* 자간 글자 간격 */
		font-size: 13px;
	}
	.list_help > li > a:hover{
		text-decoration: underline;
	}
	/*  */
	#kakao_content{
		margin: 10px auto;
		height: 600px;
		text-align: center;
	}
	#login_content {
		width: 270px;
		height: 394px;
		border: 1px solid #ddd;
		text-align: left;
		display: inline-block;
		position: relative;
		top: 100px;
	}
	#login_area{
		width: 270px;
		height: 372px;
		position: relative;
	}
	#subtitle{
		position: relative;
		height: 55px;
		margin: 22px auto 12px 0px;
		font-size: 40px;
		font-weight: bold;
		font-family: 'Nanum Pen Script', serif;	
		color: #252c41;
		text-align: center;	
	}
	#subtitle > img {
		width: 60px;
		height: 18px;
	}
	.idpw{
		color : #333;
		letter-spacing: -1px;
		background-color: white;
		width: 240px;
		height: 22px;
		border: 1px solid #e5e5e5;
		border-radius: 5px;
		font-weight: normal;
		font-size: 13px;
		line-height: 22px;
		padding: 8px 12px;
		margin-bottom: 15px;
		outline: none; /* input을 클릭하면 파란색 테두리가 사라진다.  */
		
	}
	#login_form{
		position: relative;
		padding: 10px;
	}
	#login_form > img{
		display: inline-block;
		width: 24px;
		height: 24px;
		position: absolute;
		top : 8px;
		right: 8px;
	}
	#remember{
		margin: -1px 0 16px;
		padding-top: 20px;
	}
	#remember > input {
		 color: #333;
		 margin: 3px 3px 3px 4px;
		 vertical-align: middle;
	}
	#remember > label {
		font-size: 13px;
		letter-spacing: -1px;
	}
	#remember > a{
		font-size: 13px;
		letter-spacing: -1px;
		color: #777!important;
	}
	#remember > span{
		display: inline-block;
		width: 1px;
		height: 11px;
		background-color: #ccc;
		margin: 4px 1px 0 3px;
		
	}
	#btn_login{
		display: inline-block;
		background-color: #252c41;
		border: 1px solid #252c41;
		width : 268px;
		padding-top: 5px;
		line-height: 38px;
		text-align: center;
		border-radius: 5px;
		font-family: 'KoPub Batang', serif;
		font-size: 30px;
		font-weight: bold;
		color: white;
		
		}
	#login_help{
		width: 270px;
		position: absolute;
		padding-top: 10px;
		bottom: 20px;
		font-size: 12px;
		letter-spacing: -1px;
		border-top: 1px solid #cfcfcf;
	}
	#login_help a{
		letter-spacing: -1px;
		color:#333;
	}
	#login_help a:hover{
		text-decoration: underline;
	}
	.right{
		display: inline-block;
		position: absolute;
		right: 0;
	}
	.right > a{
		color: #777!important; /* !important는 최고 권한으로 사용해준다. */
	}
	.right_bar{
		display: inline-block;
		width: 1px;
		height: 11px;
		background-color: #ccc;
		margin: 4px 1px 0 3px;
	}
	#kakao_footer{
		padding: 19px 30px 22px;
		border-top: 1px solid #d4d4d4;
		font-size: 12px;
		text-align: center;
		letter-spacing: -1px;
	}
	#kakao_footer .link_info{
		display: inline-block;
		line-height: 22px;
		color: #898989;
	}
	#kakao_footer .link_info:hover{
		text-decoration: underline;
	}
	
	#footer_link .txt_bar{
		display: inline-block;
		width: 1px;
		height: 8px;
		margin: 4px 1px 0 3px;
		font-size: 11px;
		background-color: #ccc;
	}
	.util_cont{
		position: relative;
		display: inline-block;
		font-size: 12px;
		text-align: center;
		letter-spacing: -1px;
	}
	.btn_info{
		display: inline-block;
		padding: 0;
		margin-top: -2px;
		font-size: 12px;
		line-height: 22px;
		color: #898989;
		vertical-align: top;
		border: 0 none;
		background-color: transparent;
		cursor: pointer;
	}
	#btn_semo{
		display: inline-block;
		font-size: 1px;
		position: absolute;
		top : 0px;
		right: -10px;
	}
	#footer_info{
		margin-top: 5px;
	}
	.txt_copyright{
		font-size: 12px;
		color: #919191;
	}
	.link_kakao:hover{
		text-decoration: underline;
	}
	#span_id{
		display: none;
		color: red;
	}
</style>



<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		
		$(".btn").on("click", function(){
				 
	     			var id2 =$("#loginid").val();
	     			var pw = $("#loginpw").val();
						
					if(id2 == ""){
						 $("#loginid").focus();
	                 	 $("#span_id").text("아이디를 입력해주세요").css("display", "block");
	                 	 return false;
	                 	
					}else if(pw == ""){
						 $("#loginpw").focus();
	                 	 $("#span_id").text("비밀번호를 입력해주세요").css("display", "block");
	                 	 return false;
	                 	
					}else {
						
						$("#span_id").css("display", "none");
						
						$.ajax({
							url:"loginck.bizpoll",
							type: "POST",
							dataType :"json",
							data : "id2=" +id2 +"&"+ "pw=" +  pw,
							success : function(data){
								
								if(data.flag == 0 ){
									
									alert("로그인 실패");
									$("#loginid").select();
									$("#span_id").text(" 아이디 또는 패스워드가 틀렸습니다. ").css("display", "block");
									
								}else{
									
									//location.href = "sessionLogin.bizpoll";
									alert("로그인성공");
									//alert($("#frm_memeber"));
									//$("#frm_memeber").submit();
									location.reload();
								} 
							},
							
							error : function(){
								alert("System Error!!!");
								
							}
						});
					}
					
					
					
					
			});
					
		
		
		$("#loginid").blur(function(){
         	var uid = $('#loginid');
         	var id = $.trim(uid.val());
 			if(id != ""){
 				$("#span_id").css("display", "none");
 			}
         });
		
		$("#loginpw").blur(function(){
         	var upw = $('#loginpw');
         	var pw = $.trim(upw.val());
 			if(pw != ""){
 				$("#span_id").css("display", "none");
 			}
 				
         });
		
	
	$("#logout").on("click", function(){
		
		$.ajax({
			url:"logout.bizpoll",
			type: "POST",
			dataType :"JSON",
			success : function(data){				
				if(data.flag == "0" ){
					
					alert("로그아웃 실패");
					
					
				}else{
					
					alert("로그아웃 성공");
					location.href = "index.bizpoll";
					//$("#frm_memeber").submit();
					//location.reload();
				} 
			},
			
			error : function(){
				alert("System Error!!!");
				
				}
			});
		
		
		
		
		});
		
		
	
	
	
	
	});
	
		

</script>
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
		<a href="Fboardlist.jsp">Free Board</a>
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
                        <c:choose> 
	                        <c:when test="${empty sessionScope.loginUser}">
	                        		<li><a id="id02" onclick="document.getElementById('id01').style.display='block'" style="cursor : pointer"> 로그인 </a>
			                        	<!-- <a href="login.bizpoll" > 로그인 </a> --></li>
			                        <li><a href="Constract.bizpoll"> 회원가입</a></li>
	                        </c:when>
		                    <c:otherwise>
		                    	<li>${sessionScope.loginUser.mname }(${sessionScope.loginUser.mid })</li>
		                    	<li><a href="#" id="logout">로그아웃</a></li>
		                    </c:otherwise>
                        </c:choose>
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
                        <li><a href="boardlist.bizpoll">고객행복센터</a></li>
                  
                  </ul>
            </div>
      
      </div>
      <!-- 2번째 줄 -->
      <div id="topArea" class="inner">
      	    <div class="head_inner">
            	<a href="index.bizpoll"><img src="image/logo2.png" id="main_logo" alt="로고" class="on -mov" onmouseover="this.src='image/logo.png'" onmouseout="this.src='image/logo2.png'" border="0"></a>
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

		<div class="w3-container">
                 <!--  <li><a href="login.bizpoll"> 로그인 class="w3-button w3-black" -->

		<!-- <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">Open Modal</button> -->

			<div id="id01" class="w3-modal">
 				<div class="w3-modal-content">
  					<div class="w3-container">
     					<span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
     					<div id="kakao_content">
								<form name="frm_memeber" action="sessionLogin.bizpoll" id="frm_memeber" method="post">
		
							<div id="login_content">
							
								<div id="login_area">
								
									<div id="subtitle">
									Login
										<!-- <img src="image/kakao_logo.png"> -->
									</div> 
									<div id="container">
											<input class="idpw loginid" type="text" id="loginid" name ="loginid" placeholder="아이디(이메일)"></input>
											<input class="idpw loginpw" type="password" id="loginpw" name ="loginpw" placeholder="비밀번호(4~16자리)"></input>
										<a href="#" id ="btn_login" class="btn">로그인</a>
										<span id="span_id">ID 또는 비밀번호가 틀렸습니다.</span>
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
										<a href="Constract.bizpoll">회원가입</a>
										<div class="right">
										<a href="#">아이디 찾기</a>
										<span class="right_bar"></span>
										<a href="#">비밀번호 찾기</a>
										</div>
									</div>
							
								</div>
							</div>
								</form> <!-- form 태그는  -->
						</div>
     				
     				</div>
 				</div>
			</div>
	</div>
</body>
</html>