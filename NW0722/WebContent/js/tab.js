$(document).ready(function(){
    
    $('#_delivery > a').click(function(){

        $('#_delivery').addClass('on');
        $('#_new_address').removeClass('on');

        $("#order_ct > fieldset > div > div > div.addr_select").css('display','block');
        $("#_show_other_delivery").css('display','inline-block');

        $("#order_ct > fieldset > div > div > div.addr_make").css('display','none');


    });

    $('#_new_address > a').click(function(){

        $('#_new_address').addClass('on');
        $('#_delivery').removeClass('on');

        $("#order_ct > fieldset > div > div > div.addr_make").css('display','block');
        
        $("#order_ct > fieldset > div > div > div.addr_select").css('display','none');
        $("#_show_other_delivery").css('display','none');

    })
    
    $("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > div.wrap_btn._btn_wrap > button").click(function(){

        $("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > div.wrap_btn._btn_wrap").css('display','none');
        
        $("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > div.wrap_btn._modify_btn_wrap").css('display','block');
        $("#order_ct > fieldset > div > div.dely_info.visible_addr_mark > div.addr_select > div > div.fld_write").css('display','block');

    })

//    $("#order_ct > fieldset > div > div.dely_info.visible_addr_mark > div.addr_select > div > div.item_addr.selected > div.wrap_btn._modify_btn_wrap > button.btn_submit._address_edit_confirm, #order_ct > form > fieldset > div > div.dely_info.visible_addr_mark > div.addr_select > div > div.item_addr.selected > div.wrap_btn._modify_btn_wrap > button.btn_delete._address_edit_cancel, #order_ct > form > fieldset > div > div.dely_info.visible_addr_mark > div.addr_select > div > div.fld_write > div.wrap_btn > input.u_btn.btn_cancle._address_edit_cancel, #order_ct > form > fieldset > div > div.dely_info.visible_addr_mark > div.addr_select > div > div.fld_write > div.wrap_btn > input.u_btn.btn_submit._address_edit_confirm").click(function(){
//
//        $("#order_ct > fieldset > div > div.dely_info.visible_addr_mark > div.addr_select > div > div.item_addr.selected > div.wrap_btn._btn_wrap").css('display','block');
//
//        $("#order_ct > fieldset > div > div.dely_info.visible_addr_mark > div.addr_select > div > div.item_addr.selected > div.wrap_btn._modify_btn_wrap").css('display','none');
//        $("#order_ct > fieldset > div > div > div.addr_select > div > div.fld_write").css('display','none');
//    })
    
    $("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > div.wrap_btn._modify_btn_wrap > button.btn_delete._address_edit_cancel, #order_ct > fieldset > div > div > div.addr_select > div > div.fld_write > div.wrap_btn > input.u_btn.btn_cancle._address_edit_cancel").click(function(){
    	$("#order_ct > fieldset > div > div > div.addr_select > div > div.fld_write").css('display','none');
    	
        $("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > div.wrap_btn._btn_wrap").css('display','block');
        
        $("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > div.wrap_btn._modify_btn_wrap").css('display','none');
    })

//    $("#delimsg").focus(function(){
//        $("#order_ct > fieldset > div > div.dely_prod > div > div > label").hide();
//    })
//
//    $("#delimsg").blur(function(){
//        $("#order_ct > fieldset > div > div.dely_prod > div > div > label").show();
//    })

    $("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > div.wrap_btn._modify_btn_wrap > button.btn_submit._address_edit_confirm, #order_ct > fieldset > div > div > div.addr_select > div > div.fld_write > div.wrap_btn > input.u_btn.btn_submit._address_edit_confirm").click(function(){
    	var deliEditName = $('input[name=deli_edit_name]').val();
    	var deliEditPostalCode = $('input[name=deli_edit_postalcode]').val();
    	var deliEditAddress = $('input[name=deli_edit_address]').val();
    	var deliEditCity = $('input[name=deli_edit_city]').val();
    	var deliEditRegion = $('input[name=deli_edit_region]').val();
    	var deliEditCountry = $('input[name=deli_edit_country]').val();
    	var deliEditPhone = $('input[name=deli_edit_phone]').val();
    	var deliEditFax = $('input[name=deli_edit_fax]').val();
    	
    	$("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > span.u_chkbx_no.type3 > label > em").html(deliEditName);
    	$("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > span.info_addr > span:nth-child(3)").html(deliEditPostalCode);
    	$("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > span.info_addr > span:nth-child(4)").html(deliEditAddress);
    	$("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > span.info_addr > span:nth-child(5)").html(deliEditCity);
    	$("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > span.info_addr > span:nth-child(6)").html(deliEditRegion);
    	$("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > span.info_addr > span:nth-child(7)").html(deliEditCountry);
    	$("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > span.info_tel > span:nth-child(2)").html(deliEditPhone);
    	$("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > span.info_tel > span:nth-child(5)").html(deliEditFax);
    	
    	$("#order_ct > fieldset > div > div > div.addr_select > div > div.fld_write").css('display','none');
    	
    	$("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > div.wrap_btn._btn_wrap").css('display','block');
        
        $("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > div.wrap_btn._modify_btn_wrap").css('display','none');
    })
    
    
    
    
    $("#_buy").click(function(){
    	
        if(!($("#order_agree").is(":checked"))){
        	alert('상품 가격,할인,배송 정보에 동의해주세요.');
        	return false;
        }
    	    	
    	var params = "customerID="+$("#hidden_cusID").val()+
    				"&shipAddress="+$("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > span.info_addr > span:nth-child(4)").text()+
    				"&shipCity="+$("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > span.info_addr > span:nth-child(5)").text()+
    				"&shipRegion="+$("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > span.info_addr > span:nth-child(6)").text()+
    				"&shipCountry="+$("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > span.info_addr > span:nth-child(7)").text()+
    				"&shipPostalCode="+$("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > span.info_addr > span:nth-child(3)").text();
    	
    	
    	var params2 = "customerID="+$("#hidden_cusID").val()+
    	"&contactName="+$("#order_ct > fieldset > div > div.dely_info.visible_addr_mark > div.addr_select > div > div.item_addr.selected > span.u_chkbx_no.type3 > label > em").text()+
    	"&companyName="+$("#hidden_companyName").val()+
    	"&contactTitle="+$("#hidden_contactTitle").val()+
		"&address="+$("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > span.info_addr > span:nth-child(4)").text()+
		"&city="+$("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > span.info_addr > span:nth-child(5)").text()+
		"&region="+$("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > span.info_addr > span:nth-child(6)").text()+
		"&country="+$("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > span.info_addr > span:nth-child(7)").text()+
		"&postalCode="+$("#order_ct > fieldset > div > div > div.addr_select > div > div.item_addr.selected > span.info_addr > span:nth-child(3)").text()+
    	"&phone="+$("#order_ct > fieldset > div > div.dely_info.visible_addr_mark > div.addr_select > div > div.item_addr.selected > span.info_tel > span:nth-child(2)").text()+
    	"&fax="+$("#order_ct > fieldset > div > div.dely_info.visible_addr_mark > div.addr_select > div > div.item_addr.selected > span.info_tel > span:nth-child(5)").text();
    	    	
  
    	if($("#basic_addr_chk").is(":checked")){
        	$.ajax({
    		
    			type:"get",
    			url:"../myPage/personalInfoUpdate.io",
    			data:params2
    		})
    		
    	}

    	
    	location.href="../myPage/ordersInsert.io?"+params;
    	
//    	$.ajax({
//    		
//			type:"get",
//			url:"/NW0712/myPage/ordersComplete.io",
//			data:param3
//		})
		
		

    })
    

    
});