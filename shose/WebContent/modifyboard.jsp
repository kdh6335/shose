<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="header.jsp" %>
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
	var formObj = $("#insert");
	
	console.log(formObj);
	
	// SAVE
	$(".pull-right").on("click", function() {
		formObj.submit();
	});	
	
	// CANCEL
	$(".CANCEL").on("click", function() {
		self.location="boardlist.bizpoll";
	});	
});
</script>

</head>
<body>
<div>
	<div class="container">
	        <form id ="insert" name="insert" action="modifyupdate.bizpoll" method="post" >
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
	                <th>내용: </th>
	                <td><textarea cols="10" name="content" class="form-control" id="content">${bDto.content }</textarea></td>
	            </tr> 
	            <tr>
	                <td colspan="2">
	                    <input type="submit" value="SAVE" class="pull-right"/>
	                    <input type="submit" value="CANCEL" class="CANCEL"/>
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