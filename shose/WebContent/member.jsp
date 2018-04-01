<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ include file="header.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/member.css">
<script type="text/javascript">

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
	
	
		$(document).ready(function(){
		
			$(".btn13").on("click", function(){
				
			
          	 var form = $('#frm_memeber'),
          	 uid = $('#reg_mb_id'),
          	 uname = $('#reg_mb_name'),
          	 upw = $('#reg_mb_password'),
          	 upwre = $('#reg_mb_password_re'),
          	 uphone = $('#reg_mb_hp'),
          	 uemail = $('#reg_mb_email'),
          	 uemail2 = $("#reg_mb_email2") ;
          	 
          	 var email2 = $("#reg_mb_email").val()+"@"+$("#reg_mb_email2").val();
          	 
          	 
          	var form2 = $.trim(form.val());
          	
            if(form2 == ""){
           	 
                  	var id = $.trim(uid.val());
                  	var name = $.trim(uname.val());
                  	var password = $.trim(upw.val());
                  	var passwordre = $.trim(upwre.val());
                  	var email = $.trim(uemail.val());
                  	var email3 = $.trim(uemail2.val());
                    var phone = $.trim(uphone.val());
                    var checkPass =/^[a-z0-9_-]{6,18}$/;
            


                   
                   if (id == ""){
                  	 uid.focus();
                  	 $("#span_id").css("display", "block");
                  	 return false;
                  	 
                  	 }else if($("#hidden").val()=="N"){
                  	   
                  	   alert("중복 체크 해주세요.");
                  	   return false;
                     }
                   
                   if (password == ""){
                  		 
                   		upw.focus();
                  	 	$("#span_pw").css("display", "block");
                  	 	return false;
                  	 	
                  	 }else if (!checkPass.test(password)){
                  		upw.focus();
                   	 	$("#span_pw").text("6~20자 이내 숫자, 영문만 사용하세요.").css("display", "block");
                   	 	return false;
                  	 }else if ( passwordre == ""){
                  		 
                    	upwre.focus();
                   	 	$("#span_pw").css("display", "block");
                   	 	return false;
                   	 	
                   	 }else if( password != passwordre){
                  		upwre.select();
                  		$("#span_pw").text("비밀번호가 일치하지 않습니다.").css("display", "block");
                  		return false;
                  	 }
                   
                   
                   
                   
                   	if (name == ""){
                   		
                      	 uname.focus();
                     	 $("#span_name").css("display", "block");
                     	 return false;
                     }
                   
                
                   var regEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i

                	
                   if (email == "" ){
                	   
                   		 uemail.focus();
                  		 $("#span_email").css("display", "block");
                  	 	 return false;
                  	 
                  	 } else if(email3 == ""){
                  		 
                  		 uemail2.focus();
                  		 $("#span_email").css("display", "block");
                  	 	 return false;
                  		 
                  	 } else if(!regEmail.test(email2)){
                  		 
                  		 $("#span_email").text("정확한 값을 입력해주세요.").css("display", "block");
                  		uemail.focus();
 	                   	 return false;
                  		 
                  	 } 
                   
                   
                   var lengthphone = phone.length;
                   var regPhone = /^((01[1|6|7|8|9])[1-9]+[0-9]{6,7})|(010[1-9][0-9]{7})$/;
                  
                   if (phone == ""){
                   	
                   	uphone.focus();
                  	 $("#span_phone").css("display", "block");
                  	 return false;
                  	 
                  	 } else if($.isNumeric(phone)==false){
                  		 
	                   	 $("#span_phone").text("숫자만 입력해주세요").css("display", "block");
	                   	uphone.focus();
	                   	uphone.val("");
	                   	 return false;
	                   	 
                  	 }else if(!regPhone.test(phone)){
                  		 
                  		 $("#span_phone").text("정확한 값을 입력해주세요.").css("display", "block");
                  		uphone.focus();
	                   	 return false;
	                   	 
                  	 }
                   	
                   
                   
                   
                  		
                   
                   $("#frm_memeber").submit();
            	}
            
			});
			
			
			 $("#reg_mb_id").blur(function(){
				 
     			var id2 =$(this).val();

				if(id2 == ""){
					 $(this).focus();
                 	 $("#span_id").css("display", "block");
                 	 return false;
                 	
				}else if(id2 != ""){
					
					$("#span_id").css("display", "none");
					
					$.ajax({
						url:"memajax.bizpoll",
						type: "POST",
						dataType :"json",
						data : "id2= " + id2,
						success :function(data){
							
							if(data.flag == 0 ){
								
								$("#span_id").text("중복된 아이디 입니다.").css("display", "block");
								$("#hidden").val("N");
							}else{
								
								$("#span_id").text("멋진 아이디 입니다.").css("display", "block").css("color","blue");
								$("#hidden").val("Y");
							}
						},
						
						error : function(){
							alert("System Error!!!");
							
						}
					});
				}
				
             });
             
             $("#reg_mb_password").blur(function(){
             	var upw = $('#reg_mb_password');
             	var pw = $.trim(upw.val());
     			if(pw != ""){
     				$("#span_pw").css("display", "none");
     			}
             });
             
             $("#reg_mb_password_re").blur(function(){
              	var upwre = $('#reg_mb_password_re');
              	var pwre = $.trim(upwre.val());
      			if(pwre != ""){
      				$("#span_pw").css("display", "none");
      			}
              });
             
             $("#reg_mb_name").blur(function(){
             	var uname = $('#reg_mb_name');
             	var name = $.trim(uname.val());
     			if(name != ""){
     				$("#span_name").css("display", "none");
     			}
             });
             
             $("#reg_mb_email").blur(function(){
             	var uemail = $('#reg_mb_email');
             	var email = $.trim(uemail.val());
     			if(email != ""){
     				$("#span_email").css("display", "none");
     			}
             });
             
             $("#reg_mb_email2").blur(function(){
              	var uemail = $('#reg_mb_email2');
              	var email = $.trim(uemail.val());
      			if(email != ""){
      				$("#span_email").css("display", "none");
      			}
              });
             
             $("#reg_mb_hp").blur(function(){
             	var uphone = $('#reg_mb_hp');
             	var phone = $.trim(uphone.val());
     			if(phone != ""){
     				$("#span_phone").css("display", "none");
     			}
             });
		
	});
		
	$(document).on("change", "#reg_mb_id", function(){
			
			$("#hidden").val("N");
			return false;
		});
			
	
	
	
	
	
</script>

<style type="text/css">
      .frm_info{
              display: block;
              padding: 10px;
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
      
      .frm_input{
              
              float: left;
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
		#span_id{
       		color: red;
       		display: none;
       }#span_name{
       		color: red;
       		display: none;
       }#span_age{
       		color: red;
       		display: none;
       }#span_phone{
       		color: red;
       		display: none;
       }#span_pw{
       		color: red;
       		display: none;
       }#span_pw2{
       		color: red;
       		display: none;
       }#span_email{
       		color: red;
       		display: none;
       		
       }
      
       #idck_btn{
       		float: left;
       		margin-left : 25px; 
       }
</style>
</head>
<body>

<div id="conteiner2">
<div id="conteiner">
       <form name="frm_memeber" action="memberinsert.bizpoll" id="frm_memeber" method="post" >
      <div class="tbl_frm01 tbl_wrap">
        <table>
        <caption>회원가입</caption>
              <tbody>
                    <tr>
                        <th scope="row"><label for="reg_mb_id">아이디</label></th>
                        <td>
                            <span class="frm_info">영문자, 숫자, _ 만 입력 가능. 최소 5자이상 입력하세요.</span>
                            <input type="text" name="mb_id" value="" id="reg_mb_id" required  class="frm_input required " minlength="3" maxlength="20" size="10">
                            <span id="span_id">아이디를 입력해주세요</span>
                            <span id="msg_mb_id"></span></td>
                    </tr>
                    <tr>
                        <th scope="row"><label for="reg_mb_password">비밀번호</label></th>
                        <td><input type="password" name="mb_password" id="reg_mb_password" required class="frm_input required" minlength="3" maxlength="20" size="10">
                         <span id="span_pw">비밀번호를 입력해주세요</span>
                        </td>
                        
                    </tr>
                    <tr>
                        <th scope="row"><label for="reg_mb_password_re">비밀번호 확인</label></th>
                        <td><input type="password" name="mb_password_re" id="reg_mb_password_re" required class="frm_input required" minlength="3" maxlength="20" size="10">
                        <span id="span_pw2">비밀번호를 틀립니다.</span>
                        </td>
                    </tr>
              </tbody>
        </table>
    </div>
    <div class="tbl_frm01 tbl_wrap">
        <table>
        <caption>개인정보 입력</caption>
        <tbody>
        <tr>
            <th scope="row"><label for="reg_mb_name">이름</label>       
            </th>
             
            <td>
            <input type="text" id="reg_mb_name" name="mb_name" value="" class="frm_input required " size="10" maxlength="4">
			<span id="span_name">이름을 입력해주세요</span>
            </td>
        </tr>
          

        		<tr>
            <th scope="row"><label for="reg_mb_email">E-mail</label></th>
            
            		<td>
                
		                <input type="text" name="mb_email" value="" id="reg_mb_email" class="frm_input email required" size="10"></input>
		                <span id="span">@</span>
		                <input type="text" name="mb_email2" value="" id="reg_mb_email2"  size="10"><!-- class="frm_input email required" --></input>
		                <select id="selmail">
		               	    <option value="directval">직접입력</option>
		                	<option value="naver.com">naver.com (네이버)</option>
		                	<option value="daum.net">daum.net (다음 카카오)</option>
		                	<option value="nate.com">nate.com (네이트온)</option>
		                	<option value="yahoo.com">yahoo.com (야후)</option>
		                	<option value="gmail.com">gmail.com (구글)</option>
		                </select>
		                <span id="span_email">이메일을 입력해주세요.</span>
            		</td>
        		</tr>


                <tr>
            <th scope="row"><label for="reg_mb_hp">휴대폰번호</label></th>
            <td>
                <input type="text" name="mb_hp" value="" id="reg_mb_hp"  class="frm_input " maxlength="11" size="10">
				<span id="span_phone">전화번호를 입력해주세요.</span>
				
				<input type="hidden" value="N" id="hidden" >


            </td>
        </tr>

                <tr>
            <th scope="row">
                주소
                            </th>
            <td>
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
        <input type="text" id="sample4_postcode" placeholder="우편번호">
		<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
		<input type="text" id="sample4_roadAddress" placeholder="도로명주소">
		<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
		<span id="guide" style="color:#999"></span>

		
            </td>
            
        </tr>
        </tbody>
		
        </table>
         <div>   
         
         		
         		<button class="danger btn btn13">회원가입</button>
         
         </div>
         </form>
        </div>
   </div>
  </div>
</body>
</html>