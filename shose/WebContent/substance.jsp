<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
       <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.line3_li > a {
    	color: white!important;
    }
    .category_drop > a {
   		color: white!important;
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
	    color: #000000;
	}
#main-area .m-tcol-c {
	    color: #666;
	    word-wrap: break-word;
	}
.b {
	    font-weight: bold;
	}
.fl{
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
	    color: #666;
	    word-wrap: break-word;
	}
#main-area .board-box-line-dashed {
	    border-color: #595752;
	}
#main-area .board-box-line-dashed {
	    border-bottom-style: dashed;
	    border-bottom-width: 1px;
	    -ms-filter: "alpha(opacity=30)";
	    filter: alpha(opacity=30);
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
	    font-family: '돋움',dotum,Helvetica,sans-serif;
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
	    font-family: '돋움',dotum,Helvetica,sans-serif;
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
	    _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='https://cafe.pstatic.net/cafe4/bu_arr.png', sizingMethod='crop');
	    font-size: 11px;
	    font-family: '돋움',Dotum;
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
	    font-family: '돋움',dotum,Helvetica,sans-serif;
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
	    margin: 14px 0 0;
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
.i2{
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
#post_164839{
		margin: 0 auto;
	}
</style>
</head>
<body>
	<div class="list-blog border-sub" id="post_164839">
		<div class="inbox">
			<div class="tit-box">
				<div class="fl">
					<table cellspacing ="0" cellpadding="0" border="0">
						<tbody>
							<tr valign="top">
								<td>
									<span class="b m-tcol-c">카페스티커 도 안나왔습니다.</span>
								</td>
								<td nowrap class="m-tcol-c filter-30">|</td>
								<td nowrap class="m-tcol-c">
									<a href="#">공지사항</a>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="fr">
					<table cellspacing ="0" cellpadding="0" border="0">
						<tbody>
							<tr>
								<td></td>
								<td class="m-tcol-c date">2018.02.22. 20:00</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="board-box-line-dashed"></div>
			<div class="etc-box">
                    <div class="fl" id="nickname">
                        <table cellspacing="0" cellpadding="0" border="0">
                        <tbody><tr>
                       
                        <td class="m-tcol-c step">
                        <span >작성자 : </span>
                        <span class="filter-50">카페스탭</span>
                      
                        
                        </td>
						
                        
						
                        </tr>
                        </tbody></table>
                    </div>
                    <div class="fr">
                        <table cellspacing="0" cellpadding="0" border="0">
                            <tbody><tr>
                                <td valign="top" class="url" align="right">
                                    <span class="filter-50"><a id="linkUrl" href="http://cafe.naver.com/nfsonatatransform/164839" target="_top" class="m-tcol-c url-txt">http://cafe.naver.com/nfsonatatransform/164839</a></span>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td id="sendPost_164839" class="m-tcol-c" align="right"></td>
                            </tr>
                        </tbody></table>
                    </div>              
                </div>
                
                
                <div class="tbody m-tcol-c" id="tbody">
					
						
						<p>여러 회원님께서 문의하시던<br>카페스티커 도안이 나왔습니다.<br><br>회원님들의 의견을 수렴해서<br>예전도안에서 꽃을빼고<br>차량라인도 NF답게 수정후<br>가운데&amp;도 넣었습니다.<br><br>더이상의 수정은 없습니다!<br><br>회원님들의 결정을 기다리겠습니다.<br><br>* 판매는 제가 하는게 아닙니다.<br>부매니저님이 하실겁니다.<br><br>* 도안결정후 스티커는 1~2주안에<br>발송가능하게 부.매.니.저님께 <br>건의하겠습니다.</p>
					
				</div>
				
				
				<div class="reply-box" id="cmtMenu">
                    <div class="fl reply_sort">
                        <table cellspacing="0" cellpadding="0" border="0">
                        <tbody><tr style="vertical-align:top">
                        
                        <td class="reply">
                        	<a href="javascript:;" class="reply_btn b m-tcol-c m-tcol-p _totalCnt" id="comment">댓글 25</a>
						</td>
						<td class="m-tcol-c filter-30">|</td>
						<td class="_sortList" style="padding:0;">
							<div style="position:relative;_top:3px;"><a href="#" class="b m-tcol-c"><span>등록순</span><span style="display:none">최신순</span><span id="cafe-menu"><span class="cafe-menu-tit" style="background:none; width:13px; height:13px; margin:0;"><span class="down-btn" style="background-position:0 0; background-repeat:no-repeat; vertical-align:top"><img height="13" width="13" alt="" src="https://cafe.pstatic.net/cafe4/hidden.gif"></span></span></span></a>
						       <div class="perid-layer2" style="display:none;">
						       <ul>
							       <li class="asc"><a href="#"><span>등록순</span></a></li>
								   <li class="desc"><a href="#"><span>최신순</span></a></li>
						       </ul>
						       </div>
						   </div>
					    </td>
						<td class="m-tcol-c filter-30">|</td>
						
						<td><span class="b m-tcol-c reply ">조회수 </span><span class="b m-tcol-c reply">806</span></td>
						
                            <td class="m-tcol-c filter-30">|</td>
	                        <td>
                                <a href="#" class="b m-tcol-c like like_lst_btn _click(LikeItMember|LikeItMember|14773330|164839) _stopDefault" id="likeItMemberBtn" onclick="clickcr(this, '', '', ''); return false;">좋아요<span id="cafe-menu"><span class="cafe-menu-tit" style="background:none; width:13px; height:13px; margin:0;"><span id="likeItArrow" class="down-btn" style="background-position:0 0; *background-position:0 0; background-repeat:no-repeat; vertical-align:top"><img height="13" width="13" alt="" src="https://cafe.pstatic.net/cafe4/hidden.gif"></span></span></span></a>
                                
                                    
                                        <div class="u_likeit_list_module _reactionModule" data-sid="CAFE" data-cid="14773330_nfsonatatransform_164839" data-did="CAFE" data-catgid="14773330" data-loaded="1" data-facetype="0" style="visibility: visible;">
                                            <a href="#" class="u_likeit_list_btn _button off" data-type="like" data-log="art.like|art.unlike" aria-pressed="false">
                                                <span class="u_ico _icon"></span>
                                                <em class="u_cnt _count">8</em>
                                            </a>
                                        </div>
                                    
                                    
                                
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
				            <td class="m-tcol-c filter-30">|</td>
				            <td>
				            <a href="#" class="m-tcol-c" onclick="boardPrint();">인쇄</a>
				            </td>
                           <td class="m-tcol-c filter-30">|</td>
                           <td><span onclick="checkLogin('badReport');" style="cursor:pointer;cursor:hand;margin-left:2px" class="m-tcol-c">신고</span></td>
                        </tr>
                        </tbody></table>
                    </div>
                    
                </div>
                
                <div class="box-reply2 bg-color u_cbox" id="B9Jjf">
                	<ul class="cmlist" id="cmt_list">
                		<li class="">		
	                		<div class="comm_cont">			
		                		<div class="h">				
			                		<div class="pers_nick_area">					
				                		<table cellspacing="0" summary="퍼스나콘/아이디 영역">						
					                		<tbody>							
					                		<tr>								
						                		<td class="p-nick">
						                			<a href="#" class="m-tcol-c _rosRestrict _nickUI" style="">경기ll사이버수사팀</a>
						                		</td>
					                		</tr>
					                		</tbody>
				                		</table>				
			                		</div>				
			                		<span class="date m-tcol-c filter-50">2018.04.10. 12:44</span>				
			                						
			                		<p class="btn_edit m-tcol-c"><a href="#" class="filter-70 m-tcol-c _btnNoti">신고</a></p>			
		                		</div>			
		                			<p class="comm m-tcol-c" style=""><span class="comm_body">추카드립니다.<br>트폼 디젤이라..<br>힘 좋겠습니다</span></p>
	                		</div>
                		</li>
                		<li class="filter-30 board-box-line-dashed"></li>
                	</ul>
                	<table cellspacing="0" class="cminput">
				<tbody>
				<tr>
					<td class="i2">
						<div class="comm_write_wrap border-sub skin-bgcolor">
							<textarea id="comment_text" cols="50" rows="2" class="textarea m-tcol-c" maxlength="6000" style="overflow: hidden; line-height: 14px; height: 39px;" title="댓글입력"></textarea>
							
 							<div class="u_cbox_upload_image" style="display:none">
							</div>
						</div>
					</td>
					<td class="i3">
						
						<div class="u_cbox_btn_upload _submitBtn">
							<a href="#" class="u_cbox_txt_upload _submitCmt">등록</a>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="3">
					</td>
				</tr>
				</tbody>
			</table>
                </div>
		</div>
		
		
	</div>

</body>
</html>