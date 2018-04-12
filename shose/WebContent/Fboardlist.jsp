<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   <!-- prefix는 표기법  -->
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
    <%@ include file="header.jsp" %>
    
    
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
</style>
<script type="text/javascript">
$(document).ready(function() {
	
	
	// 게시글 등록 버튼을 클릭하면 이벤트 처리
	$(".btn_submit").on("click", function() {
		location.href = "boardInsertView.bizpoll";
	});	
});
</script>
</head>
<body>

<div id="conteiner2">
	<div id="bo_list">
		<div class="bo_fx">
			<div id="bo_list_total">
				<span>날짜순 정렬</span>
				<span>번호 정렬</span>
				<span>번호 정렬</span>
				
			</div>
			
		</div>
			<form name="fboardlist" id="fboardlist" method="post">
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
							<tr>
								<td class="td_num">${bDto.bno}</td>
								<td class="td_subject"><a href="boardbody.bizpoll?bno=${bDto.bno}">${bDto.title}</a></td>
								<td class="td_name sv_use">${bDto.writer}</td>
								<td class="td_date"><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${bDto.regdate}"/></td>
								<td class="td_hit">${bDto.viewont}</td>
								<td class="td_vote">1</td>
							</tr>
								</c:forEach>
							</tbody>
					</table>
				
				</div>
				<div>
					<ul id = "num_list">
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">6</a></li>
						<li><a href="#">7</a></li>
						<li><a href="#">8</a></li>
						<li><a href="#">9</a></li>
						<li><a href="#">10</a></li>
						<li><a href="#"><span>다음</span><span class="ico">▶</span></a></li>
					</ul>
						<input type="button" value="글쓰기" class="btn_submit" id="btn_submit">
				</div>
			</form>
			
			<form name="fsearch" method="get">
				<select name ="sfl" id="sfl" class="select_s">
					<option value="wr_subject">제목</option>
					<option value="wr_content">내용</option>
					<option value="wr_subject||wr_content">제목+내용</option>
					<option value="mb_id">회원아이디</option>
				</select>
				<input type="text" name="stx" value required id="stx" class="frm_input required" size="15" maxlength="20">
				<input type="submit" value="검색" class="btn_submit">
			</form>
		</div>	
	
	</div>

</body>
</html>