<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   <!-- prefix는 표기법  -->
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
    <%@ include file="header.jsp" %>
    
    <%@ page import="java.util.Date" %>
    <c:set var="date" value="<%=new Date() %>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>환영합니다.</title>
<!-- 브라우저 타이틀바 로고 삽입(파비콘:favicon) -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
<script  type="text/javascript">
window.onscroll = function() {scrollFunction()};
	
	function scrollFunction(){
			if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20){
			document.getElementById("myBtn").style.display = "block";
		} else {
			document.getElementById("myBtn").style.display = "none";
			
			}
	}
	
	function topFunction(){
		
		document.body.scrollTop.scrollTop = 0;
		document.documentElement.scrollTop = 0;
	}
</script>
<style type="text/css">
       /* 4번째 줄 */
      .xans-element{
      		padding-top : 50px;
      		position: relative;
    		width: 1260px;
    		margin: 0 auto 50px;
    		top: 50px;
    		
      }
	.prdList{
			display: table;
   			width: 100%;
    		min-width: 756px;
    		font-size: 0;
   			line-height: 0;
   			margin-left: 100px;
	}
	.item{
		position: relative;
		display: inline-block;
		margin: 0 0 20px;
		padding: 10px 0 0;
		margin-right: -1px;
		border-right: 0px solid #eee;
		color: #333;
		vertical-align: top;
		font-size: 12px;
		line-height: 17px;
		list-style : none;
		width: 20%;
		top : 100px;
	}
	.thumbnail{
		position: relative;
		top: 0;
		left: 0;
		width:  90.16%;
		margin: 0 auto 15px;
		font-size: 0;
		line-height: 0;
		padding: 0;
		display: block;
	}
	.thumbnail > a{
		text-decoration: none;
		color: #000;
	}
	.thumbnail img{
		width: 100%;
		max-width: 100%;
		border: none;
	}
	.info{
		width: 90%;
		margin: 0 auto;
		padding: 0;
		text-align: center;
	}
	.info > span{
		text-decoration: none;
	}
        .name{
        	display: block;
        	margin:  0 0 10px;
        	line-height: 20px;        	
        }
        .name > a{
        	text-decoration: none;
        }
        .-mov{
        	transition :0.5s;
        }
        .line{
        	width: 18px;
        	height: 0px;
        	margin: 0 auto 15px;
        	border-top: 1px solid #111;
        	line-height: 0px;
        	
        }
        .xans > li{
        	margin: 0 0 7px;
        	text-align: center;
        	line-height: 14px;
        	list-style-type: none;
        	
        }
        .title{
        	font-weight: normal;
        	vertical-align: top;
        }
        #anchorBoxId:hover .line {
		width: 50px;
	}
	.title > img{
		vertical-align: middle;
	}
	
	/* ScrollToTop */
	button#myBtn {
		display: none;
		position: fixed;
		bottom: 20px;
		right: 30px;
		z-index: 99;
		font-size: 18px;
		border: none;
		outline: none;
		background-color: #f1404b;
		color: white;
		cursor: pointer;
		padding: 15px;
		border-radius: 4px;
	}
	button#myBtn:hover{
		background-color: #252c41;
	}
	
	
	/* .pdt_item{
		float : left;
		margin : 0 10px;
		position : relative;
	} */
	.pdt_item{
		display: inline-block;
	}
	.item_list{
		display: :inline-block;
	}
	#itemname{
		margin-top: 50px;
	}
	.total{
		width: 100%;
	}
	.total2{
		width: 70%;
		margin: 0 auto;
	}
</style>
</head>
<body>


<div id="header"> 

<div class="xans-element">
	<div id="main">
		<img src="image/Webp.net-gifmaker.gif" style="height: 400px; margin-left: 100px">
	<ul class="prdList">
		<li id="anchorBoxId" class="item xans-record">
			<div class="thumbnail">
				<a href="#" id="back">
					
					<img src="image/gudu/2906_shop1_807848.jpg" id="eListPrdImage2906_1" alt="파이어트랩 크로이던 브라운" class="on -mov" onmouseover="this.src='image/gudu/2906_shop1_780407.jpg'" onmouseout="this.src='image/gudu/2906_shop1_807848.jpg'" border="0">"&nbsp;"
					
				</a>	
			</div>
			<div class="info">
				<p class="name -mov">
					<a href="#">
						<span style="font-size:12px;color:#555555;font-weight: bold;">파이어
						트랩 크로이던 브라운(FIRETRAP CROYDON BROWN)</span>
					</a>
				</p>
				<div class="line -mov"></div>
				<ul class="xans">
					<li class="xans-record">
						<strong class="title">
						<span style="font-size: 13px;color:#d91818;font-weight: bold;">판매가</span>
						:
						</strong>
						<span style="font-size:13px;color: #d91818;font-weight: bold;">68,000원</span>
						<span id="span_product_tax_type_text"></span>
					</li>
					<li class="xans-record">
						<strong class="title">
						<span style="font-size: 14px;color:#0155a4;font-weight: bold;">회원 할인특가</span>
						:
						</strong>
						<span style="font-size:14px;color: #0155a4;font-weight: bold;">61,200원</span>
						<span id="span_product_tax_type_text"></span>
					</li>
					<li class="xans-record">
						<strong class="title">
						<img src="image/shop1_569266.gif">
						 :
						</strong>
						<span style="font-size:12px;color: #555555;font-weight: bold;">
							<span id="span_product_tax_type_text">
							<img src="image/icon_201802061008577300.gif" style="margin-bottom: -2px;">
							6,120원</span>
							(10%)
						</span>
					</li>
				
				</ul>
			</div>
		</li>
		<li id="anchorBoxId" class="item xans-record">
			<div class="thumbnail">
				<a href="#">
					<img src="image/gudu/2905_shop1_439153.jpg" id="eListPrdImage2906_1" alt="파이어트랩 크로이던 브라운" class="on -mov" onmouseover="this.src='image/gudu/2905_shop1_485839.jpg'" onmouseout="this.src='image/gudu/2905_shop1_439153.jpg'" border="0">"&nbsp;"
				</a>	
			</div>
			<div class="info">
				<p class="name -mov">
					<a href="#">
						<span style="font-size:12px;color:#555555;font-weight: bold;">파이어
						트랩 크로이던 블랙(FIRETRAP CROYDON BLACK)</span>
					</a>
				</p>
				<div class="line -mov"></div>
				<ul class="xans">
					<li class="xans-record">
						<strong class="title">
						<span style="font-size: 13px;color:#d91818;font-weight: bold;">판매가</span>
						:
						</strong>
						<span style="font-size:13px;color: #d91818;font-weight: bold;">68,000원</span>
						<span id="span_product_tax_type_text"></span>
					</li>
					<li class="xans-record">
						<strong class="title">
						<span style="font-size: 14px;color:#0155a4;font-weight: bold;">회원 할인특가</span>
						:
						</strong>
						<span style="font-size:14px;color: #0155a4;font-weight: bold;">61,200원</span>
						<span id="span_product_tax_type_text"></span>
					</li>
					<li class="xans-record">
						<strong class="title">
						<img src="image/shop1_569266.gif">
						 :
						</strong>
						<span style="font-size:12px;color: #555555;font-weight: bold;">
							<span id="span_product_tax_type_text">
							<img src="image/icon_201802061008577300.gif" style="margin-bottom: -2px;">
							6,120원</span>
							(10%)
						</span>
					</li>
				
				</ul>
			</div>
		</li>
		<li id="anchorBoxId" class="item xans-record">
			<div class="thumbnail">
				<a href="#">
					<img src="image/gudu/2904_shop1_266828.jpg" id="eListPrdImage2906_1" alt="파이어트랩 크로이던 브라운" class="on -mov" onmouseover="this.src='image/gudu/2904_shop1_628705.jpg'" onmouseout="this.src='image/gudu/2904_shop1_266828.jpg'" border="0">"&nbsp;"
				</a>	
			</div>
			<div class="info">
				<p class="name -mov">
					<a href="#">
						<span style="font-size:12px;color:#555555;font-weight: bold;">파이어
						트랩 에거톤 다크브라운(FIRETRAP EGERTON 8701D DK.BROWN)</span>
					</a>
				</p>
				<div class="line -mov"></div>
				<ul class="xans">
					<li class="xans-record">
						<strong class="title">
						<span style="font-size: 13px;color:#d91818;font-weight: bold;">판매가</span>
						:
						</strong>
						<span style="font-size:13px;color: #d91818;font-weight: bold;">68,000원</span>
						<span id="span_product_tax_type_text"></span>
					</li>
					<li class="xans-record">
						<strong class="title">
						<span style="font-size: 14px;color:#0155a4;font-weight: bold;">회원 할인특가</span>
						:
						</strong>
						<span style="font-size:14px;color: #0155a4;font-weight: bold;">61,200원</span>
						<span id="span_product_tax_type_text"></span>
					</li>
					<li class="xans-record">
						<strong class="title">
						<img src="image/shop1_569266.gif">
						 :
						</strong>
						<span style="font-size:12px;color: #555555;font-weight: bold;">
							<span id="span_product_tax_type_text">
							<img src="image/icon_201802061008577300.gif" style="margin-bottom: -2px;">
							6,120원</span>
							(10%)
						</span>
					</li>
				
				</ul>
			</div>
		</li>
		<li id="anchorBoxId" class="item xans-record">
			<div class="thumbnail">
				<a href="#">
					<img src="image/gudu/2903_shop1_603750.jpg" id="eListPrdImage2906_1" alt="파이어트랩 크로이던 브라운" class="on -mov" onmouseover="this.src='image/gudu/2903_shop1_209754.jpg'" onmouseout="this.src='image/gudu/2903_shop1_603750.jpg'" border="0">"&nbsp;"

				</a>	
			</div>
			<div class="info">
				<p class="name -mov">
					<a href="#">
						<span style="font-size:12px;color:#555555;font-weight: bold;">파이어
						트랩 에거톤 블랙(FIRETRAP EGERTON 8701D BLACK)</span>
					</a>
				</p>
				<div class="line -mov"></div>
				<ul class="xans">
					<li class="xans-record">
						<strong class="title">
						<span style="font-size: 13px;color:#d91818;font-weight: bold;">판매가</span>
						:
						</strong>
						<span style="font-size:13px;color: #d91818;font-weight: bold;">68,000원</span>
						<span id="span_product_tax_type_text"></span>
					</li>
					<li class="xans-record">
						<strong class="title">
						<span style="font-size: 14px;color:#0155a4;font-weight: bold;">회원 할인특가</span>
						:
						</strong>
						<span style="font-size:14px;color: #0155a4;font-weight: bold;">61,200원</span>
						<span id="span_product_tax_type_text"></span>
					</li>
					<li class="xans-record">
						<strong class="title">
						<img src="image/shop1_569266.gif">
						 :
						</strong>
						<span style="font-size:12px;color: #555555;font-weight: bold;">
							<span id="span_product_tax_type_text">
							<img src="image/icon_201802061008577300.gif" style="margin-bottom: -2px;">
							6,120원</span>
							(10%)
						</span>
					</li>
				
				</ul>
			</div>
		</li>
	</ul>
	<ul class="prdList">
		<li id="anchorBoxId" class="item xans-record">
			<div class="thumbnail">
				<a href="#" id="back">
					
					<img src="image/2872_shop1_552678.jpg" id="eListPrdImage2906_1" alt="파이어트랩 크로이던 브라운" class="on -mov" onmouseover="this.src='image/2872_shop1_813281.jpg'" onmouseout="this.src='image/2872_shop1_552678.jpg'" border="0">"&nbsp;"
					
				</a>	
			</div>
			<div class="info">
				<p class="name -mov">
					<a href="#">
						<span style="font-size:12px;color:#555555;font-weight: bold;">패브릭 제타 러너 블랙/화이트(FABRIC ZET A RUNNER 73 BLACK/WHITE)</span>
					</a>
				</p>
				<div class="line -mov"></div>
				<ul class="xans">
					<li class="xans-record">
						<strong class="title">
						<span style="font-size: 13px;color:#d91818;font-weight: bold;">판매가</span>
						:
						</strong>
						<span style="font-size:13px;color: #d91818;font-weight: bold;">34,000원</span>
						<span id="span_product_tax_type_text"></span>
					</li>
					<li class="xans-record">
						<strong class="title">
						<img src="image/shop1_569266.gif">
						 :
						</strong>
						<span style="font-size:12px;color: #555555;font-weight: bold;">
							<span id="span_product_tax_type_text">
							<img src="image/icon_201802061008577300.gif" style="margin-bottom: -2px;">
							3,400원</span>
							(10%)
						</span>
					</li>
				
				</ul>
			</div>
		</li>
		<li id="anchorBoxId" class="item xans-record">
			<div class="thumbnail">
				<a href="#">
					<img src="image/2871_shop1_472683.jpg" id="eListPrdImage2906_1" alt="파이어트랩 크로이던 브라운" class="on -mov" onmouseover="this.src='image/2871_shop1_427310.jpg'" onmouseout="this.src='image/2871_shop1_472683.jpg'" border="0">"&nbsp;"
				</a>	
			</div>
			<div class="info">
				<p class="name -mov">
					<a href="#">
						<span style="font-size:12px;color:#555555;font-weight: bold;">패브릭 제타 러너 스톤(FABRIC ZETA RUNNER 73 STONE)</span>
					</a>
				</p>
				<div class="line -mov"></div>
				<ul class="xans">
					<li class="xans-record">
						<strong class="title">
						<span style="font-size: 13px;color:#d91818;font-weight: bold;">판매가</span>
						:
						</strong>
						<span style="font-size:13px;color: #d91818;font-weight: bold;">34,000원</span>
						<span id="span_product_tax_type_text"></span>
					</li>
					<li class="xans-record">
						<strong class="title">
						<img src="image/shop1_569266.gif">
						 :
						</strong>
						<span style="font-size:12px;color: #555555;font-weight: bold;">
							<span id="span_product_tax_type_text">
							<img src="image/icon_201802061008577300.gif" style="margin-bottom: -2px;">
							3,400원</span>
							(10%)
						</span>
					</li>
				
				</ul>
			</div>
		</li>
		<li id="anchorBoxId" class="item xans-record">
			<div class="thumbnail">
				<a href="#">
					<img src="image/2870_shop1_130790.jpg" id="eListPrdImage2906_1" alt="파이어트랩 크로이던 브라운" class="on -mov" onmouseover="this.src='image/2870_shop1_939437.jpg'" onmouseout="this.src='image/2870_shop1_130790.jpg'" border="0">"&nbsp;"
				</a>	
			</div>
			<div class="info">
				<p class="name -mov">
					<a href="#">
						<span style="font-size:12px;color:#555555;font-weight: bold;">패브릭 릴레이 런 블랙/블랙(FABRIC RELAY RUN 73 BLACK/BLACK)</span>
					</a>
				</p>
				<div class="line -mov"></div>
				<ul class="xans">
					<li class="xans-record">
						<strong class="title">
						<span style="font-size: 13px;color:#d91818;font-weight: bold;">판매가</span>
						:
						</strong>
						<span style="font-size:13px;color: #d91818;font-weight: bold;">34,000원</span>
						<span id="span_product_tax_type_text"></span>
					</li>
					<li class="xans-record">
						<strong class="title">
						<img src="image/shop1_569266.gif">
						 :
						</strong>
						<span style="font-size:12px;color: #555555;font-weight: bold;">
							<span id="span_product_tax_type_text">
							<img src="image/icon_201802061008577300.gif" style="margin-bottom: -2px;">
							3,400원</span>
							(10%)
						</span>
					</li>
				
				</ul>
			</div>
		</li>
		<li id="anchorBoxId" class="item xans-record">
			<div class="thumbnail">
				<a href="#">
					<img src="image/2871_shop1_472683.jpg" id="eListPrdImage2906_1" alt="파이어트랩 크로이던 브라운" class="on -mov" onmouseover="this.src='image/2871_shop1_427310.jpg'" onmouseout="this.src='image/2871_shop1_472683.jpg'" border="0">"&nbsp;"

				</a>	
			</div>
			<div class="info">
				<p class="name -mov">
					<a href="#">
						<span style="font-size:12px;color:#555555;font-weight: bold;">패브릭 릴레이 런 다크 그레이말(FABRIC RELAY RUN 73 DARK GREY MARL)</span>
					</a>
				</p>
				<div class="line -mov"></div>
				<ul class="xans">
					<li class="xans-record">
						<strong class="title">
						<span style="font-size: 13px;color:#d91818;font-weight: bold;">판매가</span>
						:
						</strong>
						<span style="font-size:13px;color: #d91818;font-weight: bold;">34,000원</span>
						<span id="span_product_tax_type_text"></span>
					</li>
					<li class="xans-record">
						<strong class="title">
						<img src="image/shop1_569266.gif">
						 :
						</strong>
						<span style="font-size:12px;color: #555555;font-weight: bold;">
							<span id="span_product_tax_type_text">
							<img src="image/icon_201802061008577300.gif" style="margin-bottom: -2px;">
							3,420원</span>
							(10%)
						</span>
					</li>
				
				</ul>
			</div>
		</li>
	</ul>
	</div>
</div>
      
</div>
<!-- ScrollToTop -->
	<button onclick="topFunction()" id="myBtn">Top</button>
		
<!-- 데이터베이스에서 값을 가져오기  -->	
<div class="total">	
  <div class="total2">
			<h3 id="itemname">New ITEM</h3>
				<c:forEach items="${newProductlist}" var="pDto">
		<div class="item_list" style="display: inline-block;">
			
			<hr>
			
				<div class="pdt_item">
					<a href="">
						<img alt="신상품" src="${pDto.p_img}" width="200px" height="200px">
						<div class="wrap_info">
						<span>${pDto.p_name}</span><br>
						<span>
						 	 <fmt:setLocale value="ko_kr"/>
							  <!-- currency = 접속하는 현지의 화폐단위  -->
							 <fmt:formatNumber value="${pDto.p_price2}" type ="currency"/>
							 <fmt:formatNumber value="0.15" type="percent"/>
							 <fmt:formatNumber value="553654789834" pattern = "###,###,###,###"/>
							 
							<%--  <fmt:formatDate value="${date}" type="time"/>
							 <fmt:formatDate value="${date}" type="time" timeStyle="full"/> --%>
							  
						</span>
						</div>
					</a>
				</div>
		</div>
				</c:forEach>
	</div>
</div>
				
				
	<div class="total">
		<div class="total2">
			<h3 id="itemname">BEST ITEM</h3>
				<c:forEach items="${newProductlist2}" var="pDto">
		<div class="item_list" style="display: inline-block;">
			
			<hr>
			
				<div class="pdt_item">
					<a href="">
						<img alt="신상품" src="${pDto.p_img}" width="200px" height="200px">
						<div class="wrap_info">
						<span>${pDto.p_name}</span><br>
						<span>
							  <fmt:setLocale value="ko_kr"/>
							  <!-- currency = 접속하는 현지의 화폐단위  -->
							 <fmt:formatNumber value="${pDto.p_price2}" type="currency" />
							 <fmt:formatNumber value="0.15" type="percent"/>
							 <fmt:formatNumber value="553654789834" pattern = "###,###,###,###"/>
							 
							 <%-- <fmt:formatDate value="${date}" type="time"/>
							 <fmt:formatDate value="${date}" type="time" timeStyle="full"/> --%>
						</span>
						</div>
					</a>
				</div>
		</div>
				</c:forEach>
		</div>
	</div>
</body>
</html>