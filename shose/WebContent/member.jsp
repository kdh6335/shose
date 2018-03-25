<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/member.css">
<style type="text/css">
      .frm_info{
              display: block;
      }
      td {
              padding: 7px 10px;
      }
      caption{
              text-align: left;
            padding:  15px;
            font-size: 18px;
            font-weight: bold;
            border-top: 1px solid #ddd;
      }
      #conteiner{
              display: inline-block;
              margin: 0 auto;
              border: 1px solid #ddd;

      }
      #conteiner2{
              text-align: center;
      }
      input{
              float: left;
      }
      .frm_info{
              padding: 10px;
      }
</style>
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
                        <li><a href="member2.html"> 회원가입</a></li>
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
<div id="conteiner2">
<div id="conteiner">
      <div class="tbl_frm01 tbl_wrap">
        <table>
        <caption>회원가입</caption>
              <tbody>
                    <tr>
                        <th scope="row"><label for="reg_mb_id">아이디</label></th>
                        <td>
                            <span class="frm_info">영문자, 숫자, _ 만 입력 가능. 최소 5자이상 입력하세요.</span>
                            <input type="text" name="mb_id" value="" id="reg_mb_id" required  class="frm_input required " minlength="3" maxlength="20">
                            <span id="msg_mb_id"></span>             </td>
                    </tr>
                    <tr>
                        <th scope="row"><label for="reg_mb_password">비밀번호</label></th>
                        <td><input type="password" name="mb_password" id="reg_mb_password" required class="frm_input required" minlength="3" maxlength="20"></td>
                    </tr>
                    <tr>
                        <th scope="row"><label for="reg_mb_password_re">비밀번호 확인</label></th>
                        <td><input type="password" name="mb_password_re" id="reg_mb_password_re" required class="frm_input required" minlength="3" maxlength="20"></td>
                    </tr>
              </tbody>
        </table>
    </div>
    <div class="tbl_frm01 tbl_wrap">
        <table>
        <caption>개인정보 입력</caption>
        <tbody>
        <tr>
            <th scope="row"><label for="reg_mb_name">이름</label></th>
            <td>
            <input type="text" id="reg_mb_name" name="mb_name" value="" required readonly class="frm_input required " size="10">

            </td>
        </tr>
                <tr>
            <th scope="row"><label for="reg_mb_nick">닉네임</label></th>
            <td>
                <span class="frm_info">
                    공백없이 한글,영문,숫자만 입력 가능 (한글6자, 영문12자 )<br>
                    닉네임을 바꾸시면 앞으로 15일 이내에는 변경 할 수 없습니다.
                </span>
                <input type="hidden" name="mb_nick_default" value="">
                <input type="text" name="mb_nick" value="" id="reg_mb_nick" required class="frm_input required nospace" size="10" maxlength="20">
                <span id="msg_mb_nick"></span>
            </td>
        </tr>

        <tr>
            <th scope="row"><label for="reg_mb_email">E-mail</label></th>
            <td>
                                <input type="hidden" name="old_email" value="">
                <input type="text" name="mb_email" value="" id="reg_mb_email" required class="frm_input email required" size="70" maxlength="100">
            </td>
        </tr>


                <tr>
            <th scope="row"><label for="reg_mb_hp">휴대폰번호</label></th>
            <td>
                <input type="text" name="mb_hp" value="" id="reg_mb_hp"  class="frm_input " maxlength="20">



            </td>
        </tr>

                <tr>
            <th scope="row">
                주소
                            </th>
            <td>
                <label for="reg_mb_zip" class="sound_only">우편번호</label>
                <input type="text" name="mb_zip" value="" id="reg_mb_zip"  class="frm_input " size="5" maxlength="6">
                <button type="button" class="btn_frmline" onclick="win_zip('fregisterform', 'mb_zip', 'mb_addr1', 'mb_addr2', 'mb_addr3', 'mb_addr_jibeon');">주소 검색</button><br>
                <input type="text" name="mb_addr1" value="" id="reg_mb_addr1"  class="frm_input frm_address " size="50">
                <label for="reg_mb_addr1">기본주소</label><br>
                <input type="text" name="mb_addr2" value="" id="reg_mb_addr2" class="frm_input frm_address" size="50">
                <label for="reg_mb_addr2">상세주소</label>
                <br>
            </td>
        </tr>
        </tbody>
        </table>
        </div>
   </div>
  </div>
</body>
</html>