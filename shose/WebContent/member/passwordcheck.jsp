<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
        <%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<link rel="stylesheet" type="text/css" href="../css/index.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../css/member.css">
<script type="text/javascript">
	
		$(document).ready(function(){
		
			$(".btn13").on("click", function(){
				
				var sessionpw = $("#sessionpw").val();
				var reg_mb_password = $("#reg_mb_password").val();
				
				alert(sessionpw);
				alert(reg_mb_password);
				
				if(sessionpw == reg_mb_password ){
					
					alert("비번이 확인 되었습니다.");
					
				}else{
					
					alert("비밀번호를 정확히 입력해주세요.");
					
				}
             });
             
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
            border-bottom: 1px solid #ddd;
      }
      #conteiner{
              display: inline-block;
              margin: 0 auto;
              border: 1px solid #ddd;
              width: 35%;

      }
      #conteiner2{
              text-align: center;
              margin-top: 25px;
      }
      
      .frm_input{
              
              float: left;
      }
     .danger{background-color: #f44336;}
	 .danger:hover {background-color: #da190b;}
	 .btn{
	 
		border: none;
		color: white;
		padding: 4px 25px;
		font-size: 16px;
		cursor: pointer; /* pointer = 마우스가 손가락으로 바뀐다. */
		border-radius: 10px;
		margin-top: 25px;
	}
	.btn2{
	
		border: none;
		color: white;
		padding: 10px 40px;
		font-size: 16px;
		cursor: pointer; /* pointer = 마우스가 손가락으로 바뀐다. */
		border-radius: 10px;
		
	}
	#pscheck{
		width: 100%;
		height: 120px;
	}
	#reg_mb_id{
		width: 200px;
	}
	#reg_mb_password{
		width: 200px;
	}
</style>
</head>
<body>

<div id="conteiner2">
	<div id="conteiner">
	      <div class="tbl_frm01 tbl_wrap">
	        <table id="pscheck">
	        <caption>내 정보<h6>회원님의 회원정보를 수정할 수 있습니다.<br>개인정보 보호를 위해 비밀번호를 입력해주세요.</h6></caption>
	        
	        
	              <tbody>
	                    <tr>
	                        <th scope="row"><label for="reg_mb_id">아이디</label></th>
	                        <td>
	                            <input type="text" name="mb_id" value="${sessionScope.loginUser.mid }" id="reg_mb_id" class="frm_input required " readonly="readonly" minlength="3" maxlength="20">
	                    </tr>
	                    <tr>
	                        <th scope="row"><label for="reg_mb_password">비밀번호</label></th>
	                        <td><input type="password" name="mb_password" id="reg_mb_password" class="frm_input required" minlength="3" maxlength="20">
	                         <span id="span_pw">비밀번호를 입력해주세요</span>
	                        </td>
	                        
	                    </tr>
	                 
	              </tbody>
	        </table>
	      </div>
	 </div>
	         <div>   
	         	<input type="hidden" id="sessionpw" value="${sessionScope.loginUser.mpw }">
	         	<input type="button" class="danger btn btn13" value="확인">
	         </div>
</div>


</body>
</html>