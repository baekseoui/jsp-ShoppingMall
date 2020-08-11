
// 상품선택시 브라우져 닫기
$(function(){
    $("._selected_order").click(
        function closePage(){
        	opener.document.getElementsByClassName("select_orderItem").select_g.value= document.getElementsByClassName("link_cont").select_g.text;
            window.close();
        }
    )
})




// 상품선택창 select
var order_list=document.getElementsByClassName("_order_list_content");
var claim_list=document.getElementsByClassName("_claim_list_content");
var search_cart=document.getElementsByClassName("_cart_list_content order_prod");



$(function(){
    
    $("#search_order").click(
        function(){
    
            var _search_order_select=document.getElementById("search_order");
            var _search_claim_select=document.getElementById("search_claim");
            var _search_cart_select=document.getElementById("search_cart");
           

            if(!_search_order_select.classList.contains("on")){
                _search_order_select.className='_search_order_selecton on';
                _search_claim_select.className="_search_claim_select";
                _search_cart_select.className="_search_cart_select";
              
            
            order_list[0].style.display="block";
            claim_list[0].style.display="none"; 
            search_cart[0].style.display="none"; 
           
            }
        }
    )
})

$(function(){
   
    $("#search_claim").click(
        function(){
            var _search_order_select=document.getElementById("search_order");
            var _search_claim_select=document.getElementById("search_claim");
            var _search_cart_select=document.getElementById("search_cart");
          

            if(!_search_claim_select.classList.contains("on")){
                _search_order_select.className='_search_order_selecton';
                _search_claim_select.className="_search_claim_select on";
                _search_cart_select.className="_search_cart_select";
               
            
            order_list[0].style.display="none";
            claim_list[0].style.display="block"; 
            search_cart[0].style.display="none"; 
           
            }
        }
    )
})
$(function(){
      
    $("#search_cart").click(
        function(){
            var _search_order_select=document.getElementById("search_order");
            var _search_claim_select=document.getElementById("search_claim");
            var _search_cart_select=document.getElementById("search_cart");
           

            if(!_search_cart_select.classList.contains("on")){
                _search_order_select.className='_search_order_selecton';
                _search_claim_select.className="_search_claim_select";
                _search_cart_select.className="_search_cart_select on";
               
            
            order_list[0].style.display="none";
            claim_list[0].style.display="none"; 
            search_cart[0].style.display="block"; 
           
            }
        }
    )
})
$(function(){

    $("#search_zzim").click(
        function(){
            var _search_order_select=document.getElementById("search_order");
            var _search_claim_select=document.getElementById("search_claim");
            var _search_cart_select=document.getElementById("search_cart");
           

            if(!_search_zzim_select.classList.contains("on")){
                _search_order_select.className='_search_order_selecton';
                _search_claim_select.className="_search_claim_select";
             
                
            
            order_list[0].style.display="none";
            claim_list[0].style.display="none"; 
            search_cart[0].style.display="none"; 
           
            }
        }
    )
})