<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="/WEB-INF/views/A0.Common/commonHead.jsp" %>
    <title>레슨코리아 LESSON KOREA | 선택! 세상을 만드는 힘!</title>
    <link rel="stylesheet" href="/css/A3.Purchase/purchase.css">
</head>
<body>
<div class="main_container" style="background: #FFFFFF">
    <%@include file="/WEB-INF/views/A0.Common/nav.jsp" %>

    <div class="container py-5">

        <h2>주문/결제</h2>
        <div class="order-history">
            <div class="d-flex w-100 justify-content-between mb-5" style="gap:100px">
                <p style="max-width: 280px; width: 100%; font-size: 16px">주문상품</p>
                <p style="max-width: 750px; width: 100%; font-size: 16px">강의내용</p>
            </div>
            <hr>
            <div style="" class="text">
                <div id="lesson-poster" class="d-block">
                </div>
                <div class="d-flex flex-row justify-content-between" style="width: 63%; min-height: 170px;
    flex-wrap: wrap;">
                    <div class="d-flex flex-column justify-content-evenly">
                        <h3 id="title">장인의 베이킹 즐거움: 맛과 예술의 만남</h3>
                        <p class="description">우리 함께 따라해요 - 초보자를 위한 달콤한 베이킹 입문</p>

                    </div>
                    <div class="d-flex flex-column justify-content-evenly">
                        <p id="quantity-field" class="quantity-field">개</p>
                        <p id="total-price" style="font-weight: 700;">39,900 원</p>
                    </div>
                </div>
            </div>
        </div>


        <form id="payment-form" class="payment-method">
            <div class="container">
                <h5>결제수단</h5>

                <div class="form-check">
                    <input class="form-check-input" type="radio" name="paymentMethod" id="paymentMethod1" value="무통장">
                    <label for="paymentMethod1">무통장 입금</label>
                </div>
                <hr>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="paymentMethod" id="paymentMethod2" value="계좌이체">
                    <label for="paymentMethod2">실시간 계좌이체</label>
                </div>
                <hr>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="paymentMethod" id="paymentMethod3" value="일반">
                    <label for="paymentMethod3">일반 결제</label>
                </div>

                <div class="d-flex flex-row" style="align-items: center; margin-left: 17px;">
                    <div class="form-check" style=" margin-right: 38px">
                        <input class="form-check-input" type="radio" name="normalPayType" id="creditCard" value="신용카드"
                        >
                        <label for="creditCard">신용 카드</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="normalPayType" id="telPay" value="휴대폰"
                        >
                        <label for="telPay">휴대폰</label>
                    </div>
                </div>


                <div class="d-flex flex-row" style="align-items: center; flex-wrap: wrap;">
                    <label class="col-sm-2 col-form-label">카드구분</label>
                    <div class="d-flex flex-row" style="width: 300px">
                        <div class="form-check" style="margin-right: 32px;">
                            <input class="form-check-input" type="radio" name="cardType" id="personalCard" value="개인">
                            <label for="personalCard">개인카드</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="cardType" id="companyCard" value="법인">
                            <label for="companyCard">법인카드</label>
                        </div>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="bank-name" class="col-sm-2 col-form-label">카드 선택</label>
                    <select id="bank-name" name="bank-name" style="width: 202px">
                        <option value="" disabled selected>선택해주세요.</option>
                        <option value="국민">국민</option>
                        <option value="비씨">비씨</option>
                        <option value="신한">신한</option>
                    </select>
                </div>
                <div class="form-group row">
                    <label for="payment-period" class="col-sm-2 col-form-label">할부기간</label>
                    <select id="payment-period" name="payment-period" style="width: 202px">
                        <option value="일시불">일시불</option>
                        <option value="3개월">3개월</option>
                        <option value="4개월">4개월</option>
                    </select>
                </div>
            </div>

        </form>
        <div class="d-flex justify-content-center"
             style="background: #FBFBFB; border-radius: 10px; border: 1px solid #DEE2E6; border-top: none; border-top-left-radius: 0; border-top-right-radius: 0; margin-bottom: 210px">
            <button type="button" class="btn btn-primary" onclick="purchaseTicketRequest('${user_pk}')">레슨 시작하기</button>
        </div>
    </div>


    <%@include file="/WEB-INF/views/A0.Common/footer.jsp" %>
</div>

<%@include file="/WEB-INF/views/A0.Common/navMobile.jsp" %>
<%@include file="/WEB-INF/views/A0.Common/commonJs.jsp" %>
<script src="/js/A2.Menu/legalConsult/legalConsult.js"></script>
</body>
</html>