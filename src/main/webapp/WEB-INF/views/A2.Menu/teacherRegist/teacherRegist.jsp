<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="/WEB-INF/views/A0.Common/commonHead.jsp" %>
    <title>레슨코리아 LESSON KOREA | 선택! 세상을 만드는 힘!</title>

</head>
<link rel="stylesheet" href="/css/A2.Menu.teacherRegist/teacherRegist.css">
<body>

<div class="main_container" style="background: #FFFFFF">
    <%@include file="/WEB-INF/views/A0.Common/nav.jsp" %>
    <div class="container py-5">

        <form id="sign-up-form" style="display: flex; flex-direction: column;">

            <input type="text" id="user-pk" name="USER_ID" hidden value="${user_pk}">
            <div class="d-flex gap-5">
                <div class="w-100">
                    <h1>쌤 프로필 등록</h1>
                    <img src="/images/teacher-regist.png" style="width: 100%">
                </div>

                <div class="w-100 form">
                    <label for="user-name">이름</label>
                    <input type="text" id="user-name" name="USER_NAME" placeholder="이름을 입력해 주세요." value="${user_name}">


                    <label for="user-about-me">자기소개</label>
                    <textarea style="flex-grow: 1;" id="user-about-me" name="USER_ABOUT_ME" placeholder="소개글을 작성해주세요."
                              maxlength="10000" rows="5"></textarea>


                    <label for="user-email">이메일</label>
                    <input type="text" id="user-email" name="USER_EMAIL" placeholder="이메일을 입력해 주세요." value="${email}">

                    <label for="user-specialized-field">전문 분야</label>
                    <input type="text" id="user-specialized-field" name="USER_SPECIALIZED_FIELD"
                           placeholder="전문 분야를 입력해 주세요.">

                    <label for="user-education">학력/전공</label>
                    <input type="text" id="user-education" name="USER_EDUCATION" placeholder="학력/전공을 입력해 주세요.">

                    <label for="user-tel">휴대폰 번호</label>
                    <input type="text" id="user-tel" name="USER_TEL" placeholder="휴대폰 번호를 입력해 주세요." value="${tel}">

                    <label for="user-teaching-method">수업 형식</label>
                    <input type="text" id="user-teaching-method" name="USER_CLASS" placeholder="">

                    <label for="user-salary">수업 비용 (VAT 포함)</label>
                    <input type="text" id="user-salary" name="USER_CLASS" placeholder="수업 비용을 입력해 주세요.">

                    <label for="user-class-info">수업관련정보 첨부</label>
                    <input type="text" id="user-class-info" name="USER_CLASS" placeholder="수업관랸정보를 첨부해 주세요.">

                    <input type="button" value="등록하기" class="save_btn" onclick="saveTeacher()">

                </div>
            </div>


        </form>

    </div>

    <%@include file="/WEB-INF/views/A0.Common/footer.jsp" %>
</div>
<%@include file="/WEB-INF/views/A0.Common/navMobile.jsp" %>
<%@include file="/WEB-INF/views/A0.Common/commonJs.jsp" %>
<script src="/js/A2.Menu/teacher/teacherRegist.js"></script>
</body>
</html>
