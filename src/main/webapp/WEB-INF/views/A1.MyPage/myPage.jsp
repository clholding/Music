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

    <div class="d-flex align-items-start">

        <%@include file="/WEB-INF/views/A0.Common/sidebarMenu.jsp" %>

        <div class="container d-flex flex-column justify-content-start py-5" style="min-height: 430px; margin-top: 60px; height: calc(100vh - 60px)">

            <div class="search-area d-flex mb-4">
                <input id="marchSearch" type="text" placeholder="검색어를 입력해 주세요" style="border-radius: 0" onkeydown="onEnter(event)">
                <button type="button" onclick="getMatchCount($('#marchSearch').val())">검색</button>
            </div>

            <div class="table-wrapper h-100">
                <table id="board-table" class="table">
                    <thead>
                    <tr>
                        <th style="width: 100px">번호</th>
                        <th>선생님</th>
                        <th>사용자</th>
                        <th class="mobile-hide">사용자 이메일</th>
                        <th class="mobile-hide">사용자 전화번호</th>
                        <th class="mobile-hide">날짜</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>

            <div class="d-flex justify-content-center">
                <ul class="d-flex w-100 justify-content-center board-pagination match-pagination">
                </ul>
            </div>

            <%@include file="/WEB-INF/views/A0.Common/footer.jsp" %>
        </div>
    </div>
</div>

<%@include file="/WEB-INF/views/A0.Common/navMobile.jsp" %>
<%@include file="/WEB-INF/views/A0.Common/commonJs.jsp" %>
<script src="/js/A1.MyPage/myPage.js"></script>
<script src="/js/A0.common/sidebarMenu.js"></script>
<script>
    function onEnter(e) {
        if (e.key === "Enter") {
            getMatchCount($('#marchSearch').val());
        }
    }
</script>
</body>
</html>