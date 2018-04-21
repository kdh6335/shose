<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ include file="../header.jsp" %>
            
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript">
	
		$(document).ready(function(){
		
			$(".btn13").on("click", function(){
				
				var sessionpw = $("#sessionpw").val();
				var reg_mb_password = $("#reg_mb_password").val();
				var mid = $("#reg_mb_id").val();
				var new_password = $("#new_password").val();
				var new_password_re = $("#new_password_re").val();
				
				if(reg_mb_password == ""){
					
					$("#password").css("display","inline-block").text("비밀번호를 입력해주세요");
					
				}else if(sessionpw != reg_mb_password ){
					
					$("#password").css("display","inline-block").text("현재 비밀번호가 틀립니다.");
					
				}else if( new_password == "" || new_password_re == ""){
					
					$("#password").css("display","inline-block").text("새 비밀번호를 입력해주세요");
					
				}else if( new_password != new_password_re){
					
					$("#password").css("display","inline-block").text("새 비밀번호가 서로 맞지 않습니다.");
					
				}else{
					
					
					$.ajax({
						url:"passwordupdate.bizpoll",
						type: "POST",
						dataType :"json",
						data : "mid=" +mid +"&mpw=" +  new_password,
						success : function(data){
							
							if(data.flag == 0 ){
								
								alert("비밀번호 변경 실패");
								
							}else{
								
								alert("비밀번호 변경 성공");
								location.href = "personal.bizpoll?mid="+mid;
								
							} 
						},
						
						error : function(){
							alert("System Error!!!");
							
						}
					});
					
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
	.reg_mb_password{
		width: 200px;
	}
	#password{
		color: red;
		display: inline-block;
		float: left;
	}
</style>
</head>
<body>

<div id="conteiner2">
	<div id="conteiner">
	      <div class="tbl_frm01 tbl_wrap">
	        <table id="pscheck">
	        <caption>비밀 번호 변경</caption>
	              <tbody>
	                            <input type="hidden" name="mb_id" value="${sessionScope.loginUser.mid }" id="reg_mb_id"/>
	                    <tr>
	                        <th scope="row"><label for="reg_mb_password">현재 비밀번호</label></th>
	                        <td><input type="password" name="mb_password" id="reg_mb_password" class="frm_input required" minlength="3" maxlength="20">
	                        </td>
	                        
	                    </tr>
	                    <tr>
	                        <th scope="row"><label for="reg_mb_id">새 비밀번호</label></th>
	                        <td>
	                            <input type="password" name="new_password" id="new_password" class="frm_input required reg_mb_password" minlength="3" maxlength="20">
	                    </tr>
	                    <tr>
	                        <th scope="row"><label for="reg_mb_id">새 비밀번호 확인</label></th>
	                        <td>
	                            <input type="password" name="new_password_re"  id="new_password_re" class="frm_input required reg_mb_password" minlength="3" maxlength="20">
	                            
	                    </tr>
	                    <tr>
	                    	<th></th>
	                    	<td>
	                    	<span id="password" style="display: none;">비밀번호가 맞지 않습니다.</span>
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