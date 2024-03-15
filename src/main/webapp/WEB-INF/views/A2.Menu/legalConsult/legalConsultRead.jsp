<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="/WEB-INF/views/A0.Common/commonHead.jsp" %>
    <title>레슨코리아 LESSON KOREA | 선택! 세상을 만드는 힘!</title>
</head>
<link rel="stylesheet" href="/css/A2.Menu/legalConsult/legalConsultRead.css">
<body>
    <div class="main_container" style="background: #FFFFFF">
    <%@include file="/WEB-INF/views/A0.Common/nav.jsp" %>
        <div class="d-flex justify-content-center align-items-center page-banner legal-board-bg">
            <h1>법률 상담 읽기</h1>
        </div>

        <div class="container d-flex flex-column justify-content-center py-5" style="min-height: 430px">
            <div class="details">
                <pre>등록일 </pre><p id="article-reg-dt"></p>
                <pre> | 조회수 </pre><p id="article-views"></p>
            </div>
            <hr class="divider">
                <div>
                    <h3 class="post-title" id="article-title"></h3>
                    <p class="user-detail" id="article-reg-user"></p>
                </div>
            <hr class="solid">
                <div>
                   <p class="post-text" id="article-content"></p>
                </div>
            <hr class="divider">
                <div class="d-flex justify-content-end gap-2">
                    <button class="btn-cancel" style="width: 100px; height: 40px" onclick="location.href=`/legalConsultEdit`+location.search">수정</button>
                    <button class="btn-submit" style="width: 100px; height: 40px" onclick="deleteArticle()">삭제</button>
                    <button class="btn-submit" style="width: 100px; height: 40px" onclick="location.href='/legalConsult'">목록</button>
                </div>
            </div>

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
            getArticleToRead(id)
        })
    </script>
</body>
</html>
