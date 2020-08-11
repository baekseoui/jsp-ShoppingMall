$(document).ready(function(){

	$("#buynowbtn").click(function(){
		
		var params="picture="+$("#content > div.prd_wrap > div.prd_detail_cont > div.prd_img_wrap > div > input[type=hidden]").val()+
		"&productName="+$("#content > div.prd_wrap > div.prd_detail_cont > div.prd_info_wrap > div.prd_content_wrap > div.prd_info > input[type=hidden]:nth-child(2)").val()+
		"&productId="+$("#content > div.prd_wrap > div.prd_detail_cont > div.prd_info_wrap > div.prd_content_wrap > div.prd_info > input[type=hidden]:nth-child(3)").val()+
		"&price2="+$("#content > div.prd_wrap > div.prd_detail_cont > div.prd_info_wrap > div.prd_content_wrap > div.prd_info > div.price_area > input[type=hidden]").val()+
		"&quantity="+$("#content > div.prd_wrap > div.prd_detail_cont > div.prd_info_wrap > div.prd_content_wrap > div.form_div > div.button_block > input").val();
		
		location.href="../myPage/ordersBuyNowSelect.io?"+params;
	})

})