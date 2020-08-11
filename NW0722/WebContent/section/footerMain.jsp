<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="UTF-8">

<div class="foot_inner">
	<h2 class="tit_foot">
		<span class="site_logo">  <img
			src="../img/northwind8.png">
		</span>
	</h2>
	<div class="rel_foot">
		<ul class="list_rel">
			<li><a href="../member/customer_service.jsp" class="link_cont">Customer Service</a></li>
			<li><a href="../member/notice_view.so" class="link_cont _enterGuide">Notice</a></li>
			<li><a href="../member/customer_inquiry.jsp"
				class="link_cont _partners">1:1 Contacts</a></li>
			<c:choose>
				<c:when test="${sessionScope.login_Rank =='ADMIN'}">
							     <li><a href="../manager/Employees_Select.do?page=1" class="link_cont _partners">Admin</a>
				</c:when>
				<c:otherwise>		       
							     <li><a href="#" class="link_cont _partners">Admin</a>
				</c:otherwise>       
			</c:choose>
		</ul>
	</div>
	<div class="policy_foot">
		<h3 class="blind">사업자 연락정보 및 약관</h3>
		<address class="contact_info">
			<span class="txt_info">© 2020 The NorthWind, Inc</span>
                        <span class="txt_info">Privacy Policy</span>
                        <span class="txt_info">Do Not Sell My Info</span>
                        <span class="txt_info">Interest Based Ads</span>
                        <span class="txt_info">Terms of Use</span>
                        <span class="txt_info">Careers</span>
                        <span class="txt_info">Sustainability</span>
                        <span class="txt_info">Tel : 0000-0000 &nbsp;&nbsp; Fax : 00-0000-0000</span>
		</address>
		<ul class="list_terms_link">
	
			<li>
			NorthWind.com © Copyright 1997-2020 NorthWind, LLC. 
			All rights reserved. NorthWind® is a registered trademark of NorthWind, 
			LLC. Trusted Brands.<br> Healthy Rewards. and the NorthWind.com Trusted Brands.
			Healthy Rewards. Logo are trademarks of NorthWind, LLC.
			</li>
		</ul>
	</div>
</div>

