<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>North Wind</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<link rel="stylesheet" href="../css/mainIndex.css">
<link rel="stylesheet" href="../css/mainOriginIndex.css">
<link rel="stylesheet" href="../css/categoriesPage.css" />
<link rel="stylesheet" href="../css/ProductDetails.css">
<link rel="stylesheet" href="../css/review.css">
<script type="text/javascript" src="../js/buynow.js"></script>

</head>
<body onload="init();">

	<div id="wrap">
		<div id="header">
			<jsp:include page="../section/headerMain.jsp" />
		</div>
		<div id="container">
			<form name="form" method="post">
				<div id="content">
					<div class="u_breadcrumbs_wrap"></div>
					<div class="prd_wrap">
						<div class="prd_detail_cont">
							<!-- 이미지 -->
							<div class="prd_img_wrap">
								<div class="prd_detail">
									<div class="prd_img" id="_topPrdImg">${productDto.picture }</div>
									<input type="hidden" name="picture"
										value="${productDto.picture }">
								</div>
							</div>

							<!-- 글설명 -->
							<div class="prd_info_wrap">

								<!-- 제품정보/가격 warp -->
								<div class="prd_content_wrap">
									<div class="prd_info">
										<h3 class="prd_tit">${productDto.productName }</h3>
										<input type="hidden" name="productName"
											value="${productDto.productName }"> <input
											type="hidden" name="productId"
											value="${productDto.productId }">
										<div class="price_area">
											<span class="price_txt"> <strong class="ff_price">${productDto.unitPrice}</strong>
												<!-- 물품 가격 -->
											</span> <input type="hidden" name="price2"
												value="${productDto.unitPrice }">
											<div class="InStock">
												<p class="InStock_text">In Stock</p>
											</div>
										</div>
										<div class="card_discount_wrap">
											<div class="discount_sum">

												<ul class="ul_mapa">
													<li>Quantity Per Unit : <strong class="card_ftst">${productDto.quantityPerUnit }</strong>
													</li>
												</ul>

												<ul class="ul_mapa">
													<li>Units In Stock : <strong class="card_ftst">${productDto.unitsInStock }</strong>

													</li>
												</ul>

												<ul class="ul_mapa">
													<li>
														<p class="card_ft">Free Shipping</p>
													</li>
												</ul>
											</div>
										</div>
									</div>

									<div class="form_div">
										<!-- <form name="form" method="get"> -->
										<div class="button_block">
											<p class="button_P">Quantity:</p>
											<!-- 수량 -->
											<input type="text" class="text_input" name="amount" value="1"
												size="3" onchange="change();">


											<div class="form_button">
												<div class="form_button_area">
													<input class="text_pbutton" type="button" value=" ＋ "
														onclick="add();"> <input class="text_mbutton"
														type="button" value=" － " onclick="del();">
												</div>
											</div>
										</div>

										<div class="money_block">
											<p class="button_P">Price:</p>
											<input type="hidden" name="sell_price"
												value="${productDto.unitPrice}"> <input type="text"
												class="my_sum" name="sum" size="11" readonly>

										</div>

										<script language="JavaScript">
											var sell_price;
											var amount;
											var change;
											var a;

											function init() {
												sell_price = document.form.sell_price.value;
												amount = document.form.amount.value;
												document.form.sum.value = sell_price;
												change();
											}

											function add() {
												hm = document.form.amount;
												sum = document.form.sum;
												hm.value++;

												/* sum.value = parseInt(hm.value) * sell_price; */
												var i = parseFloat(
														parseInt(hm.value)
																* sell_price)
														.toFixed(2).replace(
																/\.0+$/, '');
												sum.value = i;
											}

											function del() {
												hm = document.form.amount;
												sum = document.form.sum;
												if (hm.value > 1) {
													hm.value--;
													/* sum.value = parseInt(hm.value) * sell_price; */
													var i = parseFloat(
															parseInt(hm.value)
																	* sell_price)
															.toFixed(2)
															.replace(/\.0+$/,
																	'');
													sum.value = i;
												}
											}

											function change() {
												hm = document.form.amount;
												sum = document.form.sum;

												if (hm.value < 0) {
													hm.value = 0;
												}
												/* sum.value = parseInt(hm.value) * sell_price; */
												var i = parseFloat(
														parseInt(hm.value)
																* sell_price)
														.toFixed(2).replace(
																/\.0+$/, '');
												sum.value = i;
											}
										</script>
									</div>
								</div>

								<!--장바구니/주문하기 버튼-->
								<div class="buy_wrap gift_case">


									<div class="btn_cover">
										<input type="submit" class="u_btn btn_cart_go _cart"
											value="Add to cart"
											onClick="javascript: form.action='../cart/cartInsert.po'">


										<input type="button" id="buynowbtn"
											class="u_btn btn_buy_now _buy" value="Buy Now" />
									</div>


								</div>
							</div>
						</div>
					</form>
					<div id="tab_wrap">
						<div class="tab_menu">
							<ul>
								<li><a href="#productReview">상품평</a></li>
								<li><a href="#qnaBoard">Q&A</a></li>
							</ul>
						</div>
					</div>
					<div id="productReview" class="tabcontent">
						<jsp:include page="productReview.jsp"></jsp:include>
					</div>
					<br>
					<div id="qnaBoard" class="tabcontent">
						<jsp:include page='../board/qnaBoard.jsp' />
					</div>
				</div>
			</div>
		</div>
	</div>


	<div id="footer">
		<jsp:include page="../section/footerMain.jsp" />
	</div>


</body>
</html>