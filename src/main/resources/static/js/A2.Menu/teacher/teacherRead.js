const params = new URLSearchParams(location.search);
const teacher_pk = params.get('id');

function getTeacherInfo(id, user_pk) {
    ajaxGet('/api/getTeacher', {id : id}, function (data) {
        if (data.returnCode === "200") {
            const teacher = data.contents;

            $('#teacher-name').text(teacher.NAME ?? "이름 없음")
            $('#teacher-id').text(teacher.USER_ID ?? "이름 없음")
            $('#teacher-intro').text(teacher.SELF_INTRO ?? "자기소개 없음")

            if (user_pk) checkMatch(user_pk);

            if (isNotEmpty(teacher.AWS_FILE_NAME)) {
                $(`#profile-img`).replaceWith(`
                        <img src="https://clholdingsbucket.s3.ap-northeast-2.amazonaws.com/${teacher.AWS_FILE_NAME}"  alt="teacher profile img"
                             style="border-radius: 10px; object-fit: cover" width="280px" height="200px"/>`)
            }

            $('#reg-date').text(teacher.APPEND_DATE ? "등록일 " + formatDate(teacher.APPEND_DATE,'yyyy-MM-DD HH:mm') : '등록일: -');
        }
    });
}

function matchTeacherRequest(user_pk) {

    if (teacher_pk) {
        ajaxPost('api/matchTeacher', {TEACHER_PK: teacher_pk, USER_PK: user_pk}, function (data) {
            if (data.returnCode === "200") {
                $("#match-btn").text("요청 완료").attr("disabled", true);
            }
        });
    } else alert("Error: No teacher ID number");
}

function checkMatch(user_pk) {
    ajaxGet('/api/getTeacherMatch', {teacher_pk : teacher_pk}, function (data) {
        if (data.returnCode === "200") {
            if (data.contents.includes(user_pk.toString())) {
                $("#match-btn").text("요청 완료").attr("disabled", true);
            }
        }
    });
}