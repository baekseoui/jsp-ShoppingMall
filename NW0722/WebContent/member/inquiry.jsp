<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/inquirycon.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="../jquery/inquiry_con.js"></script>
<script>
function select_goods() { 
	window.open("select_goods.jsp", "상품선택", "width=800, height=800, left=100, top=50"); 
}
</script>
</head>
<body>
 <div class="container">
        
      <div class="main_content">
          <!-- <div class="tit_wrap"></div> -->
        <div class="main_content_header">
                                         <!-- 추후 변경할지도 -->
            <p class="header_title"><b>쇼핑몰 1:1 문의하기</b></p>
            <span><b>고객님 중심의 쇼핑몰</b></span>
            <p class="content_header_sub_title">
                이용중 불편한 점이나 문의사항을 보내주세요. 확인후 답변드리겠습니다.
            </p>
        </div>   
        <div class="clear"></div>

        <div class="second_content">
            <select title="선택옵션" class="category_selector">
                <option value="" selected="">유형을 선택해주세요</option>
                <option value="" data-coderemk1="" data-coderemark="">
                    주문/배송 문의
                </option>
                <option value="" data-coderemk1="" data-coderemark="">
                    취소/교환/반품 문의
                </option>
                <option value="" data-coderemk1="" data-coderemark="">
                    결제환불 문의
                </option>
                <option value="" data-coderemk1="" data-coderemark="">
                    이벤트/혜택 문의
                </option>
                <option value="" data-coderemk1="" data-coderemark="">
                    상품/AS 문의
                </option>
                <option value="" data-coderemk1="" data-coderemark="">
                    기타
                </option>
            </select>
            <div class="clear"></div>
                <div class="item_prod">
                    <span class="u_ipbx">
                    <input title="상품을 선택해 주세요" class="select_orderItem" type="text"
                    readonly="" placeholder="상품을 선택해 주세요(선택)">
                    <!-- 이거 일단 보류 -->
                    <!-- <label class="lbl">상품을 선택해 주세요(선택)</label> -->
                    </span>
                    <button class="u_btn_btn_search" type="button" onclick="select_goods()">상품선택</button>
                </div>
             <div  class="item_inqiry">
                 <textarea class="ft_cont"  maxlength="1000" rows="5" cols="30" placeholder="문의 내용을 입력하세요."></textarea>
                 <div class="cont_item_cont_tf_txt">
                    <div class="item_inqiry_img">
                      <input name="fileData" id="imgInput" type="file" title="이미지 선택"  multiple accept="image/*"  />
                      </div>
                </div>

             </div>
             
              <div class="item_inquiry_item_rd">
                  <strong class="tit_item">휴대폰 답변알림</strong>
                    <button class="btn_alarm_on">
                        <div class="btn_s">
                            <span class="blind">받음</span>
                        </div>
                 </button>
                  <!-- 버튼으로 만들어야되는데 스크립트로 만든거같음 나중에 확인후 추가 -->
              </div>
              <div class="clear"></div>
              <div class="item_inquiry_item_phone">
                  <strong class="tit_item">휴대폰</strong>
                    <select title="선택옵션" class="phone_num_selector">
                      <option value="010" selected="">010</option>
                      <option value="011">011</option>
                      <option value="011">016</option>
                      <option value="011">017</option>
                      <option value="011">018</option>
                      <option value="011">019</option>
                    </select>
                   <span class="u_ipbx">
                       <input title="휴대폰 뒷번호 입력란" class="int_cellPhone" type="tel">
                  </span>
              </div>
              <div class="cont_btn">
                  <div class="half">
                      <div class="col_half_l">
                          <button class="u_btn_btn_cancle" type="button">취소</button>
                      </div>
                  </div>
                  <div class="half">
                      <div class="col_half_r">
                          <button class="u_btn_btn_save" type="button">문의하기</button>
                      </div>
                  </div>
              </div>
        </div>  
     </div>
    </div>
    



</body>
</html>