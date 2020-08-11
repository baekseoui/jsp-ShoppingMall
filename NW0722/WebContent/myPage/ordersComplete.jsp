<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="UTF-8">

<div id="content">
	<div id="wrap_order" class="wrap_order _wrap_order">
		
		<div id="order_complete_msg">
			<p align="center">Thank you!</p>
			<p align="center">Your order has been received.</p>
			
			<div id="order_info_msg">
				<span id="orderNum" class="order_msg_box">
					Your Order Number : <em>${orderID }</em>
				</span><br />
				<span id="orderMsg" class="order_msg_box">
					Please keep this order number for your records.
				</span>
			</div>    
			
		</div>
	</div>
        	
</div>