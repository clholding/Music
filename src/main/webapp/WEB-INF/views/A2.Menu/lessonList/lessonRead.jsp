<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="/WEB-INF/views/A0.Common/commonHead.jsp" %>
    <title>레슨코리아 LESSON KOREA | 선택! 세상을 만드는 힘!</title>
    <link rel="stylesheet" href="/css/A2.Menu.lesson/lessonRead.css">
</head>
<body>
<div class="main_container" style="background: #FFFFFF">
    <%@include file="/WEB-INF/views/A0.Common/nav.jsp" %>

    <div class="container py-5">
        <video width="100%" autoplay loop controls>
            <source src="/images/baking-video.mp4" type="video/mp4">
        </video>

        <div class="lesson-content">
            <div class="d-flex gap-1">
                <p class="lesson">베이킹</p>
                <span>|</span>
                <p class="lecturer">이미주</p>
            </div>
            <div class="d-flex justify-content-between flex-row title">
                <div>
                    <h3>
                        장인의 베이킹 즐거움: 맛과 예술의 만남
                    </h3>
                    <p class="description">우리 함께 따라해요 - 초보자를 위한 달콤한 베이킹 입문</p>
                    <p class="rating">
                        <span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가
                    </p>
                </div>
                <a class="buy-lesson-btn" href="/lessonPurchase" onclick="onClick()">
                    <p>바로 시작하기</p>
                    <img src="/images/icon_button_next.svg" alt="">
                </a>
            </div>




        <hr>

        <p class="lesson-text-info">
            달콤한 베이킹?, "한 번 시도해본 사람은 있어도 단 한 번만 시도한 사람은 없다." <br><br>

            안녕하세요, 베이킹 마스터 80만 팔로워를 가진 요리 유튜버 이미주입니다.<br><br>

            오랜 기간 동안 변함없는 맛과 향을 즐기며 2023년 최신 베이킹 레시피를 여러분께 소개합니다.<br><br><br><br>


            🍰 오늘도 다양한 맛의 베이킹에 도전하고 싶으신가요?<br><br>
            🍰 어떤 맛을 만들어볼까 설레이시나요?<br><br>
            🍰 입 안 가득 퍼지는 디저트의 향기, 그리고 그 맛을 느껴보세요!<br><br><br><br>


            저 이미주가 여러분께 베이킹의 기술과 아트를 함께 나누어드릴게요.<br><br>

            베이킹의 세계로 여러분을 초대합니다 - 함께 달콤한 시간을 만들어봐요!
        </p>
    </div>
    </div>




<%@include file="/WEB-INF/views/A0.Common/footer.jsp" %>
</div>


<%@include file="/WEB-INF/views/A0.Common/navMobile.jsp" %>
<%@include file="/WEB-INF/views/A0.Common/commonJs.jsp" %>
<script src="/js/A2.Menu/legalConsult/legalConsult.js"></script>
</body>
</html>