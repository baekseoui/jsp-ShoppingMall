$(function() {
	var ttp =$("#sum").attr("value");
	var ttp1=ttp;
	$("input:checkbox[name^='cartId_']").prop('checked', true);
	var id=0; 
	var inputNum=0;
	$("input[name^='text_']").change(function(){
		var $i=$(this).parents('td');
		id=$i.find("input[name^='id_']").val();
		inputNum=parseInt($i.find("input[name^='text_']").val());
    	if (inputNum <= 0) {inputNum = 1;}
    	location.href="cartUpdate.po?cartId="+id+"&quantity="+inputNum;
	});
	$(".btn_increase").click(function( ) {
		var $i=$(this).parents('td');
		id=$i.find("input[name^='id_']").val();
		inputNum=parseInt($i.find("input[name^='text_']").val());
		inputNum -= 1;
		if (inputNum <= 0) {inputNum = 1;}
		location.href="cartUpdate.po?cartId="+id+"&quantity="+inputNum;
	});
	$(".btn_decrease").click(function( ) {
		var $i=$(this).parents('td');
		id=$i.find("input[name^='id_']").val();
		inputNum=parseInt($i.find("input[name^='text_']").val());
		inputNum += 1;
		location.href="cartUpdate.po?cartId="+id+"&quantity="+inputNum;
	});
	
	$("input:checkbox[name^='cartId_']").on('click', function() { 
		if ($(this).prop('checked') ) { 
			var $i=$(this).parents('td');
			var pdTotal=parseFloat($i.find("input[id^='hid_num']").val());
			ttp1+=pdTotal;
			
			$("#ppp").text(ttp1.toFixed(2));
		} else { 
			var $i=$(this).parents('td');
			var pdTotal=parseFloat($i.find("input[id^='hid_num']").val());
			ttp1-=pdTotal;
			
			$("#ppp").text(ttp1.toFixed(2));
		} 
	});
});