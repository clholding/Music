<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="/WEB-INF/views/A0.Common/commonHead.jsp" %>
    <title>레슨코리아 LESSON KOREA | 선택! 세상을 만드는 힘!</title>
</head>
<body>
<div class="main_container" style="background: #FFFFFF">
    <%@include file="/WEB-INF/views/A0.Common/nav.jsp" %>

    <div class="d-flex flex-column justify-content-center align-items-center p-3 page-banner teacher-list-bg">
        <h1>레슨쌤 목록</h1>
        <p class="text-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
        <p class="text-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
    </div>

    <div class="container py-5">
        <article class="w-100 px-5 px-xl-1" style="margin-bottom: 90px">
            <h2>인기쌤 TOP</h2>
            <p class="my-3 fs-5" style="color: #888">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>

            <div id="teachers" class="d-flex flex-wrap w-100 gap-4 my-4">
            </div>
        </article>
    <%@include file="/WEB-INF/views/A0.Common/footer.jsp" %>
</div>

<%@include file="/WEB-INF/views/A0.Common/navMobile.jsp" %>
<%@include file="/WEB-INF/views/A0.Common/commonJs.jsp" %>
<script src="/js/A2.Menu/teacher/teacherList.js"></script>
</body>
</html>