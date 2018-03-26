<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ include file="header.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/member.css">
<script type="text/javascript">
	$(document).ready(function(){
		
		
	});
	
	$(document).on("click", "#idck_btn", function(){
		
		//새창의 크기
		cw=550;
		ch=300;
		// 스크린의 크기
		sw=screen.availWidth;
		sh=screen.availHeight;
		
		// 열린 창의 포지션 가운데로 오게하기
		px=(sw-cw)/2;
		py=(sh-ch)/2
		
		var id = $("#reg_mb_id").val();
		
		var url = "id_olap_ck.bizpoll?memberid="+id;
		
		window.open(url, "_blank_1",
					"toolbar=no, menubar=no, status=no, scrollbars=no, resizable=no, left="+px + ", top=" + py+ ", width="+cw +", height="+ch)
	});
</script>
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
      .danger{background-color: #f44336;}
	 .danger:hover {background-color: #da190b;}
	 .btn{
		border: none;
		color: white;
		padding: 5px 5px;
		font-size: 12px;
		cursor: pointer; /* pointer = 마우스가 손가락으로 바뀐다. */
		border-radius: 10px;
	}
	.btn2{
		border: none;
		color: white;
		padding: 10px 40px;
		font-size: 16px;
		cursor: pointer; /* pointer = 마우스가 손가락으로 바뀐다. */
		border-radius: 10px;
	}
</style>
</head>
<body>

<div id="conteiner2">
<div id="conteiner">
       <form name="frm_memeber" action="" target="_blank">
      <div class="tbl_frm01 tbl_wrap">
        <table>
        <caption>회원가입</caption>
              <tbody>
                    <tr>
                        <th scope="row"><label for="reg_mb_id">아이디</label></th>
                        <td>
                            <span class="frm_info">영문자, 숫자, _ 만 입력 가능. 최소 5자이상 입력하세요.</span>
                            <input type="text" name="mb_id" value="" id="reg_mb_id" required  class="frm_input required " minlength="3" maxlength="20">
                            <span id="msg_mb_id"></span><button id="idck_btn" class="btn danger">중복체크</button> </td>
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
                
        <input type="text" id="sample4_postcode" placeholder="우편번호">
		<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
		<input type="text" id="sample4_roadAddress" placeholder="도로명주소">
		<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
		<span id="guide" style="color:#999"></span>

		
            </td>
            
        </tr>
        </tbody>
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script>
    	function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>
        </table>
         <div>   
         
         		<button class="btn2 danger" >회원가입</button> 
         
         </div>
         </form>
        </div>
   </div>
  </div>
</body>
</html>