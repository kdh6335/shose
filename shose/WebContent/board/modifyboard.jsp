<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	th{
		width: 90px;
	}
	#content{
		height: 400px;
		width: 700px;
	}
	.form-control{
		width: 700px;
	}
	.container{
		margin: 0 auto;
		width: 50%;
	}
		
	#label{
		float: right;
		background-color: #f1404b;
		border: none;
		color: white;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		cursor: pointer;
		padding: 2px 8px 1px 8px;
		margin-top: 2px;
	}
	#label:hover{
		box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 
		0 6px 20px 0 rgba(0, 0, 0, 0.19);
	}
	.upload-name { 
	
		width : 614px;
		display: inline-block; 
		padding: 5px 5px; /* label의 패딩값과 일치 */ 
		font-size: inherit; 
		font-family: inherit; 
		line-height: normal; 
		vertical-align: middle; 
		background-color: white; 
		border: 1px solid #ebebeb; 
		border-bottom-color: #e2e2e2; 
		border-radius: .25em; 
		-webkit-appearance: none; /* 네이티브 외형 감추기 */ 
		-moz-appearance: none; appearance: none; 
		
	}
	.pull-right{
		float: right;
		background-color: #f1404b;
		border: none;
		color: white;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		cursor: pointer;
		padding: 1px 8px 1px 8px;
		margin-top: 5px;
		margin-right: 5px;
	}
	.pull-right:hover{
		box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 
					0 6px 20px 0 rgba(0, 0, 0, 0.19);
	}
	.CANCEL{
		float: right;
		background-color: #f1404b;
		border: none;
		color: white;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		cursor: pointer;
		padding: 1px 8px 1px 8px;
		margin-top: 5px;
		margin-right: 5px;
	}
	.CANCEL:hover{
		box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 
					0 6px 20px 0 rgba(0, 0, 0, 0.19);
	}
</style>
<script type="text/javascript">
$(document).ready(function() {
	
		//파일 업로드
		$("#files").on("change", function(){
			var filename = $(this)[0].files[0].name;
			
			$('.upload-name').val(filename);
		});
		
	var formObj = $("#insert");
	
	console.log(formObj);
	
	// SAVE
	$(".pull-right").on("click", function() {
		formObj.submit();
	});	
	
	// CANCEL
	$(".CANCEL").on("click", function() {
		var bno = $("#bno").val();
		
		self.location="boardbody.bizpoll?bno="+bno;
	});	
});
</script>

</head>
<body>
<div>
	<div class="container">
	        <form id ="insert" name="insert" action="modifyupdate.bizpoll" method="post" enctype="multipart/form-data">
	        <c:forEach items="${modifylist}" var="bDto">
	<table class="table table-bordered">
	    <thead>
	    <caption> 글쓰기 </caption>
	    <tbody>
	    		
	            <tr>
	                <th>제목: </th>
	                <td><input type="text" value="${bDto.title}" name="title" id="title" class="form-control"/></td>
	                <input type="hidden" name="bno" id="bno" class="form-control" value="${bDto.bno}" readonly="readonly">
	            </tr>
	            <tr>
	                <th>작성자: </th>
	                <td><input type="text" name="writer" value="${bDto.writer} " class="form-control" readonly="readonly"/></td>
	            </tr>
	            <tr>
					<th >첨부파일 : </th>
					<td>
						<span class="filter-50">
						<input class="upload-name" value="파일선택" disabled="disabled" >
						<input type="file" id="files" name="files" style="display: none">
						<label for="files" id="label">파일 첨부</label>
						</span>
					</td>
				</tr>
	            <tr>
	                <th>내용: </th>
	                <td><textarea cols="10" name="content" class="form-control" id="content">${bDto.content }</textarea></td>
	            </tr> 
	            <tr>
	                <td colspan="2">
	                    <input type="button" value="취소" class="CANCEL"/>
	                    <input type="submit" value="수정" class="pull-right"/>
	                </td>
	            </tr>
	    </tbody>
	    </table>
	    </c:forEach>
	        </form>
	    </div>
</div>
</body>
</html>