<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 선택</title>
<link rel="stylesheet" href="../css/select_goods.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="../js/select_goods.js"></script>
 <script>

 $(function(){
	  $("._selected_order").click(
		   function closePage(){
		   	opener.document.getElementsByClassName("select_orderItem").select_g.value=
		      $(this).parent("span").next("a").next("div").children("strong").children(".link_cont").text(); 
		   	opener.document.getElementsByClassName("select_orderItem1").select_n.value=
			      $(this).parent("span").next("a").next("div").children("strong").children(".link_num").text();
		        window.close();														      
			  }
		  )
	})
			 
 
 </script>

</head>
<body>
	   <div class="popup_wrap">
        <div class="popup_header">
            <h1 class="popup_tit">상품선택</h1>
        </div>
        <div class="cs_layer _container">
            <div class="u_tabmenu_wrap">
                <ul class="u_tabmenu dtype">
                    <li class="_search_order_select on" id="search_order">
                        <a href="#">주문/배송</a>
                    </li>
                     <!--  <li class="_search_claim_select" id="search_claim">
                        <a href="#">취소/교환/반품</a>
                    </li>   -->
                    <li class="_search_cart_select" id="search_cart">
                        <a href="select_goods2.so">장바구니</a>
                    </li>
                   
                </ul>
            </div>
            <!-- 주문 내역 조회 -->
            
            <div class="_order_list_content" style="display:block">
            
            <c:forEach var="dto" items="${dtos}">
                <div role="likstitem" class="order_prod">
                    <div class="order_id">
                        <strong>주문번호</strong>
                        <span>${dto.orderId}</span>
                    </div>
                    
                    <div class="box_wrap">
                    
                       <form action="cs7_file.jsp" method="get" name="frm">
                        <div class="box_prod">
                        
                            <span class="u_rdbx chk_prod">
                                <input type="button" value="선택" class="_selected_order">

                            </span>
                            <a class="link_thumb _itemImage">
                            
                            <!-- 이미지 -->
                            ${dto.picture}
                            </a>
                            <div class="prod_details">
                                <strong class="tit_prod">
                                    	제품번호:
        	                       <a   class="link_num" name="select_n">${dto.productId }<br>
                                    <a  class="link_cont" name="select_g">${dto.productName}</a>
                                </strong>
                                <span class="info_option">
                                    <span class="txt_option"><b>가격 :$ ${dto.unitprice}</b></span>
                                    <span class="txt_bar">|</span>
                                    <span class="txt_count"><b>수량:${dto.quantity}개</b><span class="num"></span>
                                    </span>
                                    <br>
                                </span>
                                <em class="num_amount">총: $ ${dto.sum} <span class="txt"></span>
                                </em>
                            </div>
                        </div>
                        </form>

                    </div>
                   
                </div>
 			</c:forEach>
            </div>
            
            
           	<!--취소/교환/반품  -->
<!--             <div class="_claim_list_content" style="display: none;">
               
            </div>  -->
            
            <!-- 장바구니 -->
            <div class="_cart_list_content order_prod" style="display: none;">    
            
            <c:forEach var="cartList" items="${cartList}">
                <div role="likstitem" class="order_prod">
                    <div class="order_id">
                        <strong>카트번호</strong>
                        <span>${cartList.cartId}</span>
                    </div>
                    
                    <div class="box_wrap">
                    
                       <form action="cs7_file.jsp" method="get" name="frm">
                        <div class="box_prod">
                            <span class="u_rdbx chk_prod">
                                <input type="button" value="선택" class="_selected_order"onclick="select_goods()" >

                            </span>
                            <a href="#" class="link_thumb _itemImage">
                            
                            <!-- 이미지 추후 예정 -->
                            ${cartList.picture } 
                            </a>
                            <div class="prod_details">
                                <strong class="tit_prod">
                                	제품번호:
                                	<a href="#none"  class="link_num" name="select_n">${cartList.productId }<br>
                                    <a href="#" class="link_cont"  >${cartList.productName}</a>
                                </strong>
                                <span class="info_option">
                                    <span class="txt_option"><b>가격 :${cartList.price2}원</b></span>
                                    <span class="txt_bar">|</span>
                                    <span class="txt_count"><b>수량:${cartList.quantity}개</b><span class="num"></span>
                                    </span>
                                    <br>
                                </span>
                                <em class="num_amount">총:${totalPrice} <span class="txt">원</span>
                                </em>
                            </div>
                        </div>
                        </form>

                    </div>
                   
                </div>
 			</c:forEach>
            
            </div>
            

                <!-- 다음페이지 이전페이지 -->
                <div class="u_pagination">
                    <div class="pagination_inner">
                        <a href="select_goods.so?page=${bPageDto.firstPageNum}&pageDataCount=${bPageDto.pageDataCount}" class="btn_pn_prev ten_type _goPrevTenPage">
                            <span class="ico_arr"></span>이전 페이지</a>
                            <a href="select_goods.so?page=${bPageDto.prevPageNum}&pageDataCount=${bPageDto.pageDataCount}"  class="btn_pn_prev _goPrevPage">
                            <span class="ico_arr"></span>이전 페이지</a> 
                             
                            <c:forEach var="i" begin="${bPageDto.startPageNum }" end="${bPageDto.endPageNum }" step="1">
                            <c:choose>
                            <c:when test="${i eq 0 }">
						        <a href="#">${i}</a>
						    </c:when>
                            <c:when test="${i eq bPageDto.currentPageNum }">
            					<a style="color:#DA006B;font-weight:700;" href="select_goods.so?page=${i }&pageDataCount=${bPageDto.pageDataCount}" class="lk_pn on"> ${i }</a>  
                            </c:when>
                            <c:otherwise>                             
                             	<a href="select_goods.so?page=${i }&pageDataCount=${bPageDto.pageDataCount}" class="lk_pn on"> ${i }</a>                             
                            </c:otherwise>
                            </c:choose>
                            </c:forEach>                              
                            <a href="select_goods.so?page=${bPageDto.nextPageNum}&pageDataCount=${bPageDto.pageDataCount}"  class="btn_pn_next _goNextPage">
                            	<span class="ico_arr"></span>다음 페이지</a>
                            <a href="select_goods.so?page=${bPageDto.lastPageNum}&pageDataCount=${bPageDto.pageDataCount}"  class="btn_pn_next ten_type _goNextTenPage">
                                <span class="ico_arr"></span>다음 페이지</a>
                    </div>
                </div>
        </div>
    </div>
   
</body>
</html>