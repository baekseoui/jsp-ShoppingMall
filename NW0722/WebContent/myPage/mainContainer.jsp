<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="container">
            <div id="aside">
                <h2 class="tit_cs">
                    <a href="index.jsp">MY PAGE</a>
                </h2>
                <div class="cs_snb">
                    <ul class="list_snb">
                        <li>
                            <strong class="tit_sub">나의 쇼핑정보</strong>
                            <ul class="list_snb_sub">
                                <li>
                                    <a href="index6.jsp" class="link_snb_sub" spcid="MYCJ____left__orderlist__">주문배송 조회</a>
                                </li>
                                <li>
                                    <a href="indexBd.jsp" class="link_snb_sub" spcid="MYCJ____left__returnlist__">취소/교환/반품 내역</a>
                                </li>
                                <li>
                                    <a href="#" class="link_snb_sub">상품 리뷰</a>
                                </li>
                                <li>
                                    <a href="#" class="link_snb_sub" spcid="MYCJ____left__rent__">증빙서류 발급</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <strong class="tit_sub">나의 계정설정</strong>
                            <ul class="list_snb_sub">
                                <li>
                                    <a href="index5.jsp" class="link_snb_sub _btn_modify">회원정보수정</a>
                                </li>
                                <li>
                                    <a href="#" class="link_snb_sub" spcid="MYCJ____left__pinfuse__">회원등급</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <strong class="tit_sub">고객센터</strong>
                            <ul class="list_snb_sub">
                                <li>
                                    <a href="indexqna1by1.jsp" class="link_snb_sub" spcid="MYCJ____left__zzimall__">1:1 문의내역</a>
                                </li>
                                <li>
                                    <a href="indexSearch.jsp" class="link_snb_sub" spcid="MYCJ____left__rwlist__">상품 Q&A 내역</a>
                                </li>
                                <!-- <li>
                                    <a href="#" class="link_snb_sub" spcid="MYCJ____left__tvpush__">공지사항</a>
                                </li> -->
                                <li>
                                    <a href="customer_service.jsp" class="link_snb_sub" spcid="MYCJ____left__foodstp__">FAQ</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            
            <div id="content">
                <div class="myzone_wrap">
                    <div class="myzone_info_area">
            
                        <!-- 마이존 메인 상단 고객정보 영역 -->
                        <div class="_myzoneMainTopContainer">
                            <div class="grade_area family">
                                <div class="rank_area"><span class="rank"></span> 패밀리 </div>
                                <div class="name_area">
                                    <span class="name"> ㅁㅁㅁ </span>님
                                </div>
                                <a href="https://base.cjmall.com/p/myzone/gradeBenefit" class="btn_benefit"
                                    spcid="MYCJ____cust__bfc__">등급혜택 / 예상등급</a>
                            </div>
                        </div>
            
                        <!-- 혜택별 잔액 -->
                        <div class="_myzoneMoneyBalanceContainer">
                            <div class="benefit_area_v2">
                                <ul class="lst_benefit">
                                    <li>
                                        <a href="https://base.cjmall.com/p/myzone/vipDiscountMoneyList"
                                            spcid="MYCJ____cust__vipdc__">
                                            <span class="tit" spcid="MYCJ____cust__vipdc__">VIP 즉시할인</span>
                                            <span class="bx_num" spcid="MYCJ____cust__vipdc__">
                                                <span class="num" spcid="MYCJ____cust__vipdc__">0</span>원
                                            </span>
                                        </a>
                                    </li>
                                    <li class="">
                                        <a href="https://base.cjmall.com/p/myzone/savedMoneyList#1/1"
                                            spcid="MYCJ____cust__mileage__">
                                            <span class="tit" spcid="MYCJ____cust__mileage__">적립금</span>
                                            <span class="bx_num" spcid="MYCJ____cust__mileage__">
                                                <span class="num num" spcid="MYCJ____cust__mileage__">0</span>원
                                            </span>
                                        </a>
                                    </li>
                                    <li class="">
                                        <a href="https://base.cjmall.com/p/myzone/cjonePointList#1/1"
                                            spcid="MYCJ____cust__onepnt__">
                                            <span class="tit" spcid="MYCJ____cust__onepnt__">CJ ONE 포인트</span>
                                            <span class="bx_num" spcid="MYCJ____cust__onepnt__">
                                                <span class="num _cjonePoint" spcid="MYCJ____cust__onepnt__">0</span>P
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://base.cjmall.com/p/myzone/couponList#1" spcid="MYCJ____cust__cpn__">
                                            <span class="tit" spcid="MYCJ____cust__cpn__">쿠폰</span>
                                            <span class="num num" spcid="MYCJ____cust__cpn__">0</span>장
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://base.cjmall.com/p/myzone/depositList#1/1" spcid="MYCJ____cust__deposit__">
                                            <span class="tit" spcid="MYCJ____cust__deposit__">예치금</span>
                                            <span class="num num" spcid="MYCJ____cust__deposit__">0</span>원
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://base.cjmall.com/p/myzone/giftCardList#1/1" spcid="MYCJ____cust__cert__">
                                            <span class="tit" spcid="MYCJ____cust__cert__">CJ 상품권</span>
                                            <span class="num num" spcid="MYCJ____cust__cert__">0</span>원
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
            
                    </div>
            
                    <!-- 주문/배송조회 -->
                    <div class="_myzoneOrderShippingCountContainer">
                        <div class="myzone_order_area">
                            <div class="tit_area">
                                <h3 class="tit">주문/배송조회</h3>
                                <span>(취소/교환/반품 신청)</span>
                            </div>
            
                            <ul class="lst_order">
                                <li class="zero">
                                    <a href="https://base.cjmall.com/p/myzone/orderList?listType=ORDER&amp;orderStatus=ORDER_RECEIPT#1"
                                        spcid="MYCJ____odrh__odrcv__">주문접수<span class="num"
                                            spcid="MYCJ____odrh__odrcv__">0</span></a>
                                </li>
                                <li class="zero">
                                    <a href="https://base.cjmall.com/p/myzone/orderList?listType=ORDER&amp;orderStatus=PAYMENT_COMPLETED#1"
                                        spcid="MYCJ____odrh__ordpay__">결제완료<span class="num"
                                            spcid="MYCJ____odrh__ordpay__">0</span></a>
                                </li>
                                <li class="">
                                    <a href="index2.jsp"
                                        spcid="MYCJ____odrh__odrrd__">상품준비중<span class="num"
                                            spcid="MYCJ____odrh__odrrd__">1</span></a>
                                </li>
                                <li class="zero">
                                    <a href="index3.jsp"
                                        spcid="MYCJ____odrh__odrdiv__">배송중<span class="num"
                                            spcid="MYCJ____odrh__odrdiv__">0</span></a>
                                </li>
                                <li class="zero">
                                    <a href="index4.jsp"
                                        spcid="MYCJ____odrh__odrfins__">배송완료<span class="num"
                                            spcid="MYCJ____odrh__odrfins__">0</span></a>
                                </li>
                            </ul>
            
                            <ul class="lst_order_state lst_order_state_v2 link_snb_sub">
                                <li class="zero">
                                    <a href="https://base.cjmall.com/p/myzone/orderList?listType=CLAIM&amp;orderStatus=CLAIM_ALL#1"
                                        spcid="MYCJ____odrh__cancel__">
                                        <span class="tit" spcid="MYCJ____odrh__cancel__">취소</span>
                                        <span class="num" spcid="MYCJ____odrh__cancel__">0</span>
                                    </a>
                                </li>
                                <li class="zero">
                                    <a href="https://base.cjmall.com/p/myzone/orderList?listType=CLAIM&amp;orderStatus=CLAIM_ALL#1"
                                        spcid="MYCJ____odrh__change__">
                                        <span class="tit" spcid="MYCJ____odrh__change__">교환</span>
                                        <span class="num" spcid="MYCJ____odrh__change__">0</span>
                                    </a>
                                </li>
                                <li class="zero">
                                    <a href="https://base.cjmall.com/p/myzone/orderList?listType=CLAIM&amp;orderStatus=CLAIM_ALL#1"
                                        spcid="MYCJ____odrh__return__">
                                        <span class="tit" spcid="MYCJ____odrh__return__">반품</span>
                                        <span class="num" spcid="MYCJ____odrh__return__">0</span>
                                    </a>
                                </li>
                            </ul>
            
                            <a href="https://base.cjmall.com/p/myzone/orderList?listType=ORDER&amp;orderStatus=ALL#1"
                                class="btn_whole_view" spcid="MYCJ____odrh__ordlist__"><span class="blind"
                                    spcid="MYCJ____odrh__ordlist__">주문/배송 조회</span>전체보기</a>
                        </div>
                    </div>
            
                    <!-- 최근 주문내역 -->
                    <div class="_myzoneRecentOrderDetailsContainer">
                        <div class="lst_order_area">
                            <div class="tit_area">
                                <h3 class="tit">최근 주문내역</h3>
                            </div>
                            <a class="btn_whole_view"
                                href="https://base.cjmall.com/p/myzone/orderList?listType=ORDER&amp;orderStatus=ALL#1"
                                spcid="MYCJ____pcmain__orderlist__"><span class="blind"
                                    spcid="MYCJ____pcmain__orderlist__">최근주문내역</span>전체보기</a>
            
                        </div>
                    </div>
            
                    <!-- 쇼핑찜 영역 -->
                    <div class="_myzoneShoppingZzimListContainer">
                        <div class="myzone_prd_area">
                            <div class="u_lst_wrap">
                                <h3 class="tit">쇼핑찜</h3>
            
            
                                <div class="none_latest_item">
                                    <strong>찜한 상품이 없습니다.</strong>
                                </div>
            
            
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>