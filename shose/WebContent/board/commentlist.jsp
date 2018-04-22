<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <!-- JSTL 라이브러리를 사용하기 위한 선언문 -->
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   <!-- prefix는 표기법  -->
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
		<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="box-reply2 bg-color u_cbox" id="B9Jjf">
			<ul class="cmlist" id="cmt_list">
				<c:forEach items="${replylist}" var="bDto">
					<%-- <form action="replydel.bizpoll" id="replydel" name="replydel" method="post">
			                			<input type="hidden" id="redel" name="redel" value="${bDto.rno }">
			     </form> --%>
					<li class="">
						<div class="comm_cont">
							<div class="h">
								<div class="pers_nick_area">
									<table cellspacing="0" summary="퍼스나콘/아이디 영역">
										<tbody>
											<tr>
												<td class="p-nick"><a href="#"
													class="m-tcol-c _rosRestrict _nickUI" style="">${bDto.writer}</a>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<span class="date m-tcol-c filter-50"><fmt:formatDate pattern="yyyy-MM-dd" value="${bDto.regdata}" /></span>
								
								<c:if test="${fn:trim(sessionScope.loginUser.mid) eq fn:trim(bDto.writer) || fn:trim(sessionScope.loginUser.mid) eq 'chakim6' }">
									<p class="btn_edit m-tcol-c">
										| <a class="delUrl2" href="#" data_num="${bDto.rno }">삭제</a>
									</p>
									<%-- <p class="btn_edit m-tcol-c"> | <input type="button" value="삭제" class="rno" name ="rno" data_num="${bDto.rno }"> --%>
									<%-- <p class="btn_edit m-tcol-c"> |  <a id="delUrl" href="replydel.bizpoll?rno=${bDto.rno }&bno=${bDto.bno}" class="filter-70 m-tcol-c _btnNoti">삭제</a></p> --%>
								</c:if>
										
							
								<p class="btn_edit m-tcol-c">
									<a href="#" class="filter-70 m-tcol-c _btnNoti">신고</a>
								</p>
							</div>
							<p class="comm m-tcol-c" style="">
								<span class="comm_body">${fn:replace(bDto.content, cn, br)}</span>
								<input type="hidden" id="command" value="${bDto.content}">
							</p>
						</div>
					</li>
					<li class="filter-30 board-box-line-dashed"></li>
					
				</c:forEach>
							<c:if test="${count eq 0 }">
								<p class="comm m-tcol-c" style="">
									<span class="comm_body">${fn:replace(bDto.content, cn, br)}
												  댓글을 작성 해주세요</span>
								</p>
							</c:if>
			</ul>
		</div>

</body>
</html>