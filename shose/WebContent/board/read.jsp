<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../board/header.jsp" %>   
<script type="text/javascript">
$(document).ready(function() {
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	// 수정
	$(".btn-warning").on("click", function() {
		formObj.attr("action", "/board/modify");
		formObj.attr("method", "get");
		formObj.submit();
	});
	
	// 삭제
	$(".btn-danger").on("click", function() {
		formObj.attr("action", "/board/remove");
		formObj.attr("method", "get");
		formObj.submit();
	});
	
	// 목록
	$(".btn-primary").on("click", function() {
		self.location = "/board/listAll";
	});	
});
</script>
<!-- Main Content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<!-- AdminLTE 제작한 box 속성 -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">READ BOARD</h3>
				</div>
				<!-- form속성에 action을 지정하지 않으면 현재 경로를 그대로 action의 대상 경로로 설정 -->
				<form role="form" method="post">
					<input type="hidden" name="bno" id="bno" value="${boardDTO.bno}">
				</form>
				
				<div class="box-body">
					<div class="form-group">
						<label for="title">Title</label>
						<input type="text" id="title" name="title" class="form-control" value="${boardDTO.title}" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="content">Content</label>
						<textarea class="form-control" id="content" name="content" rows="3" cols="" readonly="readonly">${boardDTO.content}</textarea>
					</div>
					<div class="forn-group">
						<label for="writer">Writer</label>
						<input type="text" id="writer" name="writer" class="form-control" value="${boardDTO.writer}" readonly="readonly" >
					</div>
				</div>
				<div>
					<button type="submit" class="btn btn-warning">Modify</button>
					<button type="submit" class="btn btn-danger">Remove</button>
					<button type="submit" class="btn btn-primary">LIST ALL</button>
				</div>
			</div>
		</div>
	</div>
</section>
<%@ include file="../board/footer.jsp" %> 