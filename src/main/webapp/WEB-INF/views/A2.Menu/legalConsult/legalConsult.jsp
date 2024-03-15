<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="/WEB-INF/views/A0.Common/commonHead.jsp" %>
    <title>레슨코리아 LESSON KOREA | 선택! 세상을 만드는 힘!</title>
</head>
<link rel="stylesheet" href="/css/A2.Menu/legalConsult/legalConsult.css">
<body>
<div class="main_container" style="background: #FFFFFF">
    <%@include file="/WEB-INF/views/A0.Common/nav.jsp" %>

    <div class="d-flex justify-content-center align-items-center page-banner legal-board-bg">
        <h1>법률 상담 게시판</h1>
    </div>

    <div class="container d-flex flex-column justify-content-center py-5" style="min-height: 430px">

        <div class="search-area d-flex mb-4">
            <input id="articleSearch" type="text" placeholder="검색어를 입력해 주세요">
            <button type="button" onclick="getArticleCount($('#articleSearch').val())">검색</button>
            <button style="margin-left: auto" onClick="location.href='/legalConsultWrite'">글쓰기</button>
        </div>

        <div class="table-wrapper">
            <table id="board-table" class="table">
                <thead>
                <tr>
                    <th>번호</th>
                    <th class="title">제목</th>
                    <th>글쓴이</th>
                    <th class="mobile-hide">조회</th>
                    <th class="mobile-hide">날짜</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>

        <div class="d-flex justify-content-center">
            <ul class="d-flex w-100 justify-content-center board-pagination">
            </ul>
        </div>
    </div>

    <%@include file="/WEB-INF/views/A0.Common/footer.jsp" %>
</div>

<%@include file="/WEB-INF/views/A0.Common/navMobile.jsp" %>
<%@include file="/WEB-INF/views/A0.Common/commonJs.jsp" %>
<script src="/js/A2.Menu/legalConsult/legalConsult.js"></script>
<script>
    $(document).ready(function() {
        getArticleCount($('#articleSearch').val());
    });
</script>
</body>
</html>
