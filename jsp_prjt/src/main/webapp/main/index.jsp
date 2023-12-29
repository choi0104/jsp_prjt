<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1,user-scalable=no">
    <title>개인프로젝트 샘플-메인-반응형웹 적용</title>
    <link rel="stylesheet" href="../resources/css/index.css">
</head>
<body>
    <div id="wrap">
        
        <%@ include file="../common/header.jsp" %>
            
        <section id="container-content">
            <h1>내용 영역</h1>
            <section id="main-image">
                <h1>메인 이미지</h1>
                <h1>검색창</h1>
                <div id="search-caption">알뜰한 여행의 정석</div>
                <div id="image-menu">
                    <span><a href="#"><img src="../resources/css/img/image-menu01.png" alt="모든 숙소">모든 숙소</a></span>
                    <span><a href="#"><img src="../resources/css/img/image-menu02.png" alt="프라이빗 임대 숙소">프라이빗 임대 숙소</a></span>
                    <span><a href="#"><img src="../resources/css/img/image-menu03.png" alt="항공+숙소">항공+숙소</a></span>
                    <span><a href="#"><img src="../resources/css/img/image-menu04.png" alt="항공">항공</a></span>
                    <span><a href="#"><img src="../resources/css/img/image-menu05.png" alt="즐길거리">즐길거리</a></span>
                    <span><a href="#"><img src="../resources/css/img/image-menu06.png" alt="공항 이동 교통편 서비스">공항 이동 교통편 서비스</a></span>
                </div>
               
                <form action="" id="search-form">
                    <div id="lodging">
                        <input type="button" value="1박 숙박">
                        <input type="button" value="대실 숙박">
                    </div>
                    <input type="text" name="destination" id="destination" placeholder="어디로 떠나시나요?">
                    <div id="date-men">
                        <input type="date" name="checkin_date" id="checkin-date">
                        <input type="date" name="checkout_date" id="checkout-date">
                        <select name="number_men" id="number-men">
                            <option value="A1">성인1명</option>
                            <option value="R1">객실</option>
                            <option value="A1">성인</option>
                            <option value="C0">아동</option>
                        </select>
                    </div>
                    <div id="other-menu">
                        <span id="big-sale">큰 할인!</span>
                        <span id="reserve-oneway">+항공편도 예약하기</span>
                    </div>
                </form>
    
                <div id="search-btn"><span>검색하기</span></div>
            </section>
            <div id="wrap-accommo-promo">
                <section id="accommodation-content">
                    <div id="popular-title">인기숙소</div>
                    <section id="populars">
                        <h1>인기숙소</h1>
                        <div id="popular01"></div>
                        <div id="popular02"></div>
                        <div id="popular03"></div>
                    </section>
                    <div id="review-title">전 세계 여행객의 생생 이용후기</div>
                    <section id="reviews">
                        <h1>생생 이용후기</h1>
                        <div id="review01"></div>
                        <div id="review02"></div>
                        <div id="review03"></div>
                    </section>
                </section>
                <section id="promotion-content">
                    <div id="promo01-title">숙소 프로모션</div>
                    <section id="promotion-accommodation">
                        <h1>숙소 프로모션</h1>
                        <div id="promo-accommo01"></div>
                        <div id="promo-accommo02"></div>
                    </section>
                    <div id="promo02-title">항공권 즐길거리 프로모션</div>
                    <section id="promotion-air-joy">
                        <h1>항공권 즐길거리 프로모션</h1>
                        <div id="promo-air-joy01"></div>
                        <div id="promo-air-joy02"></div>
                    </section>
                </section>
            </div>
        </section>

        <%@ include file="../common/footer.jsp" %>

    </div>
    
</body>
</html>