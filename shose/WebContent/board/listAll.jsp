<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../board/header.jsp" %>
<script type="text/javascript">
$(document).ready(function() {
	
	
	// 게시글 등록 버튼을 클릭하면 이벤트 처리
	$(".btn-primary").on("click", function() {
		location.href = "boardInsertView.bizpoll";
	});	
});
</script>

<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form element -->
			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">LIST ALL PAGE</h3>
				</div>
				
				<div class="box-body">
					<table class="table table-boarded">
						<tr style="width:10px">
							<th>No</th>
							<th>Title</th>
							<th>Writer</th>
							<th>Regdate</th>
							<th style="width:40px">Viewcnt</th>
						</tr>
						
						  <c:forEach items="${boardlist}" var="bDto">
							  <tr>
							  	<td>${bDto.bno}</td>
							  	<td><a href="/board/read?bno=${bDto.bno}">${bDto.title}</a></td>
							  	<td>${bDto.writer}</td>
							  	<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${bDto.regdate}"/></td>
							  	<td>${bDto.viewont}</td>
						  </tr>
						  </c:forEach>
					</table>
					
					
					<button type="submit" class="btn btn-primary">게시글 등록</button>
					
				</div>
				<div class="box-footer">Footer</div>
				
				
				
			</div>
		</div>
	</div>
</section>
<!-- 컨트롤러의 success를 처리하기 위한 스크립

밑에다가 쓴 이유가 있음 -->
<script type="text/javascript">
	var result="${msg}";
	
	if(result == "SUCCESS"){
		alert("처리가 완료 되었습니다.");
	} 
</script>
<%@ include file="../board/footer.jsp" %>