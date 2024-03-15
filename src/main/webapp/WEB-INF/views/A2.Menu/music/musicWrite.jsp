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

    <div class="d-flex justify-content-center align-items-center page-banner legal-board-bg">
        <h1>음악</h1>
    </div>

    <div class="container py-5" style="font-size: 18px">
        <div>
            <label for="music-title">음악 제목</label>
            <input type="text" id="music-title" name="music-title" placeholder="제목을 입력해 주세요" maxlength="255">
        </div>
        <div>
            <label for="music-name">가수</label>
            <input type="text" id="music-name" name="music-name" placeholder="제목을 입력해 주세요" maxlength="255">
        </div>
        <div>
            <label for="music-play">자동재생여부</label><br>
			<select id="music-play" name="music-play" style="width: 128px;">
                  <option value="">선택</option>
                  <option value="autoplay">자동재생</option>
            </select>
        </div>
        <div>
            <label for="file-upload" style="width: 170px">음악 첨부</label>
            <input type="file" id="file-upload" accept="audio/*" >
            <!-- div class="d-flex flex-column">
                <div class="d-flex flex-row" style="gap: 20px; margin-top: 20px; cursor: pointer">
                    <div class="d-flex align-items-center justify-content-center" style="width: 105px; height: 158px; flex-shrink: 0; border: 1px dashed" onclick="onClickFileUpload()">
                        <div style="width: 0; height: 0; overflow: hidden">
                            <input type="file" id="file-upload" accept="audio/*" onchange="onFileUpload()">
                        </div>
                        <div class="d-flex align-items-center justify-content-center add-img-icon">
                            <span style="width: 30px">+</span>
                        </div>
                    </div>
                    <ul id="file-list" class="d-flex" style="height: 158px; gap: 20px; padding-left: 0">
                    </ul>
                </div>
            </div-->
        </div>        
        <div class="d-flex justify-content-end gap-2 py-3 mt-2">
            <button class="btn-cancel" style="width: 100px; height: 40px" onclick="location.href='/music'">취소</button>
            <button class="btn-submit" style="width: 100px; height: 40px" onclick="saveMusic()">등록</button>
        </div>
    </div>


    <%@include file="/WEB-INF/views/A0.Common/footer.jsp" %>
</div>

<%@include file="/WEB-INF/views/A0.Common/navMobile.jsp" %>
<%@include file="/WEB-INF/views/A0.Common/commonJs.jsp" %>
<script src="/js/A2.Menu/music/music.js"></script>

<script>
    function onClickFileUpload() {
        $('label[for="file-upload"]').trigger('click');
    }
</script>

</body>
</html>
