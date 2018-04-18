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
</style>
<script type="text/javascript">
$(document).ready(function() {
	// 게시글 등록 버튼을 클릭하면 이벤트 처리
	$(".pull-right").on("click", function() {
			
			$("#insert").submit();
	});	
	$(".list").on("click", function() {
		
		location.href = "boardlist.bizpoll"
	});	
});
</script>

</head>
<body>
	<div>
		<div class="container">
	      <form id ="insert" name="insert" action="boardinertsave.bizpoll" method="post" >
			<table class="table table-bordered">
			   <thead>
			    <caption> 글쓰기 </caption>
				    <tbody>
				            <tr>
				                <th>제목: </th>
				                <td><input type="text" placeholder="제목을 입력하세요." name="title" id="title" class="form-control"/></td>
				            </tr>
				            <tr>
				                <th>작성자: </th>
				                <td><input type="text" name="writer"  class="form-control" readonly="readonly" value="${id}"></td>
				            </tr>
				            <tr>
				                <th>내용: </th>
				                <td><textarea cols="10" placeholder="내용을 입력하세요. " name="content" class="form-control" id="content"></textarea></td>
				            </tr> 
				            <tr>
				                <td colspan="2">
				                    <input type="button" value="등록" class="pull-right"/>
				                    <input type="button" value="reset" class="pull-left"/>
				                    <input type="button" value="글 목록" class="pull-right list"/>
				                </td>
				            </tr>
				    </tbody>
			    </table>
	        </form>
	    </div>
	</div>
</body>
</html>