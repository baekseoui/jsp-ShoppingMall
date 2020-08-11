//휴대폰 알림 
var count =0;
$(document).ready(function(){
  $(".btn_s").click(function(){
    if(count%2==0) {
    $(".btn_s").animate({left: '0px'});
    count++;
    var lis=document.getElementsByClassName("item_inquiry_item_phone");
    var lc=$(".btn_alarm_on");
    lc.css("background-color","white");
    lis[0].style.display='none';
    }else {
      $(".btn_s").animate({left: '17px'})
      count++;
      var lis=document.getElementsByClassName("item_inquiry_item_phone");
      lis[0].style.display='block';
      var lc=$(".btn_alarm_on");
      lc.css("background-color","#8de1ff");
    }
  });
});

//상품선택시 새로운 창 나오게할거
$(document).ready(function(){
	$(".u_btn_btn_search").click(function(){
		// window.name = "부모창 이름"; 
        window.name = "parentForm";
        // window.open("open할 window", "자식창 이름", "팝업창 옵션");
        openWin = window.open("select_goods.so",
                "childForm", "width=800, height=800, left=100, top=50");  
	})
})



// 문의 취소 누를시 실행될 펑션
$(document).ready(function(){
	$(".u_btn_btn_cancle").click(function(){
		if(confirm("취소 하시겠습니까?")==true){
			document.myqna.reset();
		}else{
			return;
		}
	})
})



















