<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript">
	
		$(document).ready(function(){
			
			
			
			//생년월일 값을 받아오면 받아온 값으로 기본값을 잡아주는 스크립트
			var mbirthmonth = $("#mbirthmonth").val();
			var mbirthday = $("#mbirthday").val();
			var memail2 = $("#memail2").val();
			var mmen = $("#mmen").val();
			
			
			if (mbirthmonth == "01"){
				$("#user_birth_month").val("02").attr("selected", "selected");
			}else if(mbirthmonth == "02"){
				$("#user_birth_month").val("02").attr("selected", "selected");
			}else if(mbirthmonth == "03"){
				$("#user_birth_month").val("03").attr("selected", "selected");
			}else if(mbirthmonth == "04"){
				$("#user_birth_month").val("04").attr("selected", "selected");
			}else if(mbirthmonth == "05"){
				$("#user_birth_month").val("05").attr("selected", "selected");
			}else if(mbirthmonth == "06"){
				$("#user_birth_month").val("06").attr("selected", "selected");
			}else if(mbirthmonth == "07"){
				$("#user_birth_month").val("07").attr("selected", "selected");
			}else if(mbirthmonth == "08"){
				$("#user_birth_month").val("08").attr("selected", "selected");
			}else if(mbirthmonth == "09"){
				$("#user_birth_month").val("09").attr("selected", "selected");
			}else if(mbirthmonth == "10"){
				$("#user_birth_month").val("10").attr("selected", "selected");
			}else if(mbirthmonth == "11"){
				$("#user_birth_month").val("11").attr("selected", "selected");
			}else if(mbirthmonth == "12"){
				$("#user_birth_month").val("12").attr("selected", "selected");
			}
			
			
			
			
			if (mbirthday == "01"){
				$("#user_birth_day").val("02").attr("selected", "selected");
			}else if(mbirthday == "02"){
				$("#user_birth_day").val("02").attr("selected", "selected");
			}else if(mbirthday == "03"){
				$("#user_birth_day").val("03").attr("selected", "selected");
			}else if(mbirthday == "04"){
				$("#user_birth_day").val("04").attr("selected", "selected");
			}else if(mbirthday == "05"){
				$("#user_birth_day").val("05").attr("selected", "selected");
			}else if(mbirthday == "06"){
				$("#user_birth_day").val("06").attr("selected", "selected");
			}else if(mbirthday == "07"){
				$("#user_birth_day").val("07").attr("selected", "selected");
			}else if(mbirthday == "08"){
				$("#user_birth_day").val("08").attr("selected", "selected");
			}else if(mbirthday == "09"){
				$("#user_birth_day").val("09").attr("selected", "selected");
			}else if(mbirthday == "10"){
				$("#user_birth_day").val("10").attr("selected", "selected");
			}else if(mbirthday == "11"){
				$("#user_birth_day").val("11").attr("selected", "selected");
			}else if(mbirthday == "12"){
				$("#user_birth_day").val("12").attr("selected", "selected");
			}else if(mbirthday == "13"){
				$("#user_birth_day").val("13").attr("selected", "selected");
			}else if(mbirthday == "14"){
				$("#user_birth_day").val("14").attr("selected", "selected");
			}else if(mbirthday == "15"){
				$("#user_birth_day").val("15").attr("selected", "selected");
			}else if(mbirthday == "16"){
				$("#user_birth_day").val("16").attr("selected", "selected");
			}else if(mbirthday == "17"){
				$("#user_birth_day").val("17").attr("selected", "selected");
			}else if(mbirthday == "18"){
				$("#user_birth_day").val("18").attr("selected", "selected");
			}else if(mbirthday == "19"){
				$("#user_birth_day").val("19").attr("selected", "selected");
			}else if(mbirthday == "20"){
				$("#user_birth_day").val("20").attr("selected", "selected");
			}else if(mbirthday == "21"){
				$("#user_birth_day").val("21").attr("selected", "selected");
			}else if(mbirthday == "22"){
				$("#user_birth_day").val("22").attr("selected", "selected");
			}else if(mbirthday == "23"){
				$("#user_birth_day").val("23").attr("selected", "selected");
			}else if(mbirthday == "24"){
				$("#user_birth_day").val("24").attr("selected", "selected");
			}else if(mbirthday == "25"){
				$("#user_birth_day").val("25").attr("selected", "selected");
			}else if(mbirthday == "26"){
				$("#user_birth_day").val("26").attr("selected", "selected");
			}else if(mbirthday == "27"){
				$("#user_birth_day").val("27").attr("selected", "selected");
			}else if(mbirthday == "28"){
				$("#user_birth_day").val("28").attr("selected", "selected");
			}else if(mbirthday == "29"){
				$("#user_birth_day").val("29").attr("selected", "selected");
			}else if(mbirthday == "30"){
				$("#user_birth_day").val("30").attr("selected", "selected");
			}else if(mbirthday == "31"){
				$("#user_birth_day").val("31").attr("selected", "selected");
			}
			
			
			// 메일 기본값 잡아는 스크립트
			if (memail2 == "naver.com"){
				$("#selmail").val("naver.com").attr("selected", "selected");
			}else if (memail2 == "daum.net"){
				$("#selmail").val("daum.net").attr("selected", "selected");
			}else if (memail2 == "nate.com"){
				$("#selmail").val("nate.com").attr("selected", "selected");
			}else if (memail2 == "yahoo.com"){
				$("#selmail").val("yahoo.com").attr("selected", "selected");
			}else if (memail2 == "gmail.com"){
				$("#selmail").val("gmail.com").attr("selected", "selected");
			}else{
				$("#selmail").val("directval").attr("selected", "selected");
			}
			
			// 성별 체크 기본값
			
			if(mmen == "남자"){
				$("#reg_mb_sung").val("남자").attr("checked", "checked");// 값이 남자이면 기본값을 남자로 체크
				$("#reg_mb_sung2").attr('disabled','disabled'); // 남자로 표시 되어있으면 여자는 비활성화 시킴
			}else if(mmen == "여자"){
				$("#reg_mb_sung2").val("여자").attr("checked", "checked");// 값이 여자이면 기본값을 남자로 체크
				$("#reg_mb_sung").attr('disabled','disabled');// 여자로 표시 되어있으면 여자는 비활성화 시킴
			}
			
			$("#passwordchange").on("click", function(){
				
				location.href = "passwordchange.bizpoll";
				
			});
			
			$("#memdelete").on("click", function(){
				
				var mid =$("#reg_mb_id").val();
				
				var Del = confirm("회원 탈퇴를 하시겠습니까?")

				if (Del == true) {
					
					
					location.href = "memdelete.bizpoll?mid="+mid;
					
				}else{
					
					alert("취소 되었습니다.");
					return false;
					
				}
			});
			
			$(".btn13").on("click", function(){
				
				var Del = confirm("회원정보를 수정 하시겠습니까?")

				if (Del == true) {
					
					$("#memberupdate").submit();
					
				}else{
					
					alert("취소 되었습니다.");
					return false;
					
				}
				
		
				
			
          	 var form = $('#memberinsert'),
          	 uname = $('#reg_mb_name'),
          	 uphone = $('#reg_mb_hp'),
          	 uemail = $('#reg_mb_email'),
          	 uemail2 = $('#reg_mb_email2'),
          	 ubrith = $('#reg_mb_month'),
          	 ubrith2 = $('#user_birth_month'),
          	 ubrith3 = $('#user_birth_day'),
          	 ujuso = $('#sample6_postcode'),
          	 ujuso2 = $('#sample6_address');
          	 
          	 var email2 = $("#reg_mb_email").val()+"@"+$("#reg_mb_email2").val();
          	 
          	 
          	var form2 = $.trim(form.val());
          	
            if(form2 == ""){
           	 
                  	var id = $.trim(uid.val());
                  	var name = $.trim(uname.val());
                  	var email = $.trim(uemail.val());
                  	var email3 = $.trim(uemail2.val());
                    var phone = $.trim(uphone.val());
                    var brith = $.trim(ubrith.val());
                    var brith2 = $.trim(ubrith2.val());
                    var brith3 = $.trim(ubrith3.val());
                    var juso = $.trim(ujuso.val());
                    var juso2 = $.trim(ujuso2.val());
            
                   var regEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

                   	
                	   if (brith == ""){
                  		 
                     		ubrith.focus();
                    	 	$("#span_brith").css("display", "block");
                    	 	return false;
                    	 	
                    	 }else if(brith2 == ""){
                   		 
                      		
                     	 	$("#span_brith").css("display", "block");
                     	 	return false;
                     	 	
                     	 }else if(brith3 == ""){
                   		 
                       		
                      	 	$("#span_brith").css("display", "block");
                      	 	return false;
                      	 	
                      	 }
                	
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
                   
                   if (juso == ""){
                      	
                  		ujuso.focus();
                 	 	$("#span_juso").css("display", "block");
                 	 	return false;
                 	 
                 	 }else if(juso2 == ""){
                       	
                   		ujuso2.focus();
                  	 	$("#span_juso").css("display", "block");
                  	 	return false;
                  	 
                  	 }
            	}
			});
			
             
             $("#reg_mb_name").blur(function(){
             	var uname = $('#reg_mb_name');
             	var name = $.trim(uname.val());
     			if(name != ""){
     				$("#span_name").css("display", "none");
     			}
             });
             
             $("#reg_mb_month").blur(function(){
              	var umonth = $('#reg_mb_month');
              	var month = $.trim(umonth.val());
      			if(month != ""){
      				$("#span_brith").css("display", "none");
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
             
             $("#sample6_postcode").blur(function(){
            	
              	var ujuso = $('#sample6_postcode');
              	var juso = $.trim(ujuso.val());
      			if(juso != ""){
      				$("#span_juso").css("display", "none");
      			}
            	 
             });
             
             $("#sample6_address").blur(function(){
             	
               	var ujuso2 = $('#sample6_address');
               	var juso2 = $.trim(ujuso2.val());
       			if(juso2 != ""){
       				$("#span_juso").css("display", "none");
       			}
             	 
              });
		
	});
		

	$(document).on("change", "#selmail", function(){
		var mail = $("#selmail").val();
		
		if (mail == "directval"){
			$("#reg_mb_email2").val("");
			$("#reg_mb_email2").focus();
			
		}else{
			
			$("#reg_mb_email2").val(mail);
		}
		
		return false;
	});
	
</script>
<title>Insert title here</title>

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
		padding: 5px 15px;
		font-size: 12px;
		cursor: pointer; /* pointer = 마우스가 손가락으로 바뀐다. */
		border-radius: 10px;
		margin-top: 10px;
		margin-left: 10px;
		
	}
	.btn2{
		border: none;
		color: white;
		padding: 10px 40px;
		font-size: 16px;
		cursor: pointer; /* pointer = 마우스가 손가락으로 바뀐다. */
		border-radius: 10px;
		
	}
		#span_id2{
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
       }#span_email{
       		color: red;
       		display: none;
       }
       #span_brith{
       		color: red;
       		display: none;
       }
       #span_juso{
       		color: red;
       		display: none;
       }
       #idck_btn{
       		float: left;
       		margin-left : 25px; 
       }
       #sample6_postcode{
       		float: left;
       }
       
       #sample6_address{
       		float: left;
       		margin-top: 10px;
       }
       #sample6_address2{
       		float: left;
       		margin-top: 10px;
       		margin-left: 15px;
       }
      #sample6{
      		float: left;
      		margin-left: 15px;
      }
      #selmail{
      		padding: 3px;
      		width: 170px;
      }
      #sung{
      		float: left;
      }
      #buttonsize{
      		height: 53px;
      }
      .category_drop > a{
		color: white;
	  }
	 .line3_li > a{
		color: white;
	  }
</style>
</head>
<body>

<div id="conteiner2">
	<div id="conteiner">
	   <form name="memberupdate" action="memupdate.bizpoll" id="memberupdate" method="post" >
	        <table>
	        <caption>개인정보</caption>
	        <tbody>
	        <tr>
                 <th scope="row"><label for="reg_mb_id">아이디</label></th>
                 <td>
                 <input type="text" name="mb_id" value="${list.mid }" id="reg_mb_id" class="frm_input required " readonly="readonly" minlength="3" maxlength="20" size="10">
                 <span id="span_id2">아이디를 입력해주세요</span>
                 <span id="msg_mb_id"></span>
                 </td>
            </tr>
	        <tr>
	            <th scope="row"><label for="reg_mb_name">이름</label>       
	            </th>
	             
	            <td>
	            <input type="text" id="reg_mb_name" name="mb_name" value="${list.mname }" class="frm_input required " readonly="readonly" size="10" maxlength="4">
				<span id="span_name">이름을 입력해주세요</span>
	            </td>
	       </tr>
	       <tr>
	            <th scope="row"><label for="reg_mb_sung">성별</label>       
	            </th>
	             
	            <td id="sung">
	            <input type="hidden" id="mmen" value="${list.mmen }">
	            <input type="radio" id="reg_mb_sung" name="reg_mb_sung" value="남자" class="required" checked="checked" >남자
	            <input type="radio" id="reg_mb_sung2" name="reg_mb_sung" value="여자" class="required">여자
	            </td>
	        </tr>
	        <tr>
	            <th scope="row"><label for="reg_mb_sung">생년월일</label>       
	            </th>
	             
	            <td id="sung">
		            <input type="text" id="reg_mb_month" name="reg_mb_month" value="${list.mbirthyear }" class="required" maxlength="4" size="10">년
		            <input type="hidden" id="mbirthmonth" value="${list.mbirthmonth }">
		            <input type="hidden" id="mbirthday" value="${list.mbirthday }">
		            
		            <select name="user_birth_month" id= "user_birth_month">
	                     <option value="01">01</option>
	                     <option value="02">02</option>
	                     <option value="03">03</option>
	                     <option value="04">04</option>
	                     <option value="05">05</option>
	                     <option value="06">06</option>
	                     <option value="07">07</option>
	                     <option value="08">08</option>
	                     <option value="09">09</option>
	                     <option value="10">10</option>
	                     <option value="11">11</option>
	                     <option value="12">12</option>
	                  </select>월
		              <select name="user_birth_day" id="user_birth_day">
	                        <option value="01">01</option>
	                        <option value="02">02</option>
	                        <option value="03">03</option>
	                        <option value="04">04</option>
	                        <option value="05">05</option>
	                        <option value="06">06</option>
	                        <option value="07">07</option>
	                        <option value="08">08</option>
	                        <option value="09">09</option>
	                        <option value="10">10</option>
	                        <option value="11">11</option>
	                        <option value="12">12</option>
	                        <option value="13">13</option>
	                        <option value="14">14</option>
	                        <option value="15">15</option>
	                        <option value="16">16</option>
	                        <option value="17">17</option>
	                        <option value="18">18</option>
	                        <option value="19">19</option>
	                        <option value="20">20</option>
	                        <option value="21">21</option>
	                        <option value="22">22</option>
	                        <option value="23">23</option>
	                        <option value="24">24</option>
	                        <option value="25">25</option>
	                        <option value="26">26</option>
	                        <option value="27">27</option>
	                        <option value="28">28</option>
	                        <option value="29">29</option>
	                        <option value="30">30</option>
	                        <option value="31">31</option>
	                    </select>
	                    일     
	                    <span id="span_brith">생년월일을 입력해주세요.</span>
	            </td>
	        </tr>
	
	        		<tr>
	            <th scope="row"><label for="reg_mb_email">E-mail</label></th>
	            
	            		<td>
	                
			                <input type="text" name="mb_email" value="${list.memail }" id="reg_mb_email" class="frm_input email required" size="10"/>
			                <span id="span">@</span>
			                <input type="text" name="mb_email2" value="${list.memail2 }" id="reg_mb_email2"  size="10"/>
			                <input type="hidden" id="memail2" value="${list.memail2 }">
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
	                <input type="text" name="mb_hp" value="${list.mphone }" id="reg_mb_hp"  class="frm_input " maxlength="11" size="12">
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
	        <input type="text" name ="sample6_postcode" id="sample6_postcode" value="${list.mjusonum}">
			<input type="button" onclick="sample6_execDaumPostcode()" id="sample6" value="우편번호 찾기"><br>
			<input type="text" name= "sample6_address" id="sample6_address" value="${list.mjuso}">
			<input type="text" name = "sample6_address2" id="sample6_address2" value="${list.mjuso2}">
			<span id="guide" style="color:#999"></span>
			<span id="span_juso">주소를 입력해주세요.</span>
	
			
	            </td>
	            
	        </tr>
	        </tbody>
			
	        </table>
	         <div id ="buttonsize">   
	         
	         		<input type="button" id="passwordchange" class="danger btn" value="비밀번호 변경">
	         		<input type="button" class="danger btn btn13" value="회원 수정">
	        		<input type="button" id="memdelete" class="danger btn" value="회원 탈퇴">
	         </div>
	         </form>
	        </div>
   </div>

</body>
</html>