<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   <!-- prefix는 표기법  -->
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
    <%@ include file="../header.jsp" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
	.line3_li > a {
    	color: white!important;
    }
    .category_drop > a {
   		color: white!important;
	}
	#bo_list{
		width: 70%;
		display: table;
    	margin: 0px auto;
    	border-collapse: separate;
    	height: 80%;
    	/* border: 1px solid #222; */
	}
	thead {
	    display: table-header-group;
	    vertical-align: middle;
	    border-color: inherit;
	}
	.tbl_wrap table {
	    width: 100%;
	    border-collapse: collapse;
	    border-spacing: 0;
	    table-layout:fixed;
	}
	td{
		nowrap;
	}
	.td_subject{
		text-align: left;
	}
	#jb-container {
	    display: table;
	    margin: 0px auto;
	    width: 1110px;
	    border-collapse: separate;
	    height: 80%;
	    border: 1px solid #222;
	}
	html, h1, h2, h3, h4, h5, h6, form, fieldset, img {
	    margin: 0;
	    padding: 0;
	    border: 0;
	}
	tr {
	    display: table-row;
	    vertical-align: inherit;
	    border-color: inherit;
	}
	#bo_list .td_num {
	    width: 80px;
	    text-align: center;
	}
	.tbl_head01 td {
	    padding: 7px 5px;
	    border-top: 1.5px solid #e5e5e5;;
	    border-bottom: 1.5px solid #e5e5e5;;
	    line-height: 1.5em;
	    word-break: break-all;
	}
	#conteiner2 {
	    text-align: center;
	}
	#conteiner {
	    display: inline-block;
	    margin: 0 auto;
	    border: 1px solid #ddd;
	}
	#name_list{
		width: 400px;
	}
	#bo_list_total{
		float: left;
	    padding: 15px;
	}
	.tbl_head01 thead th {
	    padding: 8px 0;
	    border-top: 2px solid #666;
	    border-bottom: 2px solid #666;
	    /* background: #161616;
	    color: #ccc; */
	    font-size: 0.95em;
	    text-align: center;
	    letter-spacing: -0.1em;
	}
	.table_width{
		width: 100px;
	}
	.table_width2{
		width: 50px;
	}
	#num_list{
		list-style-type : none;
		display: inline-block;
	}
	#num_list li{
		float: left;
		margin: 0 4px 0 0;
		display: inline-block;
		padding: 7px;
		font :bold;
	}
	.select_s {
	    padding-left: 5px;
	    height: 23px;
	    border: 1px solid #555;
	    background: #222;
	    color: #A5A5A5;
	    vertical-align: middle;
	}
	select {
    	margin: 0;
	}
	textarea, select {
	    font-family: dotum;
	    font-size: 1em;
	}
	option {
	    font-weight: normal;
	    display: block;
	    white-space: pre;
	    min-height: 1.2em;
	    padding: 0px 2px 1px;
	}
	.frm_input {
	    height: 22px;
	    padding-left: 5px;
	    border: 1px solid #333;
	    /* background: #000;
	    color: #A0A0A0; */
	    vertical-align: middle;
	    line-height: 2em;
	}
	.btn_submit {
	    padding: 0 7px;
	    height: 24px;
	    line-height: 1em;
	    border: 0;
	    background: #444;
	    color: #999;
	    letter-spacing: -0.1em;
	    cursor: pointer;
	}
	.ico{
		margin-top: 2px;
		font-size: 8px;
    	padding: 0 4px 0 3px;
    	vertical-align: middle;
	}
	#btn_submit{
		float: right;
		margin: 20px;
	}
	.active{
		color: blue;
		font-weight: bold;
	}
	#detgl_count{
		color: #ff050f;
	}#count{
		text-align: left;
	}
	.search{
		color: red;
	}
	#new{
		color: red;
	}
</style>
<script type="text/javascript">
$(document).ready(function() {
	
	var hidden = $("#hidden").val();
	var select_range = $("#select_range").val();
	
	
	if (select_range == "번호순▼"){
		
		$("#sfl2").val("번호순▼").attr("selected", "selected");
		
	}else if(select_range == "날짜순▼"){
		
		$("#sfl2").val("날짜순▼").attr("selected", "selected");
		
	}else if(select_range == "조회순▼"){
		
		$("#sfl2").val("조회순▼").attr("selected", "selected");
		
	}else if(select_range == "제목순▼"){
		
		$("#sfl2").val("제목순▼").attr("selected", "selected");
		
	}else if(select_range == "추천순▼"){
		
		$("#sfl2").val("추천순▼").attr("selected", "selected");
		
	}else if(select_range == "번호순▲"){
		
		$("#sfl2").val("번호순▲").attr("selected", "selected");
		
	}else if(select_range == "날짜순▲"){
		
		$("#sfl2").val("날짜순▲").attr("selected", "selected");
		
	}else if(select_range == "조회순▲"){
		
		$("#sfl2").val("조회순▲").attr("selected", "selected");
		
	}else if(select_range == "제목순▲"){
		
		$("#sfl2").val("제목순▲").attr("selected", "selected");
		
	}else if(select_range == "추천순▲"){
		
		$("#sfl2").val("추천순▲").attr("selected", "selected");
		
	}else if(select_range == "제목"){
		
		$("#sfl").val("제목").attr("selected", "selected");
		
	}else if(select_range == "내용"){
		
		$("#sfl").val("내용").attr("selected", "selected");
		
	}else if(select_range == "제목내용"){
		
		$("#sfl").val("제목내용").attr("selected", "selected");
		
	}else if(select_range == "아이디"){
		
		$("#sfl").val("아이디").attr("selected", "selected");
	}
	
	if(hidden==0){
		$("#stx").focus();
		$("#count").css("height","60px").css("text-align" , "right");
	}else{
		$("#count").css("height","20px").css("text-align" , "left");
	}
	
	// 게시글 등록 버튼을 클릭하면 이벤트 처리
	$(".btn_submit").on("click", function() {
		
		var dd =  "<%=session.getAttribute("loginUser")%>"
		
		
		if(dd != "null"){
			
			$("#insert").submit();
			
			
		}else {
			alert("로그인 해주세요!!!!!!")
			$("#id01").css("display", "block");
			
			} 
	});	
	$(".btn_submit2").on("click", function(){
		$("#fsearch").submit();
	});
	
	$("#sfl2").on("change", function(){
		
		
		
		var select = $("#sfl2").val();
		
		$("#range").submit();
		
/* 		 $.ajax({
				url : "boardlist.bizpoll",
				type : "POST",
				dataType : "json",
				data : "select=" + select,
				success : function(data) {

					// 댓글 등록후 내용 초기화 하는 코드
					// 댓글을 다시 불러드리기 위한 호출 함수

				},

				error : function() {
					alert("System Error!!!");

				}
			});  */

	});
	
});
</script>
</head>
<body>

<div id="conteiner2">
	<div id="bo_list">
		<div class="bo_fx">
			<div id="bo_list_total">
				<form action="boardlist.bizpoll" method="get" id="range">
					<select name ="sf2" id="sfl2" class="select_s">
							<option value="번호순▲">번호순▲</option>
							<option value="번호순▼">번호순▼</option>
							<option value="제목순▲">제목순▲</option>
							<option value="제목순▼">제목순▼</option>
							<option value="날짜순▲">날짜순▲</option>
							<option value="날짜순▼">날짜순▼</option>
							<option value="조회순▲">조회순▲</option>
							<option value="조회수▼">조회순▼</option>
							<option value="추천순▲">추천순▲</option>
							<option value="추천수▼">추천순▼</option>
							<input type="hidden" id="select_range" value="${select }${sfl }" >
					</select>
				</form>
			</div>
			
		</div>
			<!-- <form name="fboardlist" id="fboardlist" method="post"> -->
				<div class="tbl_head01 tbl_wrap">
					<table>
						<thead>
							<tr>
								<th scope="col" class="table_width2">번호</th>
								<th scope="col" id="name_list">제목</th>
								<th scope="col" class="table_width">글쓴이</th>
								<th scope="col" class="table_width">날짜</th>
								<th scope="col" class="table_width2">조회</th>
								<th scope="col" class="table_width2">추천</th>
							</tr>
						</thead>
						<tbody>
								<c:forEach items="${boardlist}" var="bDto">
								<fmt:formatDate value="${today}" pattern="yyyy-MM-dd" var="today2"/>
								<fmt:formatDate value="${bDto.regdate}" pattern="yyyy-MM-dd" var="regdate2"/>
							<tr>
								<td class="td_num">${bDto.bno}</td>
								<td class="td_subject"><a href="boardbody.bizpoll?bno=${bDto.bno}">
								
									<c:forEach var = "i" begin="1" end="${bDto.re_level}">
										&nbsp;&nbsp;
									</c:forEach>
									${bDto.title}
								
								</a>  
									<c:if test="${bDto.count ne 0}">
										<span id="detgl_count"><a href="boardbody.bizpoll?bno=${bDto.bno}&comment=ture">[${bDto.count}]</a></span>
									</c:if>
									<c:if test="${bDto.filename != '-'}">
										<a href="#"><i class="fa fa-save"></i></a>
									</c:if>
									<c:if test="${today2 == regdate2}">
										<span id="new">new!</span>
									</c:if>
								</td>
								<td class="td_name sv_use">${bDto.writer}</td>
								
								
								
							<c:choose>
								<c:when test="${today2 == regdate2}">
								<td class="td_date"><fmt:formatDate pattern="HH:mm" value="${bDto.regdate}"/></td>
								</c:when>
								<c:otherwise>
								<td class="td_date"><fmt:formatDate pattern="yyyy-MM-dd" value="${bDto.regdate}"/></td>
								</c:otherwise>
							</c:choose>
								
								<td class="td_hit">${bDto.viewont}</td>
								<td class="td_vote">${bDto.sweet}</td>
							</tr>
								</c:forEach>
							</tbody>
							<c:if test="${flag eq '1' }">
							<tr>
								<td></td>
								<td id="count">
									<c:if test="${count ne 0 }">
										<span class="search">'${stx}'</span>으로 검색한 결과는 <span class="search">'${count}'</span>건 검색 되었습니다.
									</c:if>
									<c:if test="${count eq 0 }">
										<span class="search">'${stx}'</span>으로 검색한 결과는 <span class="search">'${count}'</span>건 검색 되었습니다. 다른 이름으로 검색해주세요.
									</c:if> 
										<input type="hidden" id="hidden" value="${count }">
								</td>
							
							</tr>
							</c:if>
					</table>
				
				</div>
				<div>
					  <c:if test="${flag eq '1' }">
						<ul id = "num_list">
							<c:if test="${pageMaker.prev }">
							<li><a href="search.bizpoll?page=${pageMaker.startPage -1 }"><span>이전</span><span class="ico">◀</span></a></li>
							</c:if>
							
							<!-- <li><a href="#">&laquo;</a></li> -->
							<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
							<li <c:out value="${pageMaker.criDto.page == idx? 'class=active':''}"/>>
								<a href="search.bizpoll?page=${idx}&sfl=${sfl}&stx=${stx}">${idx}</a></li>
							</c:forEach>
							<!-- <li><a href="#">&raquo;</a></li> -->
							
							<c:if test="${pageMaker.next }">
							<li><a href="search.bizpoll?page=${pageMaker.endPage+1}"><span>다음</span><span class="ico">▶</span></a></li>
							</c:if>
						</ul>
					  </c:if>
						
					  <c:if test="${flag eq '0' }">
						<ul id = "num_list">
							<c:if test="${pageMaker.prev }">
							<li><a href="boardlist.bizpoll?page=${pageMaker.startPage -1 }"><span>이전</span><span class="ico">◀</span></a></li>
							</c:if>
							
							<!-- <li><a href="#">&laquo;</a></li> -->
							<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
							<li <c:out value="${pageMaker.criDto.page == idx? 'class=active':''}"/>>
								<a href="boardlist.bizpoll?page=${idx}">${idx}</a></li>
							</c:forEach>
							<!-- <li><a href="#">&raquo;</a></li> -->
							
							<c:if test="${pageMaker.next }">
							<li><a href="boardlist.bizpoll?page=${pageMaker.endPage+1}"><span>다음</span><span class="ico">▶</span></a></li>
							</c:if>
						</ul>
					  </c:if>
					
					
							<form id="insert" name="insert" action="boardInsertView.bizpoll"  method="post">
								<input type="button" value="글쓰기" class="btn_submit" id="btn_submit">
								<input type="hidden" value="${sessionScope.loginUser.mid }" name="hidden_id">
							</form>
				</div>
			<!-- </form> -->
			
			<form name="fsearch" id ="fsearch" action="search.bizpoll" method="get">
				<select name ="sfl" id="sfl" class="select_s">
					<option value="제목">제목</option>
					<option value="내용">내용</option>
					<option value="제목내용">제목+내용</option>
					<option value="아이디">회원아이디</option>
				</select>
				<input type="text" name="stx" id="stx" class="frm_input required" size="15" maxlength="20">
				<input type="button" value="검색" class="btn_submit2">
			</form>
		</div>	
	
	</div>

</body>
</html>