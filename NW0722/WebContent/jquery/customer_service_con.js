
// 자주하는 질문 top10 열고 닫기
$(function(){
  $(".tit_cont").click(
		  
    function(){
    	if($(this).parent("a").next(".cont_faq").css("display")=="none") {
            $(this).parent("a").next(".cont_faq").css('display','block');
          
     }else{
       $(this).parent("a").next(".cont_faq").css('display','none');
    }
    }
  )
})



//자주하는 질문 내용 열고 닫기
$(function(){
$(".tit_cont2").click(
 function(){
   if($(this).parent("a").next(".cont_faq").css("display")=="none") {
        $(this).parent("a").next(".cont_faq").css('display','block');
      
 }else{
   $(this).parent("a").next(".cont_faq").css('display','none');
 }
 }
)
})





