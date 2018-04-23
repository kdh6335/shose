<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ include file="../header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.line3_li>a {
	color: white !important;
}

.category_drop>a {
	color: white !important;
}

.list-blog {
	clear: both;
	width: 771px;
	margin: 0;
	border-style: solid;
	border-width: 1px;
	_zoom: 1;
}

ul, ol, dl, li, dd, dt, p, form, div {
	list-style: none;
	margin: 0;
	padding: 0;
}

.list-blog .inbox {
	width: 743px;
	margin: 14px;
	_zoom: 1;
	padding-top: 20px;
}

.list-blog .tit-box {
	clear: both;
	width: 743px;
	overflow: hidden;
}

#nickname {
	float: left;
}

.list-blog .tit-box .fl {
	width: 497px;
	margin-top: 4px;
}

#main-area .m-tcol-c {
	word-wrap: break-word;
}

.b {
	font-weight: bold;
}

.fl {
	display: inline-block;
	margin: 8px;
}

.list-blog .tit-box .fl td, .gate-box .tit-box .fl td {
	word-break: break-all;
}

.list-blog .tit-box td, .gate-box .tit-box td {
	padding-right: 5px;
	line-height: 1.5;
}

a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
}

.fr {
	float: right;
}

.list-blog .tit-box .fr, .gate-box .tit-box .fr {
	margin-top: 6px;
}

.list-blog .tit-box .date {
	white-space: nowrap;
}

.m-tcol-c {
	word-wrap: break-word;
}

.board-box-line-dashed {
	border-color: #595752;
}

.board-box-line-dashed {
	border-bottom-style: dashed;
	border-bottom-width: 1px;
	-ms-filter: "alpha(opacity=30)";
	filter: alpha(opacity = 30);
	opacity: 0.3;
}

.list-blog .board-box-line-dashed {
	height: 3px;
	font-size: 0;
}

.list-blog .etc-box {
	clear: both;
	width: 743px;
	overflow: hidden;
	margin-top: 3px;
	text-align: right;
}

body, div, li, dd, dt, td, select, textarea, input {
	font-family: '돋움', dotum, Helvetica, sans-serif;
	font-size: 12px;
}

#tbody {
	width: 100%;
	position: relative;
	overflow-y: hidden;
	overflow-x: auto !important;
	z-index: 0;
}

.list-blog .tbody {
	clear: both;
	margin-top: 20px;
	line-height: 1.4;
	min-height: 80px;
}

.reply-box {
	clear: both;
	width: 100%;
	line-height: 18px;
	/* height: 25px; */
	_zoom: 1;
}

.reply-box .fl .reply {
	position: relative;
	top: 0px;
}

.reply_sort table td {
	position: relative;
	vertical-align: middle;
	top: 0;
}

.reply-box td {
	padding-right: 3px;
	vertical-align: top;
}

.reply_sort table td a {
	position: relative;
}

.reply-box .u_likeit_list_module .u_likeit_list_btn .u_cnt {
	margin-top: 2px;
	color: #666;
	font-weight: bold;
	font-size: 12px;
	font-family: '돋움', dotum, Helvetica, sans-serif;
}

.u_likeit_list_module {
	float: right;
}

.box-reply2 {
	zoom: 1;
	margin: 0;
	padding: 11px 26px 16px 24px;
}

.cmlist {
	margin: 0;
	padding: 0;
}

.cmlist li {
	list-style: none;
	margin: 0;
	padding: 0 0 7px;
	height: 1%;
}

.cmlist .comm_cont {
	padding-top: 10px;
}

.cmlist .h {
	height: 20px;
	margin: 0;
}

.box-reply2 .pers_nick_area {
	padding: 0 !important;
	margin: 0;
	text-align: left;
	width: auto;
	float: left;
}

.box-reply2 .pers_nick_area table {
	width: auto;
	table-layout: auto;
}

.box-reply2 .pers_nick_area .pc2w {
	width: 28px;
}

.pers_nick_area .pc2w {
	padding: 0 !important;
	margin: 0;
	vertical-align: top;
	width: 22px;
	border: none !important;
}

.box-reply2 .pers_nick_area .p-nick {
	padding: 1px 0 0 !important;
	margin: 0;
	font-weight: bold;
	line-height: 16px;
	overflow: visible;
}

.cmlist .dsc_comm {
	float: left;
	margin: 3px 0 0 7px;
	padding-left: 10px;
	background: url(https://cafe.pstatic.net/cafe4/bu_arr.png) no-repeat 0 0;
	_background: none;
	_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='https://cafe.pstatic.net/cafe4/bu_arr.png',
		sizingMethod='crop');
	font-size: 11px;
	font-family: '돋움', Dotum;
	letter-spacing: -1px;
}

.cmlist .btn_edit {
	float: right;
	margin: 0;
	padding-top: 3px;
}

.cmlist .comm {
	padding: 0 0 3px 28px;
	margin: 3px 0 0 0;
	line-height: 15px;
	text-align: left;
	word-break: break-all;
	word-wrap: break-word;
}

.cmlist .date {
	float: left;
	font-size: 11px;
	font-family: '돋움', dotum, Helvetica, sans-serif;
	margin: 2px 0 0 1px;
}

.box-reply2 .pers_nick_area .p-nick a {
	margin-right: 6px;
	vertical-align: top;
}

.cmlist .board-box-line-dashed {
	height: 1px;
	padding: 0;
	overflow: hidden;
	font: 0/0 arial;
	border-bottom-width: 1px;
	border-bottom-style: dotted;
}

.board-box-line-dashed {
	border-color: #595752;
}

.bg-color {
	background-color: #f9f9f9;
}

.cminput {
	margin: 10px 0 0;
	padding: 0;
	width: 100%;
	border-collapse: collapse;
	table-layout: fixed;
}

.cminput .comm_write_wrap {
	clear: both;
	padding: 10px;
	border-width: 1px;
	border-style: solid;
	width: 600px;
}

.skin-bgcolor {
	background-color: #ffffff;
	background-image: none;
	background-repeat: repeat;
}

.cminput .textarea {
	width: 100%;
	margin: 0;
	padding: 1px 0;
	overflow: auto;
	-webkit-appearance: none;
	-webkit-border-radius: 0;
	resize: none;
}

.cminput .i3 {
	position: relative;
	width: 89px;
	text-align: right;
	vertical-align: bottom;
}

.i2 {
	width: 620px;
}

.u_cbox .u_cbox_btn_upload {
	display: inline-block;
	position: absolute;
	bottom: 0;
	right: 0;
	z-index: 10;
	width: 84px;
	height: 61px;
	border: 1px solid #ccc;
	background: #fff !important;
	font-size: 13px;
	font-weight: bold;
	line-height: 61px;
	text-align: center;
}

.border-sub {
	border-color: #e5e5e5;
}

.cminput .comm_write_wrap .textarea {
	border: 0 !important;
}

.u_cbox .u_cbox_btn_upload a {
	display: inline-block;
	width: 100%;
	height: 100%;
	color: #666;
}

#post_164839 {
	margin: 0 auto;
}

#list {
	float: right;
	background-color: #f1404b;
	border: none;
	color: white;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	cursor: pointer;
	margin-top: 5px;
}

#list:hover {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 
				0 6px 20px 0 rgba(0, 0, 0, 0.19);
			}

#next {
	float: left;
	background-color: #f1404b;
	border: none;
	color: white;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	cursor: pointer;
	margin-left: 5px;
	padding: 1px 8px 1px 8px;
	margin-top: 5px;
}
	#next:hover{
			box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 
				0 6px 20px 0 rgba(0, 0, 0, 0.19);
	}

#prev {
	float: left;
	background-color: #f1404b;
	border: none;
	color: white;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	cursor: pointer;
	padding: 1px 8px 1px 8px;
	margin-top: 5px;
}

	#prev:hover{
			box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 
				0 6px 20px 0 rgba(0, 0, 0, 0.19);
	}

.url a:hover {
	text-decoration: underline;
}

#nextpage {
	margin-bottom: 50px;
}

.all_writer {
	
}

.all_regdate {
	float: right;
	margin-right: 15px;
}

#nextprvtable {
	width: 100%;
}

.all_tile {
	width: 500px;
}

#nextprvtable a:hover {
	text-decoration: underline;
}

img {
	margin: 0px 4px 2px 0px;
}

#id02 {
	color: blue;
	font-weight: bold;
}

.filter-70 {
	margin-right: 4px;
}

#detgl2 {
	margin-top: 7px;
	font-weight: bold;
}

#btn_submit {
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
	margin-bottom: 15px;
}
	#btn_submit:hover{
			box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 
				0 6px 20px 0 rgba(0, 0, 0, 0.19);
	}
	#redetgl{
		display: none;
	}
	#divfile{
		border-top: 1px solid #ccc;
		border-bottom: 1px solid #ccc;
		margin-top: 16px;
	}
	#file_table{
		padding: 5px;
	}
</style>
<script type="text/javascript">

function comment_list(){
	
	var bno = $("#hidden").val();
	
	$.ajax({
		type : "POST",
		url : "commentlist.bizpoll",
		data : "bno=" + bno,
		success : function(result) {

			$("#commentlist").html(result);

		}
	});
} 
	
	
	function sweet_count(){
		var bno = $("#hidden").val();
		
		$.ajax({
			type : "POST",
			url : "sweetcount.bizpoll",
			data : "bno=" + bno,
			success : function(result) {

				$("#cafe-menu").html(result);

			}
		});
		
	}


	$(document).ready(function(){
		
		comment_list();
		sweet_count();
		
		
		
		var comment2 = $("#comment2").val();
		
		if(comment2 == 'ture' ){
			
			$('html, body').animate({
				
				scrollTop: $('#commentlist').offset().top
				
			});
		
			
		}
	
		
	
	
		// 게시글 등록 버튼을 클릭하면 이벤트 처리
		 $(".btn_submit").on("click", function() {
			
			var dd = "<%=session.getAttribute("loginUser")%>"
	
				if (dd != "null") {
	
					$("#insert").submit();
	
				} else {
					alert("로그인 해주세요!!!!!!")
					$("#id01").css("display", "block");
	
				}
			});
		
		
			$("#list").on("click", function(){
				
				$("#boardlist").submit();
			});
	
	
	});

		// 댓글 등록하기 위한 이벤트
		$(document).on("click", "#_submitCmt",function() {
			
			
		var bno = $("#bno").val();
		var mid = $("#mid2").val();
		var comment = $("#comment_text").val();
			
			 $.ajax({
				url : "replyadd.bizpoll",
				type : "POST",
				dataType : "json",
				data : "bno=" + bno +"&mid=" + mid +"&comment_text=" + comment,
				success : function(data) {

					$("#comment_text").val("");// 댓글 등록후 내용 초기화 하는 코드
					comment_list(); // 댓글을 다시 불러드리기 위한 호출 함수

				},

				error : function() {
					alert("System Error!!!");

				}
			}); 
			return false; // false를 하면 등록할때 스크롤이 맨위로 올라가지 않는다.

		});
	
	
	
		$(document).on("click", ".delUrl2", function() {
			
				var Del = confirm("삭제 하시겠습니까?") // 클릭시 삭제할 것인지 물어보는 코드

				if (Del == true) {

					var rno = $(this).attr("data_num"); // 해당 댓글 값을 가져오는 코드

					 $.ajax({
						url : "replydel.bizpoll",
						type : "POST",
						dataType : "json",
						data : "rno=" + rno,
						success : function(data) {

							comment_list(); // 삭제 완료하면 댓글을 다시 불러드리기 위한 함수 호출

						},

						error : function() {
							alert("System Error!!!");

						}
					}); 
					return false; // 리턴 false를 안하게 되면 스크롤이 맨위로 향하게 됨 그걸 방지하기 위함

				} else {

					alert("취소 되었습니다.");
					return false;

				}

			}); 
		
		$(document).on("click", "#likeItMemberBtn", function() {
			
			var bno = $("#hidden").val();
			var id = "<%=session.getAttribute("loginUser")%>";4
			var mid = $("#mid2").val();
			
			if (id != "null") {

				$.ajax({
					
					url : "sweetadd.bizpoll",
					type : "POST",
					dataType : "json",
					data : "bno=" + bno +"&mid=" + mid,
					success : function(data) {

						sweet_count(); // 삭제 완료하면 댓글을 다시 불러드리기 위한 함수 호출

					},

					error : function() {
						alert("System Error!!!");

					}
				});
				
				return false;

			} else {
				
				alert("로그인을 하셔야 '좋아요'를 올리수 있습니다.");
				$("#id01").css("display", "block");

			}
			
			
			
			
		});
		



</script>
</head>
<body>

<input type="hidden" id="comment2" value="${comment }">

	<div class="list-blog border-sub" id="post_164839">
		<form action="boardlist.bizpoll" id="boardlist" name="boardlist">
			<input type="button" id="list" value="목록">
		</form>

		<c:forEach items="${bodynext}" var="bDto">
			<!--  <input type="button" id="prev" value="이전"> -->
			<c:if test="${fn:trim(bDto.pre_title) ne '이전글없음'}">
				<a href="boardbody.bizpoll?bno=${bDto.pre_article_bno}" id="prev">이전</a>
			</c:if>
			<!-- <input type="button" id="next" value="다음"> -->
			<c:if test="${fn:trim(bDto.next_title) ne '다음글 없음'}">
				<a href="boardbody.bizpoll?bno=${bDto.next_article_bno}" id="next">다음</a>
			</c:if>
		</c:forEach>
		<div class="inbox">

			<c:forEach items="${bodylist}" var="bDto">
				<div class="tit-box">
					<div class="fl">
						<table cellspacing="0" cellpadding="0" border="0">
							<tbody>
								<tr valign="top">
									<td><span class="b m-tcol-c">${bDto.title}</span></td>
									<td nowrap class="m-tcol-c filter-30">|</td>
									<td nowrap class="m-tcol-c"><a href="boardlist.bizpoll">자유게시판</a>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="fr">
						<table cellspacing="0" cellpadding="0" border="0">
							<tbody>
								<tr>
									<td></td>
									<td class="m-tcol-c date"><fmt:formatDate
											pattern="yyyy-MM-dd HH:mm" value="${bDto.regdate}" /></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="board-box-line-dashed"></div>
				<div class="etc-box">
					<div class="fl" id="nickname">
						<table cellspacing="0" cellpadding="0" border="0">
							<tbody>
								<tr>
									<td class="m-tcol-c step"><span>작성자 : </span> <span
										class="filter-50">${bDto.writer}</span></td>
								</tr>

							</tbody>
						</table>
					</div>
					<div class="fr">
						<table cellspacing="0" cellpadding="0" border="0">
							<tbody>
								<tr>
									<td valign="top" class="url" align="right"><span
										class="filter-50"><a href="#" target="_top"
											class="m-tcol-c url-txt">${bDto.bno}</a></span> <c:if
											test="${fn:trim(sessionScope.loginUser.mid) eq fn:trim(bDto.writer) || fn:trim(sessionScope.loginUser.mid) eq 'chakim6' }">
											<span class="filter-50">| <a
												href="modify.bizpoll?bno=${bDto.bno}"
												class="m-tcol-c url-txt">수정</a></span>
											<span class="filter-50">| <a onclick="delUrl();"
												href="#" class="m-tcol-c url-txt">삭제</a></span>
										</c:if> <!-- <span class="filter-50"><a href="boardlist.bizpoll" class="m-tcol-c url-txt">목록</a></span> -->
										<form action="modifydelete.bizpoll" id="delete" name="delete">
											<input type="hidden" value="${bDto.bno}" id="hidden"
												name="hidden">
										</form></td>
								</tr>
								<tr>
									<td id="sendPost_164839" class="m-tcol-c" align="right"></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="tbody m-tcol-c" id="tbody">${fn:replace(bDto.content, cn, br)}</div>
			</c:forEach>
			<div id="divfile">
				<table id="file_table">
					<tr>
						<th >첨부파일 : </th>
						<td>
							<span class="filter-50">
								<input type="file" id="files" style="display: none">
								<a href="#"><i class="fa fa-save"></i></a>
								<a href="#">KakaoTalk_20180422_160705634.jpg</a>
							</span>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<!-- 본문 끝 -->
		<!-- 댓글 시작 -->
		<div class="reply-box" id="cmtMenu">
			<div class="fl reply_sort">
				<table cellspacing="0" cellpadding="0" border="0">

					<tbody>


						<tr style="vertical-align: top">

							<td class="reply"><a href="javascript:;"
								class="reply_btn b m-tcol-c m-tcol-p _totalCnt" id="comment">댓글 ${count}</a></td>
							<td class="m-tcol-c filter-30">|</td>
							<td><c:forEach items="${bodylist}" var="bDto">
									<span class="b m-tcol-c reply ">조회수 </span>
									<span class="b m-tcol-c reply">${bDto.viewont }</span>
								</c:forEach></td>
							<td class="m-tcol-c filter-30">|</td>
							<td>
						
								<a href="#" id="likeItMemberBtn">
									<span id="cafe-menu">
									</span>
								</a>
							</td>
						</tr>
					</tbody>

				</table>
			</div>
			<div class="fr cafe_spi">
				<table cellspacing="0" cellpadding="0" border="0">
					<tbody>
						<tr>
							<td>
							<td><a href="#" class="m-tcol-c">인쇄</a></td>
							<td class="m-tcol-c filter-30">|</td>
							<td><span>신고</span></td>
						</tr>
					</tbody>
				</table>
			</div>

		</div>
		<div class="box-reply2 bg-color u_cbox" id="B9Jjf">
		
			<div id="commentlist"></div>
			
				<table id="redetgl2" cellspacing="0" class="cminput">
					<%--  <c:if test="${fn:trim(sessionScope.loginUser.mid) eq fn:trim(bDto.writer) || fn:trim(sessionScope.loginUser.mid) eq 'chakim6' }"> --%>
					<c:if test="${fn:trim(sessionScope.loginUser.mid) ne ''}">
						<input type="hidden" name="mid" id="mid2" value="${sessionScope.loginUser.mid }" />
						<tbody>

							<div id="detgl2">작성자 : ${sessionScope.loginUser.mid }</div>

							<c:forEach items="${bodylist}" var="bDto">
								<input type="hidden" name="bno" id="bno" value="${bDto.bno }" />
							</c:forEach>

							<tr>
								<td class="i2">
									<div class="comm_write_wrap border-sub skin-bgcolor">
										<textarea id="comment_text" name="comment_text" cols="50" rows="2" class="textarea m-tcol-c" style="overflow: hidden; line-height: 14px; height: 39px;"
											title="댓글입력"></textarea>

									</div>
								</td>
								<td class="i3">

									<div class="u_cbox_btn_upload _submitBtn">
										<a href="#" id="_submitCmt"
											class="u_cbox_txt_upload _submitCmt">등록</a>
									</div>
								</td>
							</tr>

						</tbody>
						
						
					</c:if>
					
					
					<c:if test="${fn:trim(sessionScope.loginUser.mid) eq ''}">
						<tr>
							<td colspan="3"><a id="id02"
								onclick="document.getElementById('id01').style.display='block'"
								style="cursor: pointer"> 로그인</a>을 해야 댓글을 작성 할 수 있어요</td>
						</tr>
					</c:if>
				</table>
			
		</div>
		<div id="nextpage">
			<table id="nextprvtable">
				<c:forEach items="${bodynext}" var="bDto">
					<tr>
						<c:if test="${fn:trim(bDto.pre_title) ne '이전글없음'}">
							<td><img src="image/nextprv/ico-btn-pre2_.gif" alt=""><a
								href="boardbody.bizpoll?bno=${bDto.pre_article_bno} " id="">
									이전글</a></td>
							<td class="all_tile"><a
								href="boardbody.bizpoll?bno=${bDto.pre_article_bno} " id="">
									${bDto.pre_title}</a></td>
							<td class="all_writer">${bDto.pre_writer}</td>
							<td class="all_regdate"><fmt:formatDate pattern="yyyy-MM-dd"
									value="${bDto.pre_regdate}" /></td>
						</c:if>
					</tr>
					<tr>
						<c:if test="${fn:trim(bDto.next_title) ne '다음글 없음'}">
							<td><img src="image/nextprv/ico-btn-net2_.gif" alt=""><a
								href="boardbody.bizpoll?bno=${bDto.next_article_bno} " id="">
									다음글</a></td>
							<td class="all_tile"><a
								href="boardbody.bizpoll?bno=${bDto.next_article_bno} " id="">${bDto.next_title}</a></td>
							<td class="all_writer">${bDto.next_writer}</td>
							<td class="all_regdate"><fmt:formatDate pattern="yyyy-MM-dd"
									value="${bDto.next_regdate}" /></td>
						</c:if>
					</tr>
				</c:forEach>

			</table>
		</div>
		<form id="insert" name="insert" action="boardInsertView.bizpoll"
			method="post">
			<input type="button" value="글쓰기" class="btn_submit" id="btn_submit">
			<input type="hidden" value="${sessionScope.loginUser.mid }" name="hidden_id">
		</form>
	</div>




</body>
</html>