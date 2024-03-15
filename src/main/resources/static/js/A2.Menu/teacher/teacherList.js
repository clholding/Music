function getTeacherList() {
    const params = {keyword: null, page: 0};

    ajaxGet('/api/getTeacherList', params, function (data) {
        if (data.returnCode === "200") {
            const teacherData = data.contents;
            $('#teachers').children().empty();
            teacherData.map((teacher, idx) => {
                $('#teachers').append(`
                    <div id="teacher-${idx}" class="d-flex flex-column lesson-item gap-2" onClick="location.href='/teacherRead?id=${teacher.TEACHER_PK}'">
                        <div style="background: #6E6A6B"> </div>
                        <p class="lecturer">${isNotEmpty(teacher.NAME) ? teacher.NAME : '-'}</p>
                        <p class="description fw-bold">${isNotEmpty(teacher.SELF_INTRO) ? teacher.SELF_INTRO : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit'}</p>
                        <p class="rating"><span><img src="/images/star-icon.svg" alt="star" height="16px"/> 5.0</span> | 20개의 평가</p>
                    </div>
                `);

                if (isNotEmpty(teacher.AWS_FILE_NAME)) {
                    $(`#teacher-${idx} > div`).replaceWith(`
                        <img src="https://clholdingsbucket.s3.ap-northeast-2.amazonaws.com/${teacher.AWS_FILE_NAME}"  alt="teacher profile img"
                             style="border-radius: 10px; object-fit: cover" width="280px" height="200px"/>`)
                }
            })
        } else {
            alert('실패하였습니다');
        }
    });
}

$(document).ready(function () {
    getTeacherList();
});