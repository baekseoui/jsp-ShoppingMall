<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<meta charset="UTF-8">

<div id="content">
                <div id="wrap_order" class="wrap_order _wrap_order">
                    <h2 class="sub_title" id="order_sheet_title">주문서<span class="blind _blind">작성하기</span></h2>
                    
          	<form name="_orderinfo_member">          
                    <div id="order_ct">
            
            <div class="tit_wrap">
                <h3 class="tit_area info_delivery">배송정보</h3>
            
            
            </div>
            
            <fieldset>	<legend class="blind">배송정보 입력</legend>		
            <div class="order_dely">
            
                    <div class="dely_info visible_addr_mark">
                        <div class="tab_comm">
                            <ul class="u_tabmenu">
                                <li id="_delivery" class="on"><a href="#">배송지  정보</a></li>
                                <li id="_new_address" style="display:none;"><a href="#">새주소 입력</a></li>
                            </ul>
                        </div>
                        <div class="addr_select" style="display: block;"> <!-- [D] 탭1 배송지 선택 -->
                            <h4 class="blind">배송지  선택</h4>
                        <div class="item_addr_wrap"><div class="item_addr selected">
            <span class="u_chkbx_no type3">
                <!-- <input type="checkbox" id="ckbx0000000002" class="inp_place _address_select" checked="checked"> -->
                <input type="hidden" id="hidden_contactTitle" value="${dtos[0].contactTitle }"/>
                <input type="hidden" id="hidden_companyName" value="${dtos[0].companyName }"/>
                <label for="ckbx0000000002" class="lab_addr"><em class="txt_place">${dtos[0].contactName}<!-- [D] 한글기준 4글자 까지 끊어주세요. --></em><span class="txt_info"></span></label>
            </span>
            
            <span class="info_addr">
            <input type="hidden" id="hidden_cusID" value="${dtos[0].customerID }" />
            <span class="blind">ADDRESS</span>
            <span class="info_addr" style="float:left; margin-right:10px;">${dtos[0].postalCode }</span>
            <span class="info_addr">${dtos[0].address }</span>
            <span class="info_addr" style="float:left; margin-right:10px;">${dtos[0].city }</span>
            <span class="info_addr" style="float:left; margin-right:10px;">${dtos[0].region }</span>
            <span class="info_addr">${dtos[0].country }</span>
            </span>
            <span class="info_tel">
                <span class="blind">PHONE</span><span class="num_tel">${dtos[0].phone }</span>
                <span class="txt_bar">|</span>
                <span class="blind">FAX</span><span class="num_tel">${dtos[0].fax }</span>
            </span>
            
                <div class="wrap_btn _btn_wrap">
                    <button type="button" class="btn_edit _address_edit"><span class="sp_order"></span>수정</button>
                </div>
            
            <div class="wrap_btn _modify_btn_wrap" style="display:none;">
                <button type="button" class="btn_submit _address_edit_confirm"><span class="sp_order"></span>확인</button>
                <button type="button" class="btn_delete _address_edit_cancel"><span class="sp_order"></span>취소</button>
            </div>
            </div>
            <div class="fld_write" style="display:none">
            <h5 class="blind">배송지 수정</h5>
            <div class="cont_inp">
                <label class="lab_write" for="placeName">받는분</label>
                <span class="u_ipbx">
                    <input type="text" id="placeName" class="int tf_place _odin_tf_place" name="deli_edit_name" placeholder="CONTACT NAME" value="${dtos[0].contactName}" data-maxlength="10" data-required="required" data-click="ODIN____delivery__addrecipient__">
                </span>
            </div>
            <div class="cont_inp">
                <strong class="lab_write">ADDRESS</strong>
                <span class="u_ipbx">
            
            
                    <input type="text" class="int tf_post" title="우편번호 입력" name="deli_edit_postalcode" placeholder="POSTAL CODE" value="${dtos[0].postalCode }">
                    <!-- <input type="button" id="_post_find" class="u_btn btn_post" title="우편번호 찾기" value="우편번호" spcid="ODIN____delivery__addpostcode__"> -->
                    <input type="text" class="int tf_addr2 _odin_tf_addr2" title="주소1" name="deli_edit_address" placeholder="ADDRESS" value="${dtos[0].address }" data-maxlength="40" data-required="required" data-click="ODIN____delivery__addaddress__">
                    <input type="text" class="int tf_addr1 div_addr1" title="주소2_도시" name="deli_edit_city" placeholder="CITY" value="${dtos[0].city }">
                    <input type="text" class="int tf_addr1 div_addr1" title="주소2_지역" name="deli_edit_region" placeholder="REGION" value="${dtos[0].region }">
                    <input type="text" class="int tf_addr1 div_addr1" title="주소2_국가" name="deli_edit_country" placeholder="COUNTRY" value="${dtos[0].country }" style="width:33.5%">
                    
            
            
                </span>
            </div>
            <div class="cont_inp">
                <strong class="lab_write">PHONE</strong>
                <span class="u_ipbx">
                    <input type="text" class="int tf_phone _cellno _odin_cellno" title="PHONE" name="deli_edit_phone" placeholder="PHONE" value="${dtos[0].phone }" data-maxlength="20" data-required="required" data-click="ODIN____delivery__addphone__">
                </span>
            </div>
            <div class="cont_inp">
                <strong class="lab_write">FAX</strong>
                <span class="u_ipbx">
                    <input type="text" class="int tf_phone _telno _odin_telno" title="FAX" name="deli_edit_fax" placeholder="FAX" value="${dtos[0].fax }" data-maxlength="20" data-required="required" data-click="ODIN____delivery__addother__">
                </span>
            </div>
            <div class="wrap_btn">
                <input type="button" class="u_btn btn_cancle _address_edit_cancel" title="수정취소" value="취소">
                <input type="button" class="u_btn btn_submit _address_edit_confirm" title="수정완료" value="확인">
            </div>
            </div></div></div>
                        
                        <div class="addr_make" style="display:none"> <!-- [D] 탭2 새주소 입력 -->
                            <h4 class="blind">새주소 입력</h4>
                            <fieldset class="fld_write">
                                <div class="cont_inp">
                                    <label class="lab_write" for="placeName">받는분</label>
                                    <span class="u_ipbx">
                                        <input type="text" id="placeName" class="int tf_place _reciever _odin_reciever" data-maxlength="20" data-click="ODIN____delivery__newrecipient__" placeholder="COMPANY NAME">
                                        <input type="text" id="placeName2" class="int tf_place _reciever _odin_reciever" data-maxlength="20" data-click="ODIN____delivery__newrecipient__" placeholder="CONTACT NAME">
                                    </span>
                                </div>
                                <div class="cont_inp">
                                    <strong class="lab_write">주소</strong>
                                    <span class="u_ipbx">
                                        <input type="text" class="int tf_post" title="우편번호 입력" data-maxlength="10" placeholder="POSTAL CODE">
                                        <!-- <input type="button" id="_post_find" class="u_btn btn_post" title="우편번호 찾기" value="우편번호" spcid="ODIN____delivery__newpostcode__"> -->
                                        <input type="text" class="int tf_addr1" title="주소1" placeholder="CITY, REGION, COUNTRY" required>
                                        <input type="text" class="int tf_addr2 _odin_tf_addr2" title="주소2" data-maxlength="40" data-required="required" data-click="ODIN____delivery__newaddress__" placeholder="ADDRESS">
                                    </span>
                                </div>
                                <div class="cont_inp">
                                    <strong class="lab_write">전화번호</strong>

                                    <span class="u_ipbx">
                                        <input type="text" class="int tf_phone _cellno _odin_cellno" title="전화번호" data-maxlength="20" data-click="ODIN____delivery__newphone__" placeholder="PHONE">
                                    </span>
                                </div>
                                <div class="cont_inp">
                                    <strong class="lab_write">FAX</strong>

                                    <span class="u_ipbx">
                                        <input type="text" class="int tf_phone _telno _odin_telno" title="FAX" data-maxlength="20" data-click="ODIN____delivery__newother__" placeholder="FAX">
                                    </span>
                                </div>
                            </fieldset>
                        </div>

                    </div>

            
            
            
            		<div class="u_chkbx type2 basic_addr_chk">
                        <input type="checkbox" id="basic_addr_chk">
                        <label for="basic_addr_chk">기본배송지로 등록<em>(배송 주소지 정보만 변경)</em><span class="bin"></span></label>
                    </div>
            <!--// "order_dely" --></div></fieldset>
            
           
            </div>
                    
                    <div id="order_item_price">
                    </div>
                    <div id="order_item_list"><div class="tit_wrap">
            <h3 class="tit_area apply_discount">배송 상품 정보</h3>
            </div>
            <fieldset>
            <div class="order_disct">
                <div class="group_disct">
                
                
                <c:set var="col_sum" value="0" />
                <!-- 상품 정보 시작 -->
               	<c:forEach items="${cartDtos }" var="dto">
                <div class="group_view_box"><div class="disct_item"><div class="wrap_item no_disc">
                <div class="prod_disct">
                <a href="#none" class="link_thumb flex_area">
                    <span class="flex_cont">
                        ${dto.picture }
                    </span>
                </a>
                <div class="info_thumb">
                    <strong class="tit_name">
                        <a href="#none" class="link_cont _item_detail_link">${dto.getProductName() }</a>
                        <span class ="txt_option">
                        Unit Price
                        <span class="txt_bar">|</span>
                        <span class="price_unit">&nbsp;<b>${dto.getPrice2() }</b></span><span class="txt_measure2">&nbsp;$</span>
                        </span>
                    </strong>
                    <span class="txt_option">
                    	수량
                    	<span class="txt_bar">|</span>
                    	<span class="num_count"> ${dto.getQuantity() }</span>
                    </span>
                    
                    <span class="txt_price">
                        <span class="num_cost">${dto.getPrice2()*dto.getQuantity()}</span>
                        <span class="txt_measure">&nbsp;$</span>
                    </span>
                </div>
            </div>
            </div></div></div>
            
            <c:set var="col_sum" value="${col_sum + dto.getPrice2()*dto.getQuantity()}" />
            
            </c:forEach>
            <!-- 상품 정보  끝 -->
            

            <div class="total_amount">
            <strong class="tit_amount">총 주문금액</strong> <span class="num_amount"><span data-modelindex="totalSalePrice"><fmt:formatNumber value="${col_sum }" pattern=".00"/></span><span class="txt_measure">&nbsp;$</span></span>
            </div></div></div>
            </fieldset></div>
                    
                   
                    
                    <div id="order_payment">
 
            
            
            <fieldset>

            
            <div class="box_pay pay_sec">
                <!-- // 결제 할인적용 동의 -->
                <span class="u_chkbx type2 chk_agree">
                    <input type="checkbox" id="order_agree" class="_buy_agree" required>
                    <label for="order_agree" spcid="ODIN____payment__orderok__">위 주문의 상품, 가격, 할인, 배송정보에 동의함<span class="bin" spcid="ODIN____payment__orderok__"></span></label>
                </span>
                <button type="submit" id="_buy" class="u_btn bg_none" spcid="ODIN____payment__payment__">
                <span spcid="ODIN____payment__payment__">결제하기</span>
                </button>

            </div>

            </fieldset>
            
            </div>
			</form>
        	</div>
        	
            </div>