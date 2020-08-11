<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style type="text/css">
.lst_item .Oitem {
	position: absolute;
	left: 0;
	width: 75px;
	height: 75px;
	font-size: 0;
	text-align: center
}

.lst_item .Oitem:after {
	display: inline-block;
	overflow: hidden;
	height: 100%;
	vertical-align: middle;
	content: ''
}

.lst_item .Oitem img {
	max-width: 100%;
	height: auto;
	max-height: 100%;
	vertical-align: middle;
}

.paging {
	display: inline-block;
	list-style: none;
	font-size: 15px;
	text-align: center;
}
.lst_info_pay .Oblind{
	color: red;
}
.emptyOrder{
	font-size: 30px;
	vertical-align: middle;
	margin-top: 10px;
}
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
<script type="text/javascript">
$(document).ready(function(){
	$(".Oblind").hide();	
})

</script>
</head>
<body>
	<div id="container">

		<div id="aside">
			<jsp:include page="aside.jsp"></jsp:include>
		</div>

		<div id="content">
			<div class="myzone_shopping _myzoneShoppingContainer">
				<h1 class="sub_title">주문상세</h1>
				<h3 class="blind">주문상세내역</h3>
				<div class="lst_user_order order_detail">
					<div class="lst_item_wrap">
						<div class="_orderDetailContainer">
							<div class="order_id">
								<strong>주문번호</strong><span>${ordersDto.orderDate }-${ordersDto.orderID }</span>
							</div>
							<p class="selected_address">
								<span class="ico_vertical"> <span class="ico">배송지
								</span>
								</span> <span class="name">${customersDto.companyName }</span> <span
									class="user_address">${customersDto.address }
									${customersDto.city } ${customersDto.region }
									${customersDto.postalCode } ${customersDto.country } </span>
							</p>
							
							<div class="lst_item">
								<c:forEach var="productsDto" items="${productsDtos }" varStatus="status">
									<span class="Oitem"> <a href=""
										class="link_thumb _itemImage"> ${productsDto.picture } </a>
									</span>
									<dl class="info_goods">
										<c:choose>
											<c:when test="${empty ordersDto.shippedDate }">
												<dd class="notify_claim_complete cor_point">상품준비중</dd>
											</c:when>
											<c:otherwise>
												<dd class="notify_claim_complete cor_point">상품배송중</dd>
											</c:otherwise>
										</c:choose>
										<dd class="goods_name">
											<a href="" class="link_cont">${productsDto.productName }</a>
										</dd>
										<dd class="opt_ea">
											<span class="amount"> 수량 <span class="num">
													${orderDetailDtos[status.index].quantity } </span>
											</span>
										</dd>
										<dd class="price">
											<strong>${priceDto.prices[status.index] }</strong> <span
												class="won">원</span>
										</dd>
										<dd class="sub_notify">
											<span class="ast">*</span>배송예정일 : ${ordersDto.requiredDate }
										</dd>
									</dl>
									<div style="margin-top: 30px;"></div>
								</c:forEach>								
								
								<div class="paging">
									<ul class="paging">
									<c:if test="${bPageDto.lastPageNum>1 }">
										<c:forEach var="i" begin="${bPageDto.firstPageNum }"
											end="${bPageDto.lastPageNum }" step="1">
											<c:choose>
												<c:when test="${i eq bPageDto.currentPageNum }">
													<li class="paging" style="background-color: red"><a
														href="findorder.io?page=${i }"> ${i }</a></li>
												</c:when>
												<c:otherwise>
													<li class="paging"><a href="findorder.io?page=${i }">
															${i }</a></li>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</c:if>
									</ul>
								</div>
							</div>
						</div>
						<div class="_orderDiscountInfoContainer">
						</div>
					</div>
					<div class="_orderPaymentAmountContainer">
						<div class="info_payment_price">
							<div class="total_payment">
								<dl>
									<dt>총 결제금액</dt>
									<dd>
										<strong>${priceDto.finalPrice }</strong> <span class="won">원</span>
									</dd>
								</dl>
							</div>
							<ul class="lst_info_pay">
								<li>
									<strong class="tit_item">상품 금액</strong>
									<div class="price">
										<strong class="num">${priceDto.totalPrice }</strong>
											<span class="won">원</span>
									</div>
								</li>
								<li>
									<strong class="tit_item"> 
										<a href="#report_container2" class="btn_report_view">할인금액
											<i class="ico">상세내역 펼침/닫힘</i>
										</a>
									</strong>
									<div class="price">
										<strong class="num">-${priceDto.discountPrice }</strong>
										<span class="won">원</span>
										
									</div>
								</li>
								<hr class="Oblind">
								<c:forEach var="productsDto" items="${productsDtos }" varStatus="status1">
								
									<li class="Oblind">
										<strong class="tit_item">${productsDto.productName }</strong>
										<div class="price">
											<strong class="num">-${priceDto.discounts[status1.index] }</strong> 
											<span class="won">원</span>
										</div>
									</li>
									
								</c:forEach>
											
							</ul>
							<script type="text/javascript">
								var discount='<c:out value="${priceDto.discountPrice}"/>';
								if(discount==0){
									$(".btn_report_view").addClass('disable');
								}
								else{
									$(".btn_report_view").click(function() {
										$(".Oblind").slideToggle();
									})
								}
									
								
							</script>
							
						</div>
					</div>
					<div class="_orderReceiveInfoContainer">
						<div class="info_goods_delivery">
							<h4 class="tit_sub">배송정보</h4>
							<ol class="lst_info_address">
								<li>
									<ul class="info_user_view">
										<li><strong class="tit">받는사람</strong>
											<div class="cont">
												<span class="receiver">${customersDto.companyName }</span>
											</div></li>
										<li><strong class="tit">배송지 </strong>
											<div class="cont">
												${customersDto.address } ${customersDto.city }
												${customersDto.region } ${customersDto.postalCode }
												${customersDto.country }
												<div class="contact_info">
													<span>${customersDto.phone }</span> <span class="txt_bar"></span>
													<span>${customersDto.fax }</span>
												</div>
											</div></li>
									</ul>
								</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>