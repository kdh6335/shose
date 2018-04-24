<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
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
	</style>
</head>
<body>

<div id="header"> 
	<div class="xans-element">
		<div id="main">
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
						
						<img src="image/gudu/8cm 키높이 소가죽 정장구두(ZE0028BK).jpg" id="eListPrdImage2906_1" alt="파이어트랩 크로이던 브라운" class="on -mov" border="0">"&nbsp;"
						
					</a>	
				</div>
				<div class="info">
					<p class="name -mov">
						<a href="#">
							<span style="font-size:12px;color:#555555;font-weight: bold;">8cm 키높이 소가죽 정장구두(ZE0028BK)</span>
						</a>
					</p>
					<div class="line -mov"></div>
					<ul class="xans">
						<li class="xans-record">
							<strong class="title">
							<span style="font-size: 13px;color:#d91818;font-weight: bold;">판매가</span>
							:
							</strong>
							<span style="font-size:13px;color: #d91818;font-weight: bold;">74,000원</span>
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
								7,400원</span>
								(10%)
							</span>
						</li>
					
					</ul>
				</div>
			</li>
			<li id="anchorBoxId" class="item xans-record">
				<div class="thumbnail">
					<a href="#">
						<img src="image/gudu/8cm 키높이 소가죽 정장구두(ZE0028BK).jpg" id="eListPrdImage2906_1" alt="파이어트랩 크로이던 브라운" class="on -mov"  border="0">"&nbsp;"
					</a>	
				</div>
				<div class="info">
					<p class="name -mov">
						<a href="#">
							<span style="font-size:12px;color:#555555;font-weight: bold;">8cm 브로그 윙팁 더비구두(ZE0001BK)</span>
						</a>
					</p>
					<div class="line -mov"></div>
					<ul class="xans">
						<li class="xans-record">
							<strong class="title">
							<span style="font-size: 13px;color:#d91818;font-weight: bold;">판매가</span>
							:
							</strong>
							<span style="font-size:13px;color: #d91818;font-weight: bold;">74,000원</span>
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
								7,400원</span>
								(10%)
							</span>
						</li>
					
					</ul>
				</div>
			</li>
			<li id="anchorBoxId" class="item xans-record">
				<div class="thumbnail">
					<a href="#">
						<img src="image/gudu/7cm 키높이 플레인토 정장구두(ZE0024BK).jpg" id="eListPrdImage2906_1" alt="파이어트랩 크로이던 브라운" class="on -mov" border="0">"&nbsp;"
					</a>	
				</div>
				<div class="info">
					<p class="name -mov">
						<a href="#">
							<span style="font-size:12px;color:#555555;font-weight: bold;">7cm 키높이 스트레이트팁 정장구두(ZE0022BK)</span>
						</a>
					</p>
					<div class="line -mov"></div>
					<ul class="xans">
						<li class="xans-record">
							<strong class="title">
							<span style="font-size: 13px;color:#d91818;font-weight: bold;">판매가</span>
							:
							</strong>
							<span style="font-size:13px;color: #d91818;font-weight: bold;">69,000원</span>
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
								6,900원</span>
								(10%)
							</span>
						</li>
					
					</ul>
				</div>
			</li>
			<li id="anchorBoxId" class="item xans-record">
				<div class="thumbnail">
					<a href="#">
						<img src="image/gudu/7cm 키높이 플레인토 정장구두(ZE0024BK).jpg" id="eListPrdImage2906_1" alt="파이어트랩 크로이던 브라운" class="on -mov"  border="0">"&nbsp;"
	
					</a>	
				</div>
				<div class="info">
					<p class="name -mov">
						<a href="#">
							<span style="font-size:12px;color:#555555;font-weight: bold;">7cm 키높이 플레인토 정장구두(ZE0024BK)</span>
						</a>
					</p>
					<div class="line -mov"></div>
					<ul class="xans">
						<li class="xans-record">
							<strong class="title">
							<span style="font-size: 13px;color:#d91818;font-weight: bold;">판매가</span>
							:
							</strong>
							<span style="font-size:13px;color: #d91818;font-weight: bold;">69,000원</span>
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
								6,900원</span>
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

</body>
</html>