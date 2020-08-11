<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<div id="aside">
	<h2 class="tit_cs">
		<a href="index.io">MY PAGE</a>
	</h2>
	<div class="cs_snb">
		<ul class="list_snb">
			<li><strong class="tit_sub">나의 쇼핑정보</strong>
				<ul class="list_snb_sub">
					<li><a href="AllDelivStat.io" class="link_snb_sub"
						spcid="MYCJ____left__orderlist__">주문배송 조회</a></li>
					<li><a href="indexBd.io?userID=${userID }" class="link_snb_sub"
						spcid="MYCJ____left__returnlist__">취소/교환/반품 내역</a></li>
					<li><a href="index8.so" class="link_snb_sub">상품 리뷰</a></li>
					<!-- <li>
<a href="#" class="link_snb_sub" spcid="MYCJ____left__rent__">증빙서류 발급</a>
</li> -->
				</ul></li>
			<li><strong class="tit_sub">나의 계정설정</strong>
				<ul class="list_snb_sub">
					<li><a href="personalInfoSelect.io" class="link_snb_sub _btn_modify">회원정보수정</a>
					</li>
					<!-- <li>
<a href="#" class="link_snb_sub" spcid="MYCJ____left__pinfuse__">회원등급</a>
</li> -->
				</ul></li>
			<li><strong class="tit_sub">고객센터</strong>
				<ul class="list_snb_sub">
					<li><a href="indexqna1by1_view.so" class="link_snb_sub"
						spcid="MYCJ____left__zzimall__">1:1 문의내역</a></li>
					<li><a href="indexSearchQnaList_view.so" class="link_snb_sub"
						spcid="MYCJ____left__rwlist__">상품 Q&A 내역</a></li>
					<!-- <li>
<a href="#" class="link_snb_sub" spcid="MYCJ____left__tvpush__">공지사항</a>
</li> -->
					<li><a href="../member/customer_service.jsp"
						class="link_snb_sub" spcid="MYCJ____left__foodstp__">FAQ</a></li>
				</ul></li>
		</ul>
	</div>
</div>
<div id="content">
	<div class="wrap_member">
		<h2 class="sub_title">회원정보수정</h2>
		<div class="member_edit">
			<div class="edit_tit">
				<h3 class="tit_cont">
					<strong class="txt_nmae">${list[0].customerID }</strong>님의 쇼핑정보
				</h3>
				<span class="edit_info"><span class="txt_mark">*</span>필수입력정보</span>
			</div>
			<form action="personalInfoUpdate.io?companyName=${list[0].companyName }&region=${list[0].region }" method="post">
				<fieldset>
					<legend class="blind">회원정보변경 형식</legend>
					<ul class="list_info">
						<li><label class="lab_info">CUSTOMERID</label> 
						<span class="u_ipbx updateInfo"><input type="text" class="u_ipbx int" title="CUSTOMERID" placeholder="CUSTOMERID" name='customerID' value="${list[0].customerID }" readonly /></span></li>
						<li><label class="lab_info">PASSWORD</label> <span
							class="u_ipbx updateInfo"><input type="text" class="u_ipbx int" title="PASSWORD" placeholder="PASSWORD" name = 'passInfo'
								value="${passInfo }" /></span>
							<!-- <button type="button" class="u_btn pwd_change_btn open_layer"
								data-functionname="passwordChangeLayerOpen" data-value="">변경</button> -->
						</li>
						<li id="thridparty_naver" style="display:;">
							<label class="lab_info">CONTACT NAME</label>
							<span class="u_ipbx updateInfo">
								<input type="text" class="u_ipbx int" title="CONTACT NAME" placeholder="CONTACT NAME" name='contactName' value="${list[0].contactName }" />
								<span class="ico"></span>
							</span>
							<!-- <button type="button" class="u_btn thirdparty_status" id="naver">변경</button> -->
						</li>
						<li id="thridparty_apple" style="display:;"><label
							class="lab_info">CONTACT TITLE</label><span class="u_ipbx updateInfo">
							<input type="text" class="u_ipbx int" title="CONTACT TITLE" placeholder="CONTACT TITLE" name='contactTitle' value="${list[0].contactTitle }" /><span
								class="ico"></span></span>
						<!-- 	<button type="button" class="u_btn thirdparty_status" id="apple">변경</button> -->
						</li>
						<li id="connect_fido" style="display: none;"><label
							class="lab_info">로그인연동</label> <span class="tf_int"
							id="fido_label"><span class="ico"></span>지문 · 패턴 · PIN으로
								로그인</span>
							<!-- <button type="button" class="u_btn fido_status">ON</button> --></li>
						<li><label class="lab_info">PHONE<span
								class="txt_mark">*</span></label> <span class="u_ipbx updateInfo"
							id="baseText_cellphoneNumber"><input type="text" class="u_ipbx int" title="PHONE" placeholder="PHONE" name='phone'
								value="${list[0].phone }" /></span>
							<!-- <button type="button" class="u_btn open_layer"
								data-functionname="cellphoneChangeLayerOpen"
								data-value="01020743260">변경</button> --></li>
						<li><label class="lab_info">FAX</label><span class="u_ipbx updateInfo"
							id="baseText_homeTelephoneNumber"><input type="text" class="u_ipbx int" title="FAX" placeholder="FAX" name='fax'
								value="${list[0].fax }" /></span> 
						<!-- 	<button type="button" class="u_btn open_layer"
								data-functionname="telephoneChangeLayerOpen"
								data-value="01020743260">변경</button> --></li>
						<li class="item_addr"> 
							<label class="lab_info">주소</label> 
							<span class="u_ipbx"> 
								<input type="text" class="int int_post"
									title="POSTALCODE" value="${list[0].postalCode }" placeholder="POSTALCODE" name='postalCode'
									id="baseText_homeZipNo"
									data-functionname="homeAddressChangeLayerOpen" /> </span> 
						<!-- country주소 --> 
						 <span class="u_ipbx ipbx_addr" id="homeAddress1Area" >
						 	<input type="text" class="int addr9" title="COUNTRY" value="${list[0].country}"
								placeholder="COUNTRY" name='country'  id="baseText_homeAddress1"
								data-functionname="homeAddressChangeLayerOpen" />
						</span>	
						<!-- city주소 --> 
						<span class="u_ipbx ipbx_addr" id="homeAddress1Area" > 
							<input type="text" class="int addr9" title="CITY" value="${list[0].city}"
								placeholder="CITY" name='city'  id="baseText_homeAddress1"
								data-functionname="homeAddressChangeLayerOpen" />
						</span> 
						<!-- city주소 --> 
						<span class="u_ipbx ipbx_addr" id="homeAddress1Area" > 
							<input type="text" class="int addr9" title="ADDRESS" value="${list[0].address}"
								placeholder="ADDRESS" name='address'  id="baseText_homeAddress1"
								data-functionname="homeAddressChangeLayerOpen" />
						</span> 
						<!-- address주소 -->
						<span class="u_ipbx ipbx_addr" id="homeAddress2Area" style="display: none;"> 
							<input type="text" class="int" title="ADDRESS" value="${list[0].address }" 
								placeholder="ADDRESS" name='address' id="baseText_homeAddress2" /> 
							<label class="lbl" style="display: none;">건물명을 포함한 상세주소 입력</label>
						</span>
						  <!-- 도로명주소 --> <span class="u_ipbx ipbx_addr"
							id="homeRoadAddress1Area" style="display: none;"> <input type="text"
								class="int addr9" title="주소1" placeholder="CITY REGION COUNTRY" name='city region country ' 
								value="${list[0].city } ${list[0].region} ${list[0].country}" id="baseText_homeRoadAddress1"
								data-functionname="homeAddressChangeLayerOpen">
						</span> <span class="u_ipbx ipbx_addr" id="homeRoadAddress2Area" style="display: none;">
								<input type="text" class="int addr9" title="주소2" placeholder="ADDRESS" name='address'
								value="${list[0].address }" id="baseText_homeRoadAddress2"> <label
								class="lbl" style="display: none;">건물명을 포함한 상세주소 입력</label>
						</span>
						<!-- 	<button type="button" class="u_btn open_layer"
								data-functionname="homeAddressChangeLayerOpen">변경</button> --></li>
								
					</ul>
					<div class="cont_btn">
						<div class="half">
							<div class="col_half">
								<button type="button" class="u_btn btn_type2" id="updateCancel">취소</button>
							</div>
							<div class="col_half">
								<button class="u_btn btn_type1"
									id="updateMyInformation">저장</button>
							</div>
						</div>
					</div>
				</fieldset>
			</form>

		</div>
	</div>
</div>