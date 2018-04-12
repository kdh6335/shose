<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   <!-- prefix는 표기법  -->
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../board/header.jsp" %>  
<script type="text/javascript">
$(document).ready(function() {
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	// SAVE
	$(".btn-primary").on("click", function() {
		formObj.submit();
	});	
	
	// CANCEL
	$(".btn-warning").on("click", function() {
		self.location="boardlist.bizpoll";
	});	
});
</script>
<form role="form" action="modifyupdate.bizpoll" method="post">
	<div class="box-body">
		<c:forEach items="${modifylist}" var="bDto">
		<div class="form-group">
			<label for="bno">번호</label>
			<input type="text" name="bno" id="bno" class="form-control" value="${bDto.bno}" readonly="readonly">
		</div>
		<div class="form-group">
			<label for="title">제목</label>
			<input type="text" name="title" id="title" class="form-control" value="${bDto.title}" >
		</div>
		<div class="form-group">
			<label for="content">내용</label>
			<textarea rows="3" name="content" id="content" class="form-control">${bDto.content }</textarea>
		</div>
		<div class="form-group">
			<label for="writer">글쓴이</label>
			<input type="text" name="writer" id="writer" class="form-control" value="${bDto.writer}" readonly="readonly">
		</div>
		</c:forEach>
	</div>
</form>
<div class="box-footer">
	<button type="submit" class="btn btn-primary">SAVE</button>
	<button type="submit" class="btn btn-warning">CANCEL</button>
</div>
<%@ include file="../board/footer.jsp" %>
