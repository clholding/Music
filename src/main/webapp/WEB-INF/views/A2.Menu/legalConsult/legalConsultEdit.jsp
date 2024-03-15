<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="/WEB-INF/views/A0.Common/commonHead.jsp" %>
    <title>레슨코리아 LESSON KOREA | 선택! 세상을 만드는 힘!</title>
</head>
<link rel="stylesheet" href="/css/A2.Menu/legalConsult/legalConsultEdit.css">
<body>
    <div class="main_container" style="background: #FFFFFF">
        <%@include file="/WEB-INF/views/A0.Common/nav.jsp" %>

        <div class="d-flex justify-content-center align-items-center page-banner legal-board-bg">
            <h1>법률 상담 게시판</h1>
        </div>

        <div class="container d-flex flex-column justify-content-center py-5" style="min-height: 430px">
        <div class="container py-5" style="font-size: 18px">
            <div>
                <label for="article-title">제목</label>
                <input type="text" id="article-title" name="article-title" placeholder="제목을 재입력해 주세요" maxlength="255">
            </div>
            <div>
                <label for="article-content">문의 내용</label>
                <textarea id="article-content" name="article-content" placeholder="문의 내용을 수정해 주세요" maxlength="1000" rows="20" style="width: 100%"></textarea>
            </div>
            <div class="d-flex justify-content-end gap-2 py-3 mt-2">
                <button class="btn-cancel" style="width: 100px; height: 40px" onclick="location.href='/legalConsult'">취소</button>
                <button class="btn-submit" style="width: 100px; height: 40px" onclick="updateArticle()">수정</button>
            </div>
        </div>


        </div>

        <%@include file="/WEB-INF/views/A0.Common/footer.jsp" %>
    </div>

    <%@include file="/WEB-INF/views/A0.Common/navMobile.jsp" %>
    <%@include file="/WEB-INF/views/A0.Common/commonJs.jsp" %>
    <script src="/js/A2.Menu/legalConsult/legalConsult.js"></script>
    <script>
        const params = new URLSearchParams(location.search);
        const id = params.get('id');
        $(document).ready(function() {
            getArticleToEdit(id)
        })
    </script>
</body>
</html>
