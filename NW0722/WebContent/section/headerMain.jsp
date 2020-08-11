<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript">
function logout() {
return confirm("로그아웃하시겠습니까?")

}
</script>
<div class="header_inner_wrap">
	<div class="global_width">
		<div class="header_inner">
			<h1>
				<!-- Home 클릭 이미지 -->
				<a href="../main/main.jsp"> <img src="../img/northwind8.png">
				</a>
			</h1>
			<div class=srh_wrapper>
				<div class="srh_area">
					
					<form id="submitFrm" name="submitFrm"
						action="../productIndex/searchProduct.po">
						<fieldset>
							<legend> 통합검색어 입력 </legend>
							<div class="ui_input">
								<input type="text" id="srh_keyword" class="input_txt"
									name = "search" autocomplete="off" maxlength="30" placeholder="Search">

								<button type="submit" class="fas fa-search"
									style="margin-top: -11px;"></button>
									<button class="_search"></button>
								
						</div>
				</fieldset>
				</form>
			</div>
		</div>

	</div>

	<!-- <div class="category_wrap">
                         카테고리 마우스 오버 
                    </div> -->
	<div class="tab_home line">
		<!-- 카테고리 탭 -->
		<div class="lst_home_wrap">
			<ul class="lst_home">
				<li><a href="../productIndex/Beverages.po" class=" "> <!-- 클릭시 'on' 클래스 추가 -->
						<span class="m_name">Beverages</span>
				</a></li>
				<li><a href="../productIndex/Condiments.po" class=" "> <span
						class="m_name">Condiments</span>
				</a></li>
				<li><a href="../productIndex/Confections.po" class=" "> <span
						class="m_name">Confections</span>
				</a></li>
				<li><a href="../productIndex/DairyProducts.po" class=" "> <span
						class="m_name">Dairy Products</span>
				</a></li>
				<li><a href="../productIndex/GrainsCereals.po" class=" "> <span
						class="m_name">Grains/Cereals</span>
				</a></li>
				<li><a href="../productIndex/MeatPoultry.po" class=" "> <span
						class="m_name">Meat/Poultry</span>
				</a></li>
				<li><a href="../productIndex/Produce.po" class=" "> <span
						class="m_name">Produce</span>
				</a></li>
				<li><a href="../productIndex/Seafood.po" class=" "> <span
						class="m_name">Seafood</span>
				</a></li>
			</ul>
		</div>
	</div>

	<div class="util_menu">
		<!-- 로그인 마이페이지 장바구니 -->
		<ul>
			<li class="log_in"><c:choose>
					<c:when test="${empty sessionScope.login_Name}">
						<a href="../member/mainLoginPage.jsp" class="_loginBtn"><span
							class="ico">&nbsp;</span> LOGIN </a>
					</c:when>
					<c:otherwise>
						<a href="../logout.so" class="_loginBtn"
							onclick="return logout();"><span class="ico">&nbsp;</span>
							LOGOUT </a>

					</c:otherwise>
				</c:choose></li>
			<li class="myzone"><a href="../myPage/index.io?userID=${login_Id }" id="go_myzone">
					<span class="ico">&nbsp;</span> MY PAGE
			</a></li>
			<li class="cart "><a href="../cart/cartSelect.po"> <span
					class="ico">&nbsp;</span> CART
			</a></li>
		</ul>
	</div>
</div>
<!-- <div class="quick_menu_float"></div> -->
</div>
