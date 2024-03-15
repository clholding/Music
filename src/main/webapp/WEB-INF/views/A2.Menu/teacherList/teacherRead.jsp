<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="/WEB-INF/views/A0.Common/commonHead.jsp" %>
    <title>레슨코리아 LESSON KOREA | 선택! 세상을 만드는 힘!</title>
</head>
<link rel="stylesheet" href="/css/A2.Menu.teacherList/teacherRead.css">
<body>
<div class="main_container" style="background: #FFFFFF">
    <%@include file="/WEB-INF/views/A0.Common/nav.jsp" %>
    <div class="d-flex justify-content-center align-items-center page-banner legal-board-bg"></div>

    <div class="container d-flex flex-column justify-content-center py-5" style="min-height: 430px">
        <div id="reg-date" class="details">등록일 2023.05.27 11:55</div>
        <hr class="divider">
        <div class="px-5">
            <h3 id="teacher-name">쌤 이름</h3>
            <p id="teacher-id">쌤 아이디</p>
        </div>
        <hr class="divider">
        <div class="d-flex gap-4 px-5 teacher-post">
            <div id="profile-img" style="background: #6E6A6B;"> </div>
            <div class="d-flex flex-column justify-content-between post-text">
                <p id="teacher-intro">쌤 자기소개</p>
                <security:authorize access="isAuthenticated()">
                <c:if test="${member_code == 'IND001'}">
                    <button id="match-btn" type="button" onclick="matchTeacherRequest('${user_pk}')">매칭 요청</button>
                </c:if>
                </security:authorize>
            </div>
        </div>
        <hr class="solid">

        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item teacher-tab" role="presentation">
                <button class="nav-link active" id="portfolio-tab" data-bs-toggle="tab" data-bs-target="#portfolio" type="button" role="tab" aria-controls="portfolio" aria-selected="true">포트폴리오</button>
            </li>
            <li class="nav-item teacher-tab" role="presentation">
                <button class="nav-link" id="service-tab" data-bs-toggle="tab" data-bs-target="#service" type="button" role="tab" aria-controls="service" aria-selected="false">서비스 설명</button>
            </li>
            <li class="nav-item teacher-tab" role="presentation">
                <button class="nav-link" id="pricing-tab" data-bs-toggle="tab" data-bs-target="#pricing" type="button" role="tab" aria-controls="pricing" aria-selected="false">가격 정보</button>
            </li>
        </ul>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active p-4" id="portfolio" role="tabpanel" aria-labelledby="portfolio-tab">Portfolio</div>
            <div class="tab-pane fade p-4" id="service" role="tabpanel" aria-labelledby="profile-tab">Service description</div>
            <div class="tab-pane fade p-4" id="pricing" role="tabpanel" aria-labelledby="pricing-tab">Pricing</div>
        </div>


    </div>

</div>

<%@include file="/WEB-INF/views/A0.Common/footer.jsp" %>

<%@include file="/WEB-INF/views/A0.Common/navMobile.jsp" %>
<%@include file="/WEB-INF/views/A0.Common/commonJs.jsp" %>
<script src="/js/A2.Menu/teacher/teacherRead.js"></script>
<script>
    $(document).ready(function() {
        getTeacherInfo(teacher_pk, '${user_pk}');
    })
</script>
</body>
</html>
