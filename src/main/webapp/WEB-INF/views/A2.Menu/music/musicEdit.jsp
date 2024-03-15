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
            <h1>음악 수정</h1>
        </div>

        <div class="container d-flex flex-column justify-content-center py-5" style="min-height: 430px">
        <div class="container py-5" style="font-size: 18px">
            <div>
                <label for="music-title">음악 제목</label>
                <input type="text" id="music-title" name="music-title" placeholder="제목을 입력해 주세요" maxlength="255">
            </div>
            <div>
                <label for="music-name">가수</label>
                <input type="text" id="music-name" name="music-name" placeholder="가수명을 입력해 주세요" maxlength="255">
            </div>
            <div>
	            <label for="music-play">자동재생여부</label><br>
				<select id="music-play" name="music-play" style="width: 128px;">
	                  <option value="">선택</option>
	                  <option value="autoplay">자동재생</option>
	            </select>
            </div>
            <div>
                <label for="music-name">음악파일</label>
                <input type="hidden" id="music-file_" name="music-file_" >
                <input type="file" id="file-upload" accept="audio/*" >
                <span id="music-file"></div>
            </div>
            <div class="d-flex justify-content-end gap-2 py-3 mt-2">
                <button class="btn-cancel" style="width: 100px; height: 40px" onclick="location.href='/music'">취소</button>
                <button class="btn-submit" style="width: 100px; height: 40px" onclick="updateMusic()">수정</button>
            </div>
        </div>


        </div>

        <%@include file="/WEB-INF/views/A0.Common/footer.jsp" %>
    </div>

    <%@include file="/WEB-INF/views/A0.Common/navMobile.jsp" %>
    <%@include file="/WEB-INF/views/A0.Common/commonJs.jsp" %>
    <script src="/js/A2.Menu/music/music.js"></script>
    <script>
        const params = new URLSearchParams(location.search);
        const id = params.get('id');
        $(document).ready(function() {
            getMusicToEdit(id)
        })
    </script>
</body>
</html>
